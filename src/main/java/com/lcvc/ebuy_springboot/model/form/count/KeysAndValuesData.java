package com.lcvc.ebuy_springboot.model.form.count;

import java.math.BigDecimal;
import java.util.List;

/**
 * 用于返回给前端echarts柱状图
 */
public class KeysAndValuesData {
    private List<String> keys;//用于返回给图表作为名称
    private List<BigDecimal> values;//作为值

    public List<String> getKeys() {
        return keys;
    }

    public void setKeys(List<String> keys) {
        this.keys = keys;
    }

    public List<BigDecimal> getValues() {
        return values;
    }

    public void setValues(List<BigDecimal> values) {
        this.values = values;
    }
}
