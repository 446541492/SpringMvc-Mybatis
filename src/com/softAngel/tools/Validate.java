package com.softAngel.tools;

import java.util.regex.Pattern;

/**
 * 
 * @author wangl
 * @version 1.0
 */
public class Validate {

	
	/**
	 * 是不是一个电话号码 支持0773-4092242，4092242 两种格式
	 * @param input  需要验证的字符串
	 * @return 是 true;否 false
	 */
	public static boolean isTelephoneNumber(String input){
		if(!isNull(input)){
			String regex = "([0-9]{4}[-]?)?[0-9]{7}";
			return Pattern.matches(regex, input);
		}
		else{
			return false;
		}
	}
	
	/**
	 * 是不是一个手机号码,只支持中国11位号码
	 * @param input 需要验证的字符串
	 * @return 是 true;否 false
	 */
	public static boolean isMobileNumber(String input){
		if(!isNull(input)){
			String regex = "[1][0-9]{10}";
			return Pattern.matches(regex, input);
		}
		else{
			return false;
		}
	}
	
	/**
	 * 是不是一个数字
	 * @param input 需要验证的字符串
	 * @return 是 true;否 false
	 */
	public static boolean isNumber(String input){
		if(!isNull(input)){
			String regex = "\\d+";
			return Pattern.matches(regex, input);
		}
		else{
			return false;
		}
	}
	
	/**
	 * 是不是Email
	 * @param input 需要验证的字符串
	 * @return 是 true; 否 false
	 */
	public static boolean isEmail(String input){
		if(!isNull(input)){
//			String regex = "[a-zA-Z][a-zA-Z0-9_\\.]*[a-zA-Z]@[a-zA-z0-9]+\\.[a-zA-z]+";
			String regex = "[a-zA-Z0-9_\\.\\-]+@[a-zA-z0-9_\\-]+(\\.[a-zA-z0-9_\\-]+)+";
			return Pattern.matches(regex, input);
		}
		else{
			return false;
		}
	}
	
	/**
	 * 是不是空字符串
	 * @param input 需要验证的字符串
	 * @return 是 true;否 false
	 */
	public static boolean isEmpty(String input){
		if(!isNull(input)){
			String regex = "[\\s]*";
			return Pattern.matches(regex, input);
		}
		else{
			return false;
		}
	}
	
	/**
	 * 是不是一个小数
	 * @param input  需要验证的字符串
	 * @return 是 true;否 false
	 */
	public static boolean isFloat(String input){
		if(!isNull(input)){
			String regex = "[0-9]+[\\.]?[0-9]+";
			return Pattern.matches(regex, input);
		}
		else{
			return false;
		}
	}
	
	/**
	 * 验证是否问空
	 * @param input 需要验证的字符串
	 * @return 是 true;否 false
	 */
	public static boolean isNull(String input){
		return null==input ? true:false;
	}
	
	/**
	 * 判断是否是一个合法的名字
	 * 允许中文、英文 空格
	 * @param input
	 * @return
	 */
	public static boolean isUserName(String input) {
		String p = "[\u4e00-\u9fa5|a-zA_Z ]+";
		return Pattern.matches(p, input);
	}
	
	public static void main(String[] args) {
		System.out.println(isEmail("w-y@wy-kj.net-.com"));
	}
}
