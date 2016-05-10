<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>

<!DOCTYPE html>
<html lang="zh-CN">
	<head>
	  <title>注册</title>
	  <%@ include file="/meta.jsp" %>
	  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
	</head>

	<body>
	  <div class="login-top">
	    <div class="login-topin">
	      <a href="javascript:;" class="tel">400-800-8000</a>
	      <a href="javascript:;" class="link">帮助中心</a>
	      <a href="javascript:;" class="link">新手指引</a>
	    </div>
	    <div class="clearfix"></div>
	  </div>
	  
	  <div class="login-logo">
	    <a href="index.html">众筹网</a>
	  </div>
	  
	  <div class="reg-div">
	    <h3>注册巅峰众筹网</h3>
	    <div class="reg-div-l">
	      <table>
	        <tr>
	          <td class="label">手机号码：&nbsp;</td>
	          <td class="input"><input type="text"/></td>
	        </tr>
	        <tr>
	          <td class="label">验证码：&nbsp;</td>
	          <td class="input" style="width: 550px;"><input type="text"/><button id="valicode">获取验证码</button></td>
	        </tr>
	       <tr>
	          <td class="label">密码：&nbsp;</td>
	          <td class="input"><input type="password"/></td>
	        </tr>
	        <tr>
	          <td>&nbsp;</td>
	          <td><input type="checkbox" id="remember"/><label for="remember">我已阅读并同意<a href="javascript:;" >《众筹网用户协议》</a></label></td>
	        </tr>
	        <tr>
	          <td>&nbsp;</td>
	          <td><input type="submit" value="立即登录" class="login-btn"/></td>
	        </tr>      
	      </table>
	    </div>
	    <div class="reg-div-r">
	      <img src="${path}/images/reg-ad.jpg"/>
	    </div>
	    <div class="reg-log">
	      <p>已有账号，<a href="${path}/toLogin">立即登录</a></p>
	    </div>
	  </div>
	  
	  <div class="login-bottom">
	    <p>版权所有 © 众筹金融信息服务（深圳）有限公司 粤ICP备14012497号     投资有风险，入市需谨慎</p>
	  </div>
	  
	</body>

</html>