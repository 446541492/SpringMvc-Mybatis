package com.softAngel.tools;

import java.io.File;
import java.io.InputStream;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


 
public class XmlReader {

	
	 /**
	  * 读取xml相同节点的内容 
	  * @param xml
	  * @param node
	  * @return 返回相同节点的内容列表
	  */
	public static String[] readXmlToArray(String xml,String node){
		try{
			InputStream in = WebTools.getClassPathFile("/config/" + xml);
			Document xmlDoc = Jsoup.parse(in, "UTF-8", "http://www.soft-angel.com/");
			String results[] = null;
			Elements eles = xmlDoc.select(node);
			if(eles.size()>0){
				results=new String[eles.size()];
				int i =0;
				for (Element ele : eles) {  
					results[i++]=ele.text();
				}
				return  results;
			}
		}catch(Exception e){
			 e.printStackTrace();
		}
		return null;
	 }
	
	public static Elements readXmlElements(String xml,String node){
		Elements eles = null;
		try{
//			String proName="com-carjob-commons";
//			String proPath =  XmlReader.class.getResource("/").getPath();
//			if(proPath.startsWith("/")) {
//				proPath = proPath.substring(1);
//			}
//			proPath = proPath.substring(0, proPath.indexOf(proName)+proName.length());
//			System.out.println("XmlReader.readXmlElements() proPath = " + proPath);
			InputStream in = WebTools.getClassPathFile("/config/" + xml);
			Document xmlDoc = Jsoup.parse(in, "UTF-8", "http://www.soft-angel.com/");
			 
			 eles = xmlDoc.select(node);
		}catch(Exception e){
			 e.printStackTrace();
		}
		return eles;
	 }
	 
}
