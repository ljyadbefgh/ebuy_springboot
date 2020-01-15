package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.AdminMenuDao;
import com.lcvc.ebuy_springboot.dao.MenuDao;
import com.lcvc.ebuy_springboot.model.Menu;
import com.lcvc.ebuy_springboot.model.exception.MyIgnorableException;
import com.lcvc.ebuy_springboot.service.AdminMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class AdminMenuServiceImpl implements AdminMenuService {
    @Autowired
    private AdminMenuDao adminMenuDao;
    @Autowired
    private MenuDao menuDao;

    /**
     * 将用户拥有的菜单在树形菜单上进行标记
     * 递归
     * 说明：只对拥有的当前节点进行标记，不考虑父目录和子目录
     * @param menus 树形菜单
     * @param menuIdList 用户拥有的菜单id
     */
    private void setTreeMenuSelected(List<Menu> menus,List<Integer> menuIdList){
        for(Menu menu:menus){
            if(menuIdList.contains(menu.getId())){//如果该菜单是拥有的菜单
                menu.setSelected(true);
                menuIdList.remove(menu.getId());//移除该Id对象
                if(menuIdList.size()==0){//如果数量已经完成
                    throw new MyIgnorableException("终止递归函数");
                }
            }
            if(menu.getChildren().size()>0){
                setTreeMenuSelected(menu.getChildren(),menuIdList);
            }
        }
    }

    /**
     * 将用户拥有的菜单在树形菜单上进行级联标记
     * 递归
     * 说明：如果子节点已经勾选，则所有父节点都要勾选
     * 算法：递归，从最低层的节点开始计算
     * @param menus 树形菜单
     * @param level 表示当前层级
     */
   /* private boolean setTreeMenuSelected(List<Menu> menus,int level){
        boolean result=false;
        for(Menu menu:menus){//遍历菜单
            if(menu.getChildren().size()>0){//只要有子节点就一直往下走，直到最底级节点
                if(setTreeMenuSelected(menu.getChildren(),++level)){//一直递归，直到最低级
                    result=true;//最后返回true，从而实现父节点都跟着设置为true
                    menu.setSelected(true);//设置父节点为true
                }
            }else{//如果没有子菜单（即只有到了最底层目录，才进行判断）
                if(level>1){//最顶层目录进行判断
                    if(menu.getSelected()!=null&&menu.getSelected()==true){//如果该节点已经勾选
                        result=true;//设置为true返回，即返回该节点的true给父节点
                        break;//终止循环
                    }
                }
            }
        }
        return result;
    }*/

    /**
     * 将用户拥有的菜单在树形菜单上进行级联标记
     * 递归
     * 说明：如果子节点已经勾选，则所有父节点都要勾选
     * 算法：递归，从最低层的节点开始计算
     * @param menus 树形菜单
     */
   /* private boolean setTreeMenu(List<Menu> menus){
        boolean result=false;
        for(Menu menu:menus){//遍历菜单
            if(menu.getSelected()==null){
                menus.remove(menu);
                continue;
            }else{
                if(menu.getChildren().size()>0) {
                    setTreeMenu(menu.getChildren());
                }
            }
        }
        return result;
    }*/

    /**
     * 1.方法说明（递归）：根据用户拥有的菜单，对该网站的树形菜单进行处理，最后得到用户拥有的树形菜单完整结构
     * 2.方法设计：
     * （1）如果子菜单是用户拥有的菜单，则其父路径上的所有节点都属于用户的菜单（不是拥有父路径权限，只是把父路径都完整映射给控制层）
     * （2）如果某菜单是用户拥有的菜单，不代表其拥有的子菜单都是用户的菜单（即拥有菜单，不代表拥有子菜单的权限，具体由子菜单和用户关系决定）
     * 3.实现/设计思路：
     *（1）首先递归到最底层的菜单进行判断
     * 遍历某最底层的菜单集合
     * a.如果不是用户拥有的菜单，则将其移除，直到该层的非用户菜单都移除为止
     * b.如果是用户拥有的菜单，则保留，并且将状态改为true，表示该层有菜单是用户的菜单，再反向递归上去时判断父节点是否保留。
     * （2）然后逐层往父菜单走
     * a.如果某节点的底层拥有子菜单，则该节点予以保留；
     * b.如果某节点是用户的直接子菜单，则该节点予以保留
     * c.如果某节点不满足上述a和b的条件，则删除该节点
     * @param menus 树形菜单，本方法会对该属性进行处理，保证最后该集合是用户拥有的树形菜单完整结构
     * @param menuIdList 用户拥有的菜单id
     */
    private boolean setAdminTreeMenu(List<Menu> menus,List<Integer> menuIdList){
        boolean result=false;//表示该菜单是否是用户菜单，在递归中返会给父目录让其知道子菜单中是否有用户菜单（true）
        Iterator it=menus.iterator();
        while(it.hasNext()){//遍历循环删除必须用迭代器来完成
            Menu menu=(Menu)it.next();
            List<Menu> menusChildren=menu.getChildren();
            if(menusChildren.size()>0){//只要有子节点就一直往下走，直到最底级节点
                if(setAdminTreeMenu(menusChildren,menuIdList)) {//一直递归，直到最低级，然后再逐层返上来，让父菜单知道子菜单是否有用户菜单
                    result = true;//这里返回true，从而实现父节点都知道子菜单有用户菜单
                }else{//如果子菜单中（递归）没有用户菜单
                    if(menuIdList.contains(menu.getId())) {//如果该菜单是直接拥有的菜单
                        menuIdList.remove(menu.getId());//移除该Id对象
                        result=true;
                    } else{
                        it.remove();//移除该菜单
                    }
                }
            }else{//如果没有子菜单（即只有到了最底层目录，才进行判断）
                if(menuIdList.contains(menu.getId())) {//如果该菜单是直接拥有的菜单
                    menuIdList.remove(menu.getId());//移除该Id对象
                    result=true;
                }else{//如果该菜单不属于用户直接拥有的菜单
                    it.remove();//移除该菜单
                }
            }
        }
        return result;
    }

    @Override
    public List<Menu> getTreeMenusByAdminId(@Valid @NotNull Integer adminId) {
        List<Menu> menuList=menuDao.getTreeMenu();//获取数据库原生树形菜单
        Integer[] menuIdArray=adminMenuDao.getMenuIdsByAdminId(adminId);//获得管理员拥有的菜单id集合
        List<Integer> menuIdList = Arrays.asList(menuIdArray);//注意这样转换的集合不是真正的集合，无法使用add和remove方法
        menuIdList=new CopyOnWriteArrayList<Integer>(menuIdList);//数组直接转换的集合如果用add和remove会出现异常，因为
        try {
            this.setAdminTreeMenu(menuList,menuIdList);//将用户拥有的菜单在树形菜单上进行标记
        } catch (MyIgnorableException e) {
           //不进行任何处理，仅仅只是为了跳出递归
        }
        return menuList;
    }
}
