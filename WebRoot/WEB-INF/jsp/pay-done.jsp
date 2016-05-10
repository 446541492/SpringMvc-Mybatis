<!DOCTYPE html>
<html lang="zh-CN">

<head>
  <title>支付</title>
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
    <div class="pay-proc" style="background: url(../images/pay-cfm2.png) center 35px no-repeat"></div>
    <div class="main">
	     <div class="pay-done">
         <h3 class="pay-done-result pay-done-suc">订单提交成功：  项目名称xxxxxxxx</h3>
         <div class="pay-order-info">
           <p>订单号：1234566</p>
           <p>下单时间：2014-04-01 22:13:22</p>
           <p>收货地址:广东深圳，sdff (518000)</p>
         </div>
          <div class="pay-order-info">
           <p>联系人：eric</p>
           <p>联系方式：13590143434</p>
           <p>&nbsp;</p>
           <p>备注：ssssssxxxxxx</p>
         </div>
         <table>
           <tr>
             <td style="width：230px; padding-left: 50px;">项目名</td>
             <td style="width：210px;">发起人</td>
             <td style="width：160px;">回报</td>
             <td style="width：190px;">支付金额</td>
             <td style="width：230px;">配送信息</td>
           </tr>
           <tr>
             <td style="width：230px; padding-left: 50px;">xxxxx</td>
             <td style="width：210px;">Eric</td>
             <td style="width：160px;">1.xxxx<br/>2. qqqqq<br/>3.dfdfsdfsdf</td>
             <td style="width：190px;">￥2535</td>
             <td style="width：230px;">有特殊说明，须有备注。</td>
           </tr>
         </table>
         <h4 class="pay-order-money">总金额：<span style="color: #ec0d0d;">￥1234</span></h4>
       </div> 
       <div class="pay-done">
         <table style="border: 0">
           <tr style="border: 0;">
             <td style="font-size: 18px; color: #333;width: 720px;">名人汇庆生卡</td>
             <td style="font-size: 18px; color: #ec0d0d;width: 180px;">1520.00元</td>
             <td style="font-size: 12px; color: #666;width: 100px;text-align:right;"><a href="javascript:;" style="color: #666;">订单详情</a></td>
           </tr>
           <tr style="border: 0;text-align: right;">
             <td colspan="3"><a href="javascript:;" class="pay-order-btn">优先支付</a></td>
           </tr>
         </table>
       </div> 
       <div class="pay-done">
         <table style="border: 0">
           <tr style="border: 0">
             <td style="width: 130px;padding-left: 10px;"><input type="radio"/>&nbsp;&nbsp;&nbsp;现金余额</td>
             <td style="width: 780px;color: #ec0d0d;font-size:18px;">0.00元</td>
             <td style="width: 120px;text-align: right;"><a href="javascript:;" class="pay-order-btn">立即支付</a></td>
           </tr>
           <tr style="border: 0">
             <td style="width: 130px;padding-left: 10px;"><input type="radio"/>&nbsp;&nbsp;&nbsp;积分余额</td>
             <td style="width: 780px;color: #ec0d0d;font-size:18px;">0.00元</td>
             <td style="width: 120px;text-align: right;"><a href="javascript:;" class="pay-order-btn">立即支付</a></td>
           </tr>
           <tr style="border: 0">
             <td style="width: 130px;padding-left: 10px;"><input type="radio"/>&nbsp;&nbsp;&nbsp;微信支付</td>
             <td style="width: 780px;">&nbsp;</td>
             <td style="width: 120px;text-align: right;"><a href="javascript:;" class="pay-order-btn">立即支付</a></td>
           </tr>
           <tr style="border: 0" class="pay-way-chosen">
             <td style="width: 130px;padding-left: 10px;"><input type="radio"/>&nbsp;&nbsp;&nbsp;使用银行卡</td>
             <td style="width: 780px;">&nbsp;</td>
             <td style="width: 120px;text-align: right;">&nbsp;</td>
           </tr>
         </table>
         <div class="pay-bank-info">
           <div class="pay-bank-input">选择银行：<input type="text" placeholder="请选择以下银行卡"/></div>
           <div class="pay-bank-list">
             <ul>
               <li class="active"><a href="javascript:;" tab-for="#fast-pay">快捷支付</a></li>
               <li><a href="javascript:;" tab-for="#u-key">网银支付</a></li>
             </ul>
             <div class="clearfix"></div>
             <div class="pay-bank-tab">
               <div class="pay-bank-tab-item" id="fast-pay">
                 <a href="javascript:;"><img src="../images/bank1.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank2.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank3.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank4.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank5.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank6.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank7.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank8.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank9.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank10.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank11.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank12.jpg"/></a>
               </div>
               <div class="pay-bank-tab-item" id="u-key" style="display:none;">
                 <a href="javascript:;"><img src="../images/bank1.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank2.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank3.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank4.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank5.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank6.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank7.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank8.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank9.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank10.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank11.jpg"/></a>
                 <a href="javascript:;"><img src="../images/bank12.jpg"/></a>
               </div>
             </div> 
           </div>
         </div>
       </div>
       <div class="pay-done-now">
         <button class="pay-done-now-btn"></button>
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
    $('.pay-bank-list li').on('click', 'a', function(){
      var that = $(this),
          li = that.parent(),
          tabFor = that.attr("tab-for");
          
          li.addClass('active').siblings().removeClass('active');
          $(tabFor).fadeIn().siblings().hide();
    });
  });
</script>
</html>