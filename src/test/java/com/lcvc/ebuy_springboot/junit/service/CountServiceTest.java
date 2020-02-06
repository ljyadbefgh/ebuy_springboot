package com.lcvc.ebuy_springboot.junit.service;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.model.form.count.ProductTypeSalesVolumeLineArrayChart;
import com.lcvc.ebuy_springboot.model.form.count.ProductTypeSalesVolumeLineArrayChartOfSeries;
import com.lcvc.ebuy_springboot.service.CountService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class CountServiceTest extends EbuySpringbootApplicationTests {
    @Autowired
    private CountService countService;

   @Test
    public void testGetMaxSalesVolumeOfProductTypeRecentlyEveryDay(){
       ProductTypeSalesVolumeLineArrayChart chart=countService.getSalesVolumeOfProductTypeInRecentlyEveryDay(null,2);
       if(chart!=null){
           List<String> xaxisArray=chart.getXaxisArray();//获取X轴的记录纸
           for(String x:xaxisArray){
               System.out.println("x周的值："+x+"\t");
           }
           for(ProductTypeSalesVolumeLineArrayChartOfSeries lineArryChartOfSeries:chart.getLineArrayChartOfSeriesArray()){
               System.out.println(lineArryChartOfSeries.getName());
               for(Integer value:lineArryChartOfSeries.getSeriesArray()){
                   System.out.print(value+"\t");
               }
           }
       }
   }
}
