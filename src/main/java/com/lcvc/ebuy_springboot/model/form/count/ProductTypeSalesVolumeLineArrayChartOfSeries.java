package com.lcvc.ebuy_springboot.model.form.count;


import java.util.List;

/**
 *  * 用于类似的折线堆叠图。
 *  * 说明：
 *  * 折线对贴图用于展示多条数据的走势。
 *  * 例如展示不同日期下，不同产品的销量走势
 * 本来是辅助LineArryChart的，表示一条数据的走势（即Y轴的值）
 */
public class ProductTypeSalesVolumeLineArrayChartOfSeries {
    private Integer id;//id，一般作为键值，辅助。
    private String name;//对应y轴的标签
    private List<Integer> seriesArray;//Y轴的值，表示一条分别对应多个X轴的值

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Integer> getSeriesArray() {
        return seriesArray;
    }

    public void setSeriesArray(List<Integer> seriesArray) {
        this.seriesArray = seriesArray;
    }
}
