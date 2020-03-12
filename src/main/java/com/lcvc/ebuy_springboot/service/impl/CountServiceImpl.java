package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.CountDao;
import com.lcvc.ebuy_springboot.dao.ProductTypeDao;
import com.lcvc.ebuy_springboot.model.form.count.*;
import com.lcvc.ebuy_springboot.service.CountService;
import com.lcvc.ebuy_springboot.util.date.MyDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.*;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class CountServiceImpl implements CountService {
    @Autowired
    private CountDao countDao;
    @Autowired
    private ProductTypeDao productTypeDao;

    @Override
    public ProductNameAndSalesVolumeData getProductNameAndSalesVolumeData(Integer limit) {
        ProductNameAndSalesVolumeData productNameAndSalesVolumeData=new ProductNameAndSalesVolumeData();
        List<Map<String, Object>> list=countDao.getMaxSalesVolumeOfProduct(limit);//获取销量最大的产品名称和对应的销售量
        List<String> productNames=new ArrayList<String>();
        List<Integer> productSalesVolumes=new ArrayList<Integer>();
        for(Map<String, Object> map:list){
            productNames.add((String)map.get("productName"));
            productSalesVolumes.add(((BigDecimal)map.get("productSalesVolume")).intValue());// 这里用BigDecimal转换，因为在实际操作中，代码认为是bigdeciml类型，不能直接强制转换为Integer
        }
        productNameAndSalesVolumeData.setProductNames(productNames);
        productNameAndSalesVolumeData.setProductSalesVolumes(productSalesVolumes);
        return productNameAndSalesVolumeData;
    }

    @Override
    public ProductNameAndSaleData getProductNameAndSaleData(Integer limit) {
        ProductNameAndSaleData productNameAndSaleData=new ProductNameAndSaleData();
        List<Map<String, Object>> list=countDao.getMaxSaleOfProduct(limit);//获取销售额最大的产品名称和对应的销售量
        List<String> productNames=new ArrayList<String>();
        List<BigDecimal> productSales=new ArrayList<BigDecimal>();
        for(Map<String, Object> map:list){
            productNames.add((String)map.get("productName"));
            productSales.add(((BigDecimal)map.get("productSale")));// 这里用BigDecimal转换，因为在实际操作中，代码认为是bigdeciml类型，不能直接强制转换为Integer
        }
        productNameAndSaleData.setProductNames(productNames);
        productNameAndSaleData.setProductSales(productSales);
        return productNameAndSaleData;
    }


    @Override
    public List<NameAndValueMap> getMaxSaleOfProductType(Integer limit) {
        List<NameAndValueMap> list=new ArrayList<NameAndValueMap>();
        List<Map<String, Object>> dataList=countDao.getMaxSaleOfProductType(limit);//获取销售额最大的产品名称和对应的销售额
        NameAndValueMap productTypeNameAndSaleData=null;
        for(Map<String, Object> map:dataList){
            productTypeNameAndSaleData=new NameAndValueMap();
            productTypeNameAndSaleData.setName((String)map.get("productTypeName"));
            productTypeNameAndSaleData.setValue((BigDecimal)map.get("productTypeSale"));
            list.add(productTypeNameAndSaleData);
        }
        return list;
    }

    @Override
    public List<NameAndValueMap> getMaxSaleVolumeOfProductType(@NotNull Integer limit) {
        List<NameAndValueMap> list = new ArrayList<NameAndValueMap>();
        List<Map<String, Object>> dataList = countDao.getMaxSalesVolumeOfProductType(limit);//获取销量最大的产品名称和对应的销售量
        NameAndValueMap productTypeNameAndSaleVolumeData = null;
        for (Map<String, Object> map : dataList) {
            productTypeNameAndSaleVolumeData = new NameAndValueMap();
            productTypeNameAndSaleVolumeData.setName((String) map.get("productTypeName"));
            productTypeNameAndSaleVolumeData.setValue((BigDecimal) map.get("productTypeSaleVolume"));
            list.add(productTypeNameAndSaleVolumeData);
        }
        return list;
    }

    @Override
    public ProductTypeSalesVolumeLineArrayChart getSalesVolumeOfProductTypeInRecentlyEveryDay(Integer[] productTypeIds,Integer dayNumber){
        ProductTypeSalesVolumeLineArrayChart lineArrayChart=new ProductTypeSalesVolumeLineArrayChart();//最后要返回的对象
        lineArrayChart.setXaxisArray(new ArrayList<String>());//初始化：X轴的集合
        lineArrayChart.setLineArrayChartOfSeriesArray(new ArrayList<ProductTypeSalesVolumeLineArrayChartOfSeries>());//初始化：每条记录走势集合
        if(productTypeIds!=null){//如果不为NLL
            productTypeIds=(Integer[])productTypeDao.getIdsByIds(productTypeIds);//验证，并重新获得存在的栏目id
        }else{//如果为NULL，则查询所有栏目
            productTypeIds=(Integer[])productTypeDao.readAllIds();//获取所有栏目
        }
        ProductTypeSalesVolumeLineArrayChartOfSeries lineArryChartOfSeries=null;//定义一条记录的走势
        for(Integer productId:productTypeIds){
            lineArryChartOfSeries=new ProductTypeSalesVolumeLineArrayChartOfSeries();//记录每条数据的走势
            lineArryChartOfSeries.setId(productId);//为每条记录设置产品栏目ID值
            lineArryChartOfSeries.setSeriesArray(new ArrayList<Integer>());//创建好值域的集合
            lineArrayChart.getLineArrayChartOfSeriesArray().add(lineArryChartOfSeries);//将本条数据的走势记录放进集合

        }
        Date now=new Date();//获取当前时间
        List<Date> dayList = new ArrayList<Date>();//获取要查询的日期，用于记录当前及之前几天的天数
        while(dayNumber>=1){//最开始的日期算起，按时间升序
            Date currentDate=MyDateUtil.getDateBefore(now,dayNumber-1);//获取dayNumber天前日期
            SimpleDateFormat format= new SimpleDateFormat("MM-dd");
            lineArrayChart.getXaxisArray().add(format.format(currentDate));//将日期记录到X轴
            List<Map<String, Object>> currentDateList=countDao.getMaxSalesVolumeOfProductTypeByProductIdInSomeDay(productTypeIds,currentDate,1);//获取当天的产品栏目及对应的销售量集合
            for(Map<String, Object> map:currentDateList){//遍历当天的产品栏目及对应的销售量集合
                for(ProductTypeSalesVolumeLineArrayChartOfSeries lineArryChartOfSeriesOfEach:lineArrayChart.getLineArrayChartOfSeriesArray()){//遍历每条记录的走势
                    if(lineArryChartOfSeriesOfEach.getId().equals((Integer)map.get("productTypeId"))){//找到对应的键值
                        lineArryChartOfSeriesOfEach.setName((String)map.get("productTypeName"));//设置产品的名字，从逻辑上这里不对，但是数据库中查询的同一个id是不会有不同名字的
                        lineArryChartOfSeriesOfEach.getSeriesArray().add(((BigDecimal)map.get("productTypeSalesVolume")).intValue());//添加该调销售线的记录
                    }
                }
            }
            dayNumber--;
        }
        return lineArrayChart;
    }
}
