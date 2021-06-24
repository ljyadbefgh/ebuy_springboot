package com.lcvc.ebuy_springboot.junit.util.file;

import org.junit.Test;

public class MyFileOperatorTest {

    @Test
    public void testGetExtensionName(){
        System.out.println(MyFileOperator.getExtensionName("abc.txt"));
    }
}
