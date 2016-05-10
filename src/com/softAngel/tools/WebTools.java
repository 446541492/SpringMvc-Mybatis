package com.softAngel.tools;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

/**
 * 
 * @author wangl
 *
 */
public class WebTools {
	
	/**
	 * 获取随机数
	 * @return int
	 */
	public static int getRandom() {
		return (int) (Math.random() * 98) + 1;
	}
	
	/**
	 * 随机指定位数字
	 * @return
	 */
	public static String getRandomString(int bit) {
		Random random = new Random();
		String str = "";
		for (int i = 0; i < bit; i++) {
			str = str + random.nextInt(10);
		}
		return str;
	}
	
	/**
	 * 睡眠时间
	 * @param i int 秒为单位
	 */
	public static void sleep(int i){
		try {
			TimeUnit.SECONDS.sleep(i);
		} catch (InterruptedException e) {
		}
	}

	

	/**
	 * 获取工程的WebRoot路径
	 * 
	 * @param request
	 * @return String 例如：F:\project\WebRoot
	 
	public static String getWebRoot(HttpServletRequest request) {
		return request.getSession().getServletContext().getRealPath("");
	}*/
	
	/**
	 * 获取工程的WebRoot路径
	 * 
	 * @param request
	 * @return String 例如：F:\project\WebRoot
	 */
	public static String getWebRoot() {
		String root = System.getProperty("web.root");
		if(root.endsWith("\\")) {
			root = root.substring(0,root.length()-1);
		}
		return root; 
	}
	

	
	/**
	 * 获取classes目录路径
	 * 如:F:/email3/WebRoot/WEB-INF/classes/
	 * @return
	 */
	public static String getClassPath() {
		String classPath = WebTools.class.getResource("/").getPath().substring(1);
		if(classPath.startsWith("/")) {
			classPath = classPath.substring(1);
		}
		return classPath;
	}
	
	/**
	 * 获取classes目录下相对路径的文件流
	 * 如:/config/email-config.xml
	 * @return
	 */
	public static InputStream getClassPathFile(String relativePath) {
		InputStream in = WebTools.class.getClass().getResourceAsStream(relativePath);
		return in;
	}
	

	
	
	/**
	 * 获取uuid
	 * @return
	 */
	public static String getUUID(){
		return UUID.randomUUID().toString().replace("-","");
	}
	
	/**
	 * 获取工程的WebRoot路径
	 * 
	 * @param request
	 * @return String 例如：D:\soft_path\Tomcat6.0.29\webapps\microblog\
	 */
	public static String getRootPath(HttpServletRequest request) {
		return request.getSession().getServletContext().getRealPath("/");
	}
	
	
	/**
	 * MD5加密
	 * @param s
	 * @return
	 */
	public final static String MD5(String s) {
        char hexDigits[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};       
        try {
            byte[] btInput = s.getBytes();
            // 获得MD5摘要算法的 MessageDigest 对象
            MessageDigest mdInst = MessageDigest.getInstance("MD5");
            // 使用指定的字节更新摘要
            mdInst.update(btInput);
            // 获得密文
            byte[] md = mdInst.digest();
            // 把密文转换成十六进制的字符串形式
            int j = md.length;
            char str[] = new char[j * 2];
            int k = 0;
            for (int i = 0; i < j; i++) {
                byte byte0 = md[i];
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
	}

	
	/**
	 * 获取请求的url完整地址
	 * @param request
	 * @return
	 */
	public static String getRequestURL(HttpServletRequest request) {
		String queryString = request.getQueryString();
		queryString = queryString == null ? "":queryString.trim();
		try {
			queryString = URLEncoder.encode(queryString,"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		queryString = "".equals(queryString)?"":"?"+queryString;
		return request.getRequestURL() + queryString;
	}
	
	public static String toUTF8(String str) {
		if(null == str || "".equals(str)) {
			return "";
		}
		try {
			str = URLEncoder.encode(str,"utf-8");
			return str;
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "";
	}
	

}
