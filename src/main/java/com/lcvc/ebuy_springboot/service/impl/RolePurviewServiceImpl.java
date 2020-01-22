package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.*;
import com.lcvc.ebuy_springboot.model.*;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.service.RolePurviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class RolePurviewServiceImpl implements RolePurviewService {
    /**
     * 权限动作配置
     */
    private final List<Permission> PERMISSIONS = new ArrayList<Permission>() {{//可以忽略的url的地址，即不要进行权限验证
        add(new Permission(1,"查看","GET"));
        add(new Permission(2,"新增","POST"));
        add(new Permission(3,"编辑","PATCH|PUT"));
        add(new Permission(4,"删除","DELETE"));
    }};

    @Autowired
    private RoleDao roleDao;
    @Autowired
    private AdminRoleDao adminRoleDao;
    @Autowired
    private AdminDao adminDao;
    @Autowired
    private PurviewDao purviewDao;
    @Autowired
    private RolePurviewDao rolePurviewDao;

    /**
     *根据权限操作类的id集合，获取相应权限操作类的方法集合
     * @param permissionIds 权限操作类id集合的字符串形式
     * @return 返回对应的，如GET，POST，PATCH，PUT，DELETE的集合
     */
    private List<String> getPermissionMethods(String permissionIds) {
        List<String> methodList=new ArrayList<String>();//定义方法集合
        for(int i=0;i<permissionIds.length();i++){//遍历主键字符串
            int id = Integer.parseInt(String.valueOf(permissionIds.charAt(i)));//注意：字符串中的单个数字转为数字，和char转为数字的方法不同
            int index=PERMISSIONS.indexOf(new Permission(id));//获取相应权限在集合中的相应位置
            if(index!=-1){//如果该id有效
                Permission permission=PERMISSIONS.get(index);
                String methods=permission.getMethods();//获取允许的方法集合
                String[] methodArray=methods.split("\\|");//如果该操作权限动作有多个方法（例如PATCH|PUT），则进行切割
                for(String method:methodArray){
                    methodList.add(method);
                }
            }
        }
        return methodList;
       /* String[] methodArray=new String[methodList.size()];//定义一个数组，用于接收方法集合
        return methodList.toArray(methodArray);*/
    }


    /**
     * 根据权限操作类的id集合，获取相应权限操作类的集合
     * @param permissionIds 权限操作类id集合的字符串形式
     * @return 权限操作类的集合
     */
    private List<Permission> getPermissions(String permissionIds) {
        if(permissionIds==null){
            permissionIds="";
        }
        List<Permission> permissions=new ArrayList<Permission>();//定义方法对象集合
        for(int i=0;i<permissionIds.length();i++){//遍历主键字符串
            int id = Integer.parseInt(String.valueOf(permissionIds.charAt(i)));//注意：字符串中的单个数字转为数字，和char转为数字的方法不同
            int index=PERMISSIONS.indexOf(new Permission(id));//获取相应权限在集合中的相应位置
            if(index!=-1){//如果该id有效
                Permission permission=PERMISSIONS.get(index);
                permissions.add(permission);
            }
        }
        return permissions;
       /* String[] methodArray=new String[methodList.size()];//定义一个数组，用于接收方法集合
        return methodList.toArray(methodArray);*/
    }

    /**
     * 重要方法：根据权限操作类的id集合，获取所有权限操作类的集合
     * 说明：
     * 1.如果要获取所有权限类，并且有是否选中字段，则必须通过该方法调用，避免污染本类的数据源PERMISSIONS
     * 2.如果没有关系，则将selected字段设置为false；如果有关系，则设置为true
     * @param permissionIds 角色和权限的集合
     * @return 返回所有操作权限类，并为每个权限操作类的赋值
     */
    private List<Permission> getAllPermissions(String permissionIds) {
        if(permissionIds==null){
            permissionIds="";
        }
        List<Permission> permissionList=new ArrayList<Permission>();//定义方法对象集合
        for(Permission permissionData:PERMISSIONS){//遍历系统所有操作权限
            //注意（已经出错过一次）：不能直接引用添加到集合中，因为共用内存区间，会直接影响到数据源
            //重新创建一个对象,以免影响到数据源PERMISSIONS
            Permission permission=new Permission(permissionData.getId(),permissionData.getName(),permissionData.getMethods());
            String permissionId=String.valueOf(permission.getId());
            if(permissionIds.contains(permissionId)){//如果包含该操作权限
                permission.setSelected(true);
            }else{
                permission.setSelected(false);
            }
            permissionList.add(permission);
        }
        return permissionList;
    }

    @Override
    public List<RolePurview> getAllRolePurviewsByRoleId(Integer roleId) {
        List<RolePurview> rolePurviews = new ArrayList<RolePurview>();//定义所有权限信息
        Role role = roleDao.get(roleId);//获取指定角色信息
        if (role != null) {
            List<Purview> purviews = purviewDao.readAll(null);//获取所有权限信息
            List<RolePurview> rolePurviewsExistence = rolePurviewDao.getRolePurviewsByRoleId(roleId);//获取该角色拥有的权限关系集合
            RolePurview rolePurview = null;
            for (Purview purview : purviews) {
                rolePurview = new RolePurview();
                rolePurview.setRole(role);
                rolePurview.setPurview(purview);
                int index = rolePurviewsExistence.indexOf(rolePurview);//判断该关系是否已经存在
                if (index != -1) {//如果该对象存在
                    rolePurview = rolePurviewsExistence.get(index);//获取该对象在数据库的完整值
                }
                rolePurview.setPermissions(this.getAllPermissions(rolePurview.getPermissionIds()));//获取url访问的方法集合
                rolePurviews.add(rolePurview);
            }
        }
        return rolePurviews;
    }



    @Override
    public RolePurview addRolePurview(Integer roleId, Integer purviewId) {
        if(roleId==null||purviewId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        Role role=roleDao.get(roleId);
        if(role==null){
            throw new MyWebException("操作失败：相关角色不存在");
        }
        Purview purview=purviewDao.get(purviewId);
        if(purview==null){
            throw new MyWebException("操作失败：相关权限不存在");
        }

        if(rolePurviewDao.getRolePurviewNumberByRoleIdAndPurviewId(roleId,purviewId)>0){
            throw new MyWebException("操作失败：该角色已存在，不需要再赋予");
        }
        RolePurview rolePurview=new RolePurview();
        rolePurview.setPurview(purview);
        rolePurview.setRole(role);
        rolePurview.setPermissionIds(Constant.DEFAULTPERMISSIONIDS);//默认拥有的权限
        rolePurview.setCreateTime(Calendar.getInstance().getTime());
        rolePurviewDao.save(rolePurview);//保存新的关系进入数据库，并获取到Id
        rolePurview.setPermissions(this.getAllPermissions(rolePurview.getPermissionIds()));//获取所有操作方法，返回前端
        //rolePurview.setPermissions(this.getPermissions(rolePurview.getPermissionIds()));//获取当前权限拥有的操作方法
        return rolePurview;
    }

    @Override
    public void removeRolePurview(Integer roleId, Integer purviewId) {
        if(purviewId==null||roleId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        Integer id=(Integer)rolePurviewDao.getId(roleId,purviewId);//查找该关系的主键
        if(id!=null){//如果存在该关系
            rolePurviewDao.delete(id);
        }
    }

    @Override
    public void addAllRolePurviewForRole(Integer roleId){
        if(roleId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        Role role=roleDao.get(roleId);
        if(role!=null){
            List<RolePurview> rolePurviews=new ArrayList<RolePurview>();//用于后续保存该角色要添加到数据库的关系集合
            List<Purview> purviews=purviewDao.readAll(null);//获取所有权限信息
            RolePurview rolePurview=new RolePurview();
            for(Purview purview:purviews){
                rolePurview=new RolePurview();
                rolePurview.setRole(role);
                rolePurview.setPurview(purview);
                rolePurview.setPermissionIds(Constant.DEFAULTPERMISSIONIDS);
                rolePurview.setCreateTime(Calendar.getInstance().getTime());
                rolePurviews.add(rolePurview);
            }
            List<RolePurview> rolePurviewsExistence=rolePurviewDao.getRolePurviewsByRoleId(roleId);//获取该角色拥有的权限关系集合
            rolePurviews.removeAll(rolePurviewsExistence);//移除已经有的关系
            rolePurviewDao.saves(rolePurviews);//将没有的关系添加进数据库
        }
    }

    @Override
    public void removeAllRolePurviewForRole(Integer roleId) {
        if(roleId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        rolePurviewDao.deleteAllRolePurviewByPurviewId(roleId);
    }

    @Override
    public List<Role> getRolesByPurview(Integer purviewId) {
        List<Role> roles=new ArrayList<Role>();
        if(purviewId!=null){
            roles.addAll(rolePurviewDao.getRolesByPurviewId(purviewId));
        }
        return roles;
    }

    @Override
    public List<Role> getEnabledRolesByPurview(Integer purviewId) {
        List<Role> roles=new ArrayList<Role>();
        if(purviewId!=null){
            roles.addAll(rolePurviewDao.getEnabledRolesByPurviewId(purviewId));
        }
        return roles;
    }

    @Override
    public List<String> getRolePurviewPermissionMethods(Integer roleId, Integer purviewId) {
        if(roleId==null||purviewId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        RolePurview rolePurview=rolePurviewDao.getRolePurviewByRoleIdAndPurviewId(roleId,purviewId);//读取相应的关系
        List<String> methods=this.getPermissionMethods(rolePurview.getPermissionIds());//获取方法集合
        return methods;
    }

    @Override
    public void addRolePurviewPermission(Integer roleId, Integer purviewId, Integer permissionId) {
        if(roleId==null||purviewId==null||permissionId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        RolePurview rolePurview=rolePurviewDao.getRolePurviewByRoleIdAndPurviewId(roleId,purviewId);//获取对应的关系信息
        if(rolePurview==null){
            throw new MyWebException("操作失败：请先添加该关系，再赋予操作权限");
        }
        String permissionIds=rolePurview.getPermissionIds();//获取操作id集合
        if(!permissionIds.contains(String.valueOf(permissionId))){//如果该关系不存在则添加关系；如果关系已经存在则不作任何处理
            permissionIds+=permissionId;//将这个关系添加
            rolePurview.setPermissionIds(permissionIds);
            rolePurviewDao.update(rolePurview);//保存关系
        }
    }

    @Override
    public void removeRolePurviewPermission(Integer roleId, Integer purviewId, Integer permissionId) {
        if(roleId==null||purviewId==null||permissionId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        RolePurview rolePurview=rolePurviewDao.getRolePurviewByRoleIdAndPurviewId(roleId,purviewId);//获取对应的关系信息
        if(rolePurview==null){
            throw new MyWebException("操作失败：请先添加该关系，再赋予操作权限");
        }
        String permissionIds=rolePurview.getPermissionIds();//获取操作id集合
        String permissionIdString=String.valueOf(permissionId);
        if(permissionIds.contains(permissionIdString)){//如果该关系存在则删除该关系；如果关系不存在则不作任何处理
            permissionIds=permissionIds.replace(permissionIdString,"");//直接将该字符替换掉
            rolePurview.setPermissionIds(permissionIds);
            rolePurviewDao.update(rolePurview);//保存关系
        }
    }
}
