<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>

<!DOCTYPE html>
<html lang="zh-CN">
	<head>
	  <title>首页</title>
	  <%@ include file="/meta.jsp" %>
	  <meta http-equiv="X-UA-Compatible" content="IE=Edge">  
	</head>

	<body>
	  <div class="header">
	    <div class="site">
	      <ul class="focus">
	        <li>
	          <a href="javascript:;"><img src="${path}/images/wechat.jpg" />关注微信</a>
	        </li>
	        <li>
	          <a href="javascript:;"><img src="${path}/images/weibo.jpg" />关注微博</a>
	        </li>
	        <li>
	          <a href="javascript:;"><img src="${path}/images/app.jpg" />手机APP</a>
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
	        <li><a href="index.html" class="active">首页</a></li>
	        <li><a href="list.html">热门项目</a></li>
	        <li><a href="javascript:;">最新项目</a></li>
	        <li><a href="javascript:;">预热项目</a></li>
	        <li><a href="javascript:;">发起项目</a></li>
	        <li><a href="javascript:;">名人榜</a></li>
	        <li><a href="javascript:;">订酒店</a></li>
	      </ul>
	    </div>
	    <div class="nav-r">
	      <a id="login" href="${path}/toLogin">登录</a>
	      <a id="regist" href="${path}/toRegist">注册</a>
	    </div>
	    <div class="clearfix"></div>
	  </div>
	
	  <div class="banner">
	    <div class="banner-inner">
	      <a href="javascript:;">
	        <div class="item" style="background: url(${path}/images/banner.jpg) center no-repeat;"></div>
	      </a>
	      <a href="javascript:;">
	        <div class="item" style="background: url(${path}/images/banner1.jpg) center no-repeat;"></div>
	      </a>
	      <a href="javascript:;">
	        <div class="item" style="background: url(${path}/images/banner.jpg) center no-repeat;"></div>
	      </a>
	    </div>
	  </div>
	
	  <div class="count">
	    <div class="count-inner">
	      <div class="count-item">
	        <p class="count-num">056,887,785</p>
	        <p class="count-ttl"><i style="background: url(${path}/images/count1.png) center no-repeat;"></i>众筹项目总数</p>
	      </div>
	      <div class="count-item">
	        <p class="count-num">476,216</p>
	        <p class="count-ttl"><i style="background: url(${path}/images/count2.png) center no-repeat;"></i>支持者</p>
	      </div>
	      <div class="count-item">
	        <p class="count-num">345,468,067</p>
	        <p class="count-ttl"><i style="background: url(${path}/images/count3.png) center no-repeat;"></i>预约众筹金额</p>
	      </div>
	      <div class="count-item">
	        <p class="count-num">356,906,958</p>
	        <p class="count-ttl"><i style="background: url(${path}/images/count3.png) center no-repeat;"></i>成功众筹金额</p>
	      </div>
	      <div class="clearfix"></div>
	    </div>
	  </div>
	
	  <div class="cate">
	    <div class="cate-item">
	      <a href="javascript:;"><img src="${path}/images/cate1.png" /></a><a href="javascript:;" class="btn food">美食</a></div>
	    <div class="cate-item">
	      <a href="javascript:;"><img src="${path}/images/cate2.png" /></a><a href="javascript:;" class="btn relax">休闲</a></div>
	    <div class="cate-item">
	      <a href="javascript:;"><img src="${path}/images/cate3.png" /></a><a href="javascript:;" class="btn fun">娱乐</a></div>
	    <div class="cate-item">
	      <a href="javascript:;"><img src="${path}/images/cate4.png" /></a><a href="javascript:;" class="btn hotel">酒店</a></div>
	    <div class="clearfix"></div>
	  </div>
	
	  <div class="list">
	    <div class="list-item">
	      <h3>美食项目</h3>
	      <a href="javascript:;" class="list-all">查看全部&nbsp;&gt;</a>
	      <div class="list-projs">
	        <div class="list-proj">
	          <a href="javascript:;"><img src="../images/proj1.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj2.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj3.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj last">
	          <a href="javascript:;"><img src="${path}/images/proj4.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="clearfix"></div>
	      </div>
	      <div class="clearfix"></div>
	    </div>
	
	    <div class="list-item">
	      <h3>娱乐项目</h3>
	      <a href="javascript:;" class="list-all">查看全部&nbsp;&gt;</a>
	      <div class="list-projs">
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj5.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj6.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj7.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj last">
	          <a href="javascript:;"><img src="${path}/images/proj8.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="clearfix"></div>
	      </div>
	      <div class="clearfix"></div>
	    </div>
	
	    <div class="list-item">
	      <h3>休闲项目</h3>
	      <a href="javascript:;" class="list-all">查看全部&nbsp;&gt;</a>
	      <div class="list-projs">
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj9.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj10.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj11.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj last">
	          <a href="javascript:;"><img src="${path}/images/proj12.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="clearfix"></div>
	      </div>
	      <div class="clearfix"></div>
	    </div>
	
	    <div class="list-item">
	      <h3>酒店项目</h3>
	      <a href="javascript:;" class="list-all">查看全部&nbsp;&gt;</a>
	      <div class="list-projs">
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj13.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj14.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj">
	          <a href="javascript:;"><img src="${path}/images/proj15.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="list-proj last">
	          <a href="javascript:;"><img src="${path}/images/proj16.jpg" class="proj-img" /></a>
	          <h4 class="proj-name"><a href="javascript:;">藤之屋文化</a></h4>
	          <p class="proj-desc">追求高品质与完美体验的日式料理</p>
	          <div class="proj-ttl">
	            <div class="proj-prog">融资进度</div>
	            <div class="proj-prog-perc">26%</div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="proj-process">
	            <div class="proj-process-now" style="width: 26%;"></div>
	          </div>
	          <div class="proj-thumb">
	            <div class="thumb-l">
	              <p class="thumb-t">2015.08.18</p>
	              <p class="thumb-b">上线时间</p>
	            </div>
	            <div class="thumb-m">
	              <p class="thumb-t">￥37100.00</p>
	              <p class="thumb-b">单笔投资</p>
	            </div>
	            <div class="thumb-r">
	              <p class="thumb-t">￥530万</p>
	              <p class="thumb-b">融资金额</p>
	            </div>
	            <div class="clearfix"></div>
	          </div>
	          <div class="rongzi"></div>
	        </div>
	        <div class="clearfix"></div>
	      </div>
	      <div class="clearfix"></div>
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
	        <a href="javascript:;"><img src="${path}/images/kefuqq.png" />
	          <div>4000000000</div>
	        </a>
	      </div>
	      <div class="bread-app">
	        <div class="app-item ios"><i>&nbsp;</i>苹果客户端下载
	          <div class="qrcode"><img src="${path}/images/qrcode.jpg" />
	            <div class="tri"></div>
	          </div>
	        </div>
	        <div class="app-item android"><i>&nbsp;</i>安卓客户端下载
	          <div class="qrcode"><img src="${path}/images/qrcode.jpg" />
	            <div class="tri"></div>
	          </div>
	        </div>
	        <div class="app-item wap"><i>&nbsp;</i>手机浏览器访问
	          <div class="qrcode"><img src="${path}/images/qrcode.jpg" />
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
	        <a href="javascript:;"><img src="${path}/images/authen1.png" /></a>
	        <a href="javascript:;"><img src="${path}/images/authen2.png" /></a>
	        <a href="javascript:;"><img src="${path}/images/authen3.png" /></a>
	        <a href="javascript:;"><img src="${path}/images/authen4.png" /></a>
	        <a href="javascript:;"><img src="${path}/images/authen5.png" /></a>
	      </div>
	    </div>
	  </div>
	
	  <script type="text/javascript">
	    $(function(){
	        var banner = $('.banner-inner');
	        
	        banner.owlCarousel({
						slideSpeed : 300,
						singleItem:true,
						autoPlay:true,
						pagination:false,
						paginationCustom:true
					});
	      });
	      
	      function login(){
	     	alert("Hello");
	      	$.ajax(function(){
	      		type: "POST",
	      		url: "login.jsp"
	      	});
	      }
	      
	      function regist(){
	      	alert("Hello2");
	      }
	  </script>
	</body>
</html>