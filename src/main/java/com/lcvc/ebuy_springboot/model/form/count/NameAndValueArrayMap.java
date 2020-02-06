package com.lcvc.ebuy_springboot.model.form.count;

public class NameAndValueArrayMap {
    private String name;//产品栏目名称
    private Integer[] valueArray;//对应的销售量集合

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer[] getValueArray() {
        return valueArray;
    }

    public void setValueArray(Integer[] valueArray) {
        this.valueArray = valueArray;
    }
}
