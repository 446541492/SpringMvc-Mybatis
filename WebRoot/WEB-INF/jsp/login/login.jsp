<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
	  <title>登录</title>
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
	  
	  <div class="login-div">
	    <div class="login-div-l">
	      <img src="${path}/images/login-ad.jpg" />
	    </div>
	    <div class="login-div-r">
	      <form id="loginForm">
		      <h3>登录巅峰众筹网</h3>
		      <table>
		        <tr>
		          <td class="label">账户</td>
		          <td class="input">
		          	<input id="userName" type="text" name="userName" />
		          </td>
		        </tr>
		        <tr>
		          <td class="label">密码</td>
		          <td class="input"><input id="password" type="password" name="password"/></td>
		        </tr>
		          <tr>
		          <td class="label">验证码</td>
		          <td class="input">
		          	<input id="validateCode" type="text" style="width: 100px;" name="validateCode"/>
		          	<img alt="验证码" src="${path}/genCode">
		          </td> 
		        </tr>
		        <tr>
		          <td>&nbsp;</td>
		          <td>
		          	<input type="checkbox" id="remember"/>
		          	<label for="remember">一周免登录</label>
		          	<a href="javascript:;" id="fgt-pwd">忘记密码</a>
		          </td>
		        </tr>
		        <tr>
		          <td>&nbsp;</td>
		          <td><input type="button" value="立即登录" class="login-btn" onclick="submitForm()"/></td>
		        </tr>
		        <tr>
		          <td>&nbsp;</td>
		          <td class="login-reg">新朋友，<a href="${path}/toRegist">免费注册</a></td>
		        </tr>        
		      </table>
	      </form>
	    </div>
	    <div class="clearfix"></div>
	  </div>
	  
	  <div class="login-bottom">
	    <p>版权所有 © 众筹金融信息服务（深圳）有限公司 粤ICP备14012497号     投资有风险，入市需谨慎</p>
	  </div>
	</body>
	
	<script type="text/javascript">
		function submitForm(){
			var url = "${path}/validateUser";
			$.ajax({
				type: 'POST',
				dataType: 'json', 
				url: url,
				timeOut: 60000,
				error: function(){
					alert("网络异常！");
				},
				data: $("#loginForm").serialize(),
				success: function(msg){
					if(msg.code == 20){
						alert(msg.text);
					}else if(msg.code == 40){
						alert(msg.text);
					}else{
						alert(msg.text);
					}
				}
			});
		}
	</script>
</html>