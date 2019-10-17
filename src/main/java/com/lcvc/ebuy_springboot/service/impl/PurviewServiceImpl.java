package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.PurviewDao;
import com.lcvc.ebuy_springboot.dao.RolePurviewDao;
import com.lcvc.ebuy_springboot.model.Purview;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.PurviewQuery;
import com.lcvc.ebuy_springboot.service.PurviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class PurviewServiceImpl implements PurviewService {

    @Autowired
    private PurviewDao purviewDao;
    @Autowired
    private RolePurviewDao rolePurviewDao;
    @Override
    public PageObject searchPurviews(Integer page, Integer limit, PurviewQuery purviewQuery) {
        PageObject pageObject = new PageObject(limit,page,purviewDao.querySize(purviewQuery));
        pageObject.setList(purviewDao.query(pageObject.getOffset(),pageObject.getLimit(),purviewQuery));
        for(Purview purview:(List<Purview>)pageObject.getList()){//遍历对象
            purview.setRoleNumber(rolePurviewDao.getRolePurviewNumberByPurviewId(purview.getId()));
        }
        return pageObject;
    }

    @Override
    public void addPurview(Purview purview) {
        //前面必须经过spring验证框架的验证
        if(purview.getEnabled()==null){
            throw new MyWebException("保存失败：必须确定权限是否启用");
        }
        purviewDao.save(purview);
    }

    @Override
    public void deletePurviews(Integer[] ids) {
        purviewDao.deletes(ids);
    }

    @Override
    public Purview getPurview(Integer id) {
        Purview purview=null;
        if(id!=null){
            purview=purviewDao.get(id);
        }
        return purview;
    }

    @Override
    public void updatePurview(Purview purview) throws MyWebException {
        if(purview.getId()==null){
            throw new MyWebException("编辑失败：id不能为空");
        }
        purviewDao.update(purview);
    }
}
