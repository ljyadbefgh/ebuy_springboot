package com.lcvc.ebuy_springboot.util.file;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import org.junit.Test;

import java.util.UUID;

public class MyFileUploadTest extends EbuySpringbootApplicationTests {
    private MyFileUpload myFileUpload=new MyFileUpload();

    @Test
    public void testGetExtString(){
        System.out.println(myFileUpload.getExtStringForLayui());
    }

    @Test
    public void test(){
        System.out.println(UUID.randomUUID());
    }

}
