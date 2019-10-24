package com.lcvc.ebuy_springboot.util.serialize;

import java.io.*;

/**
 * 序列化和反序列化工具
 * 20191024
 */
public class SerializeUtil {
    public static byte[] serialize(Object obj) {
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(baos);
            oos.writeObject(obj);
            byte[] bs = baos.toByteArray();
            baos.close();
            oos.close();
            return bs;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static Object deserialize(byte[] bits) {
        try {
            ByteArrayInputStream bais = new ByteArrayInputStream(bits);
            ObjectInputStream ois = new ObjectInputStream(bais);
            Object obj = ois.readObject();

            bais.close();
            ois.close();
            return obj;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
