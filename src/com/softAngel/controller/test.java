package com.softAngel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softAngel.base.BaseController;
import com.softAngel.beans.Test;
import com.softAngel.service.TestService;
import com.softAngel.tools.Pager;

@Controller
public class test extends BaseController{
//	@Autowired
//	private DemoService demoService;
//	@Autowired
//	private MailSender mailSender;
//	@Autowired
//	private MessageSender messageSender;
	@Autowired
	private TestService aaaService;
	/**
	 * 测试SPRING
	 * @return 
	 */
    @RequestMapping(value = "/user/test1", method = RequestMethod.GET)
    public String testSpring(HttpServletRequest req)   
    {  
		  Test a = new Test();
		  a.setName("王磊1");
		  a.setTime("1990-01-22 21:33:11");
    	 int n =  aaaService.update(a);
    	 System.out.print(n);
    	 
    	 int count = aaaService.count();
    	 Pager pg = new Pager(1,10);
    	 pg.setTotalSize(count);
    	 Map<String,Object> param = new HashMap<String,Object>();
    	 param.put("startNum", pg.getBegin());
    	 param.put("pageSize", pg.getPageSize());
    	 List<Test> list = aaaService.select(param);
    	 req.setAttribute("list", list);
    	 req.setAttribute("pg", pg);
//    	  Aaa hello = aaaService.get(a.getId()); // 执行远程方法  
//    	  req.setAttribute("id", hello.getId());
//    	  req.setAttribute("name", hello.getName());
//    	  req.setAttribute("time", hello.getTime());
    	//发邮件
//    	  MailBody m = new MailBody();
//	        m.setToEmail("wangl@36.cn");
//			m.setContent("test mail");
//			m.setSubject("91120.com");
//			m.setSource(MailBody.Site.pjob);
//			m.setFrom("就医网");
//			try {
//				mailSender.sendEmail(m);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			//发短信
//			messageSender.sendMsg("test", "", "18673878991", "您好，我们(解放军第四五八医院结直肠肛门外科)已经收到您通过doctorjob.com.cn(中国医疗人才网)发来的应聘资料，感谢应聘本公司职位。", "");
    	  return "test";  
    }  
//    public static void main(String[] args){
//	        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(new String[] {"config/applicationContext.xml"});  
//	        context.start();  
////	        DemoService demoService = (DemoService)context.getBean("demoService"); // 获取远程服务代理  
////	        User hello = demoService.sayHello("12133"); // 执行远程方法  
////	        System.out.println(hello.getName());  
////	        
//	        MailSender mailSender = (MailSender)context.getBean("mailSender"); // 获取远程服务代理  
//	        MailBody m = new MailBody();
//	        m.setToEmail("wangl@36.cn");
//			m.setContent("test mail");
//			m.setSubject("91120.com");
//			m.setSource(MailBody.Site.pjob);
//			m.setFrom("就医网");
//			try {
//				mailSender.sendEmail(m);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//	    }
}
