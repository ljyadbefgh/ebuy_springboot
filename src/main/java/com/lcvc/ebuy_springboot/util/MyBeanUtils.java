package com.lcvc.ebuy_springboot.util;

import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.FatalBeanException;
import org.springframework.util.Assert;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Map;
import java.util.Set;

/**
 * @author: ljy
 * 说明：
 * 1、该类用于对象之间的同名属性（并且同类型）的拷贝，如果不同名或不同类型则不进行拷贝。
 * 注：包括关联对象属性也可以拷贝
 * 2、重要说明：该类继承与BeanUtils，BeanUtils.copyProperties()原本就能处理对象拷贝，但是该方法不支持java.util.Date类型的拷贝，只支持java.sql.Date，
 * 所以本类主要解决这个问题，其他属性的拷贝还是参照原工具类
 *
 *
 * 3.备注：
 * (1)dozer插件也可以解决对象拷贝问题，并且功能更强大，但是速度稍慢
 * (2)PropertyUtils和BeanUtils的功能基本一致，唯一的区别是：BeanUtils在对Bean赋值时会进行类型转化，
 * 而PropertyUtils不会对类型进行转化，如果类型不同则会抛出异常！，这可以解释PropertyUtils效率比其他两种要高的原因。
 */
public class MyBeanUtils extends BeanUtils {

    public static final Logger LOGGER =LoggerFactory.getLogger(MyBeanUtils.class);

    static {
        ConvertUtils.register(new DateConvert(), java.util.Date.class);
        ConvertUtils.register(new DateConvert(), java.sql.Date.class);
    }

    /**
     * 复制 map的值到对象中
     * @param updateProperties
     * @param bean
     * @param <T>
     */
    public static <T> void copyPropertiesInclude(Map<String, Object> updateProperties, T bean){
        Set<Map.Entry<String, Object>> revisabilityFiledSet = updateProperties.entrySet();
        for (Map.Entry<String, Object> entry : revisabilityFiledSet) {
            Object value = entry.getValue();
            if(value != null){
                try {
                    org.apache.commons.beanutils.BeanUtils.setProperty(bean, entry.getKey(), value);
                } catch (Exception e) {
                    LOGGER.info("MyBeanUtils copyPropertiesInclude Exception : "+e.getMessage());
                }
            }
        }
    }


    /**
     * 解决BeanUtils在处理拷贝对象 时，会将原对象的null值也一并拷贝过去的问题
     * 说明：
     * 1.添加为null判断，不为null时才进行复制
     * 2、特别注明：本方法仅为解决拷贝对象时的NULL值处理，如果不需要，可以注释掉，不影响前面的关于java.util.Date类的处理
     * @param source
     * @param target
     * @throws BeansException
     */
    public static void copyProperties(Object source, Object target) throws BeansException {
        Assert.notNull(source, "Source must not be null");
        Assert.notNull(target, "Target must not be null");
        Class<?> actualEditable = target.getClass();
        PropertyDescriptor[] targetPds = getPropertyDescriptors(actualEditable);
        for (PropertyDescriptor targetPd : targetPds) {
            if (targetPd.getWriteMethod() != null) {
                PropertyDescriptor sourcePd = getPropertyDescriptor(source.getClass(), targetPd.getName());
                if (sourcePd != null && sourcePd.getReadMethod() != null) {
                    try {
                        Method readMethod = sourcePd.getReadMethod();
                        if (!Modifier.isPublic(readMethod.getDeclaringClass().getModifiers())) {
                            readMethod.setAccessible(true);
                        }
                        Object value = readMethod.invoke(source);
                        // 这里判断以下value是否为空 当然这里也能进行一些特殊要求的处理 例如绑定时格式转换等等
                        if (value != null) {
                            Method writeMethod = targetPd.getWriteMethod();
                            if (!Modifier.isPublic(writeMethod.getDeclaringClass().getModifiers())) {
                                writeMethod.setAccessible(true);
                            }
                            writeMethod.invoke(target, value);
                        }
                    } catch (Throwable ex) {
                        throw new FatalBeanException("Could not copy properties from source to target", ex);
                    }
                }
            }
        }
    }

}


class DateConvert implements Converter {

    public static final Logger LOGGER = LoggerFactory.getLogger(DateConvert.class);

    @Override
    public Object convert(Class arg0, Object arg1) {
        String p = (String)arg1;
        if(p== null || p.trim().length()==0){
            return null;
        }
        try{
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            return df.parse(p.trim());
        }
        catch(Exception e){
            try {
                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                return df.parse(p.trim());
            } catch (ParseException ex) {
                LOGGER.info("MyBeanUtils DateConvert Exception : "+e.getMessage());
                return null;
            }
        }
    }
}
