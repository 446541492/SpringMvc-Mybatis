<!DOCTYPE html>
<html lang="zh-CN">

<head>
  <title>密码修改</title>
  <meta name="content-type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta charset="UTF-8">

  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/owl.carousel.css">
  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/owl.carousel.js"></script>
</head>

<body>
  <div class="header">
    <div class="site">
      <ul class="focus">
        <li>
          <a href="javascript:;"><img src="../images/wechat.jpg" />关注微信</a>
        </li>
        <li>
          <a href="javascript:;"><img src="../images/weibo.jpg" />关注微博</a>
        </li>
        <li>
          <a href="javascript:;"><img src="../images/app.jpg" />手机APP</a>
        </li>
      </ul>
      <a href="javascript:;" id="to-help">帮助中心</a>
      <div class="clearfix"></div>
    </div>
  </div>

  <div class="nav">
    <div class="nav-l"><a href="index.html">众筹网</a></div>
    <div class="nav-m">
      <ul>
        <li><a href="index.html">首页</a></li>
        <li><a href="list.html" class="active">热门项目</a></li>
        <li><a href="javascript:;">最新项目</a></li>
        <li><a href="javascript:;">预热项目</a></li>
        <li><a href="javascript:;">发起项目</a></li>
        <li><a href="javascript:;">名人榜</a></li>
        <li><a href="javascript:;">订酒店</a></li>
      </ul>
    </div>
    <div class="nav-r">
      <a href="login.html">登录</a>
      <a href="regist.html">注册</a>
    </div>
    <div class="clearfix"></div>
  </div>

  <div class="content">
	<div class="location">您当前的位置：<a href="javascript:;">个人资料页面</a> > <a href="javascript:;">密码修改</a></div>
    <div class="main">
	  <div class="user-wrap">
		<div class="user-left">
			<h3 class="user-left-ttl">个人资料页面</h3>
			<ul>
				<li><a href="user-info-chz.html">资料修改<span>&gt;</span></a></li>
				<li class="active"><a href="user-info-pwd.html">密码修改<span>&gt;</span></a></li>
				<li><a href="user-info-photo.html">头像修改<span>&gt;</span></a></li>
				<li><a href="user-info-addr.html">收件地址管理<span>&gt;</span></a></li>
			</ul>
		</div>
		<div class="user-right">
			<div class="user-content">
				<table>
          <tr><td class="table-label"><span class="must">*</span>原密码：</td><td class="table-input"><input type="text"/></td></tr>
          <tr><td class="table-label"><span class="must">*</span>新密码：</td><td class="table-input"><input type="text"/></td></tr>
          <tr><td class="table-label"><span class="must">*</span>确认密码：</td><td class="table-input"><input type="text"/></td></tr>
          <tr><td class="table-label">&nbsp;</td><td class="table-input"><button type="submit" class="submit-btn"></button></td></tr>
        </table>
			</div>
		</div>
		<div class="clearfix"></div>
	  </div>
    </div>
  </div>

  <div class="bread">
    <div class="bread-inner">
      <div class="bread-ask">
        <h3>新手指引</h3>
        <p><a href="javascript:;">什么是众筹网</a></p>
        <p><a href="javascript:;">了解操作流程</a></p>
        <p><a href="javascript:;">什么是货币</a></p>
      </div>
      <div class="bread-ask">
        <h3>常见问题</h3>
        <p><a href="javascript:;">开户问题</a></p>
        <p><a href="javascript:;">操盘问题</a></p>
        <p><a href="javascript:;">充值问题</a></p>
      </div>
      <div class="bread-contact">
        <h3>客服热线<span>08:30 - 20:30</span></h3>
        <p>400-800-4000</p>
        <a href="javascript:;"><img src="../images/kefuqq.png" />
          <div>4000000000</div>
        </a>
      </div>
      <div class="bread-app">
        <div class="app-item ios"><i>&nbsp;</i>苹果客户端下载
          <div class="qrcode"><img src="../images/qrcode.jpg" />
            <div class="tri"></div>
          </div>
        </div>
        <div class="app-item android"><i>&nbsp;</i>安卓客户端下载
          <div class="qrcode"><img src="../images/qrcode.jpg" />
            <div class="tri"></div>
          </div>
        </div>
        <div class="app-item wap"><i>&nbsp;</i>手机浏览器访问
          <div class="qrcode"><img src="../images/qrcode.jpg" />
            <div class="tri"></div>
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>

  <div class="footer">
    <div class="footer-inner">
      <p class="link"><a href="javascript:;">关于我们</a><span>|</span><a href="javascript:;">联系我们</a><span>|</span><a href="javascript:;">推广赚钱</a><span>|</span>
        <a href="javascript:;">投诉建议</a>
      </p>
      <p class="copyright">版权所有 © 众筹金融信息服务（深圳）有限公司 粤ICP备14012497号 投资有风险，入市需谨慎</p>
      <div class="authen">
        <a href="javascript:;"><img src="../images/authen1.png" /></a>
        <a href="javascript:;"><img src="../images/authen2.png" /></a>
        <a href="javascript:;"><img src="../images/authen3.png" /></a>
        <a href="javascript:;"><img src="../images/authen4.png" /></a>
        <a href="javascript:;"><img src="../images/authen5.png" /></a>
      </div>
    </div>
  </div>

</body>
<script type="text/javascript">
  $(function(){
    $('.proj-detail-tab li').on('click', 'a', function(){
      var that = $(this),
          li = that.parent(),
          tabFor = that.attr("tab-for");
          
          li.addClass('active').siblings().removeClass('active');
          $(tabFor).fadeIn().siblings().hide();
    });
  });
</script>
</html>