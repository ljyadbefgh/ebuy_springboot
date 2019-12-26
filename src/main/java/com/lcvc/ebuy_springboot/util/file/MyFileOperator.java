package com.lcvc.ebuy_springboot.util.file;

import java.io.*;

public class MyFileOperator {



	/**
	 * 读取文件内容
	 * @param filePath
	 */
	public static String readFile(String filePath){
		String encoding = "UTF-8";
		File file = new File(filePath);
		Long filelength = file.length();
		byte[] fileContent = new byte[filelength.intValue()];
		try {
			FileInputStream in = new FileInputStream(file);
			in.read(fileContent);
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			return new String(fileContent, encoding);
		} catch (UnsupportedEncodingException e) {
			System.err.println("The OS does not support " + encoding);
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 读取文件内容
	 * 针对spring boot打包为jar后，读取自身文件设计
	 * ClassPathResource类
	 *
	 */
	public static String readFile(byte[] fileContent){
		String encoding = "UTF-8";
		try {
			return new String(fileContent, encoding);
		} catch (UnsupportedEncodingException e) {
			System.err.println("The OS does not support " + encoding);
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 按照路径创建一个目录
	 * @param dirPath 上传路径
	 */
	public static void createDir(String dirPath) {
		File file = new File(dirPath);
		// 如果该文件目录不存在，则创建一个新的目录
		if (!file.exists()) {
			file.mkdirs();
		}
	}

	/**
     * 创建一个新文件
	 * @param filePath 创建路径（包含新文件名）
	 * @return
     */
	public static File createFile(String filePath) {
		File file = new File(filePath);
		if (!file.exists()) {
			try {
				file.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return file;
	}

	/**
     * 得到一个文件输入流
	 * @param filePath
     * @return
     */
	public static FileInputStream getStream(String filePath) {
		FileInputStream fileInputStream = null;
		try {
			fileInputStream = new FileInputStream(filePath);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("文件没有找到！");
		}
		return fileInputStream;
	}

	/**
     * 得到一个文件输出流
	 * @param file
     * @return
     */
	public static FileOutputStream getOutStream(File file) {
		FileOutputStream fileOutputStream = null;
		try {
			fileOutputStream = new FileOutputStream(file);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fileOutputStream;
	}

	/**
     * 获取指定文件大小
	 * @param filePath
     * @return 0表示不存在，或是空文件
	 */
	public static Long getFileSize(String filePath) {
		long length=0;
		// 判断该文件是否是一个有效的文件
		File file = new File(filePath);
		if (file.isFile()) {
			length=file.length();
		}
		return length;
	}


	/**
     * 删除指定文件
	 * @param filePath
     * @return
     */
	public static boolean deleteFile(String filePath) {
		File file = new File(filePath);
		if (file.isFile() && file.exists()) {
			file.delete();
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 获取文件名的扩展名，并统一转化为小写格式
	 * @param fileName
	 * @return
	 */
	public static String getExtensionName(String fileName) {
		String name = new String("");
		String extention = new String();
		if (fileName.length() > 0 && fileName != null) {
			int i = fileName.lastIndexOf(".");
			if (i > -1 && i < fileName.length()) {
				name = fileName.substring(0, i); //文件名
				extention = fileName.substring(i + 1); //扩展名
			}
		}
		//转换为小写，防止一些后缀名为大写例如JPG，导致JAVA因为与jpg不一致认定后缀名不符合要求
		extention=extention.toLowerCase();
		return extention;
	}







	/*public static void main(String[] args) {
		FileUpload f = new FileUpload();
		// System.out.println(f.getFileSize("C:\\WINDOWS\\Web\\Wallpaper\\chibi.jpg"));
		// System.out.println(f.getFileSize("C:\\WINS\\Web\\Wallpaper\\chijpg"));
		// f.upLoad("e:/sstext/",
		// "C:\\WINDOWS\\Web\\Wallpaper\\1920CHINA_2011.jpg", "aaaa");
		f.upLoad("E:/sstext/", "C:\\WINDOWS\\Web\\Wallpaper\\chibi.jpg",
				"texst", 50, true);
	}*/
}
