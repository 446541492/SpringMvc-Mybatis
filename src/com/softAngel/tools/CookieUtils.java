package com.softAngel.tools;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.regex.Pattern;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author wangl cookie
 */
public class CookieUtils {

	public static String DOMAIN = "";
	public static final String USERID = "USERID";
	private static Blowfish blowfish = new Blowfish(Blowfish.INIT_KEY);
	private static final int MAX_AGE = Integer.MAX_VALUE;
	public static final String PATH = "/";

	protected CookieUtils() {

	}

	/**
	 * 
	 * @param request
	 * @return 如果未登录,返回null
	 */
	public static Integer getUserId(HttpServletRequest request) {
		String value = getCookie(request, USERID);
		if (isEmpty(value) || !isNumber(value)) {
			return null;
		}
		return Integer.parseInt(value);
	}

	public static void putCookie(HttpServletResponse response, String name,
			String value, int maxAge) {
		Cookie cookie = new Cookie(name, encode(value));
		cookie.setMaxAge(maxAge);
		cookie.setPath(PATH);
		cookie.setDomain(DOMAIN);
		response.addCookie(cookie);
	}

	public static void putCookie(HttpServletResponse response, String name,
			String value) {
		Cookie cookie = new Cookie(name, encode(value));
		cookie.setMaxAge(MAX_AGE);
		cookie.setPath(PATH);
		cookie.setDomain(DOMAIN);
		response.addCookie(cookie);
	}

	public static String getCookie(HttpServletRequest request, String name) {
		Cookie[] cookie_get = new Cookie[0];
		if ((cookie_get == null) || (cookie_get.length == 0)) {
			cookie_get = request.getCookies();
		}

		String returnStr = null;
		try {
			for (int i = 0; (cookie_get != null) && (i < cookie_get.length); i++) {
				cookie_get[i].setPath(PATH);
				cookie_get[i].setDomain(DOMAIN);
				if (cookie_get[i].getName().equals(name)) {
					cookie_get[i].setMaxAge(Integer.MAX_VALUE);

					returnStr = cookie_get[i].getValue();
					break;
				}
			}
			return decode(returnStr);
		} catch (Exception e) {
		}
		return decode(returnStr);
	}

	public static void removeCookie(HttpServletResponse response, String name) {
		Cookie cookie = new Cookie(name, null);
		cookie.setMaxAge(0);
		cookie.setPath(PATH);
		cookie.setDomain(DOMAIN);
		response.addCookie(cookie);
	}

	private static String decode(String value) {
		String result = "";
		if (!isEmpty(value))
			try {
				value = blowfish.decryptString(value);
				result = URLDecoder.decode(value, "utf-8");
			} catch (UnsupportedEncodingException localUnsupportedEncodingException) {
			}
		return result;
	}

	private static String encode(String value) {
		String result = "";
		if (!isEmpty(value))
			try {
				result = URLEncoder.encode(value, "utf-8");
				result = blowfish.encryptString(result);
			} catch (UnsupportedEncodingException localUnsupportedEncodingException) {
			}
		return result;
	}

	protected static boolean isEmpty(String value) {
		return (value == null) || (value.trim().equals(""));
	}

	protected static boolean isNumber(String input) {
		String regex = "\\d+";
		return Pattern.matches(regex, input);
	}

	public static void logout(HttpServletRequest request,
			HttpServletResponse response) {
		CookieUtils.removeCookie(response, CookieUtils.USERID);
	}

	public static boolean isLogin(HttpServletRequest request) {
		Integer userId = getUserId(request);
		if (userId == null || userId < 1) {
			return false;
		}
		return true;
	}
}