package com.lcvc.ebuy_springboot.model.form.count;

import java.util.List;

/**
 * 用于类似的折线堆叠图。
 * 说明：
 * 折线对贴图用于展示多条数据的走势。
 * 例如展示不同日期下，不同产品的销量走势
 * 这里返回所需的所有数据
 */
public class ProductTypeSalesVolumeLineArrayChart {
    private List<String>  xaxisArray;//x轴的值，例如日期
    private List<ProductTypeSalesVolumeLineArrayChartOfSeries> lineArrayChartOfSeriesArray;//记录不同记录在不同x轴下的值

    public List<String> getXaxisArray() {
        return xaxisArray;
    }

    public void setXaxisArray(List<String> xaxisArray) {
        this.xaxisArray = xaxisArray;
    }

    public List<ProductTypeSalesVolumeLineArrayChartOfSeries> getLineArrayChartOfSeriesArray() {
        return lineArrayChartOfSeriesArray;
    }

    public void setLineArrayChartOfSeriesArray(List<ProductTypeSalesVolumeLineArrayChartOfSeries> lineArrayChartOfSeriesArray) {
        this.lineArrayChartOfSeriesArray = lineArrayChartOfSeriesArray;
    }
}
