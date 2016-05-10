package com.softAngel.tools;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 *@author wangl
 */
public class FreemarkerUtils {

	private static final Configuration cfg = new Configuration();
	private static final String FTL_PATH = WebTools.getWebRoot() + "/WEB-INF/ftl";
	private static final String ENCODING = "UTF-8";

	/**
	 * 将模板内容输出到指定文件
	 * 
	 * @param data
	 * @param fltName
	 * @param outPath
	 */
	public static void out(Map<Object, Object> data, String fltName, String outPath) {
		Writer writer = null;

		try {
			cfg.setEncoding(Locale.CHINESE, ENCODING);
			cfg.setDirectoryForTemplateLoading(new File(FTL_PATH));
			Template temp = cfg.getTemplate(fltName);
			

			// Writer out = new OutputStreamWriter(System.out);
			// temp.process(data, out);
			// out.flush();

			writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(outPath)), ENCODING));
			temp.process(data, writer);
			writer.flush();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (null != writer) {
				try {
					writer.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	/**
	 * 根据模板内容获取字符串
	 * 
	 * @param data
	 * @param fltName
	 * @return
	 */
	public static String getString(Map<Object, Object> data, String fltName) {
		StringWriter stringWriter = null;
		try {
			cfg.setDirectoryForTemplateLoading(new File(FTL_PATH));
			Template temp = cfg.getTemplate(fltName);

			stringWriter = new StringWriter();
			temp.process(data, stringWriter);
			stringWriter.flush();
			System.out.println(stringWriter.toString());
			String html = stringWriter.toString();
			return html;
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		} finally {
			if (null != stringWriter) {
				try {
					stringWriter.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return "";
	}
}
