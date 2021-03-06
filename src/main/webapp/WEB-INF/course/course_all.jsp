<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>全部课程</title>
<link href="${baseurl }/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="${baseurl }/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${baseurl }/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="${baseurl }/js/move-top.js"></script>
<script type="text/javascript" src="${baseurl }/js/easing.js"></script>
<script type="text/javascript" src="${baseurl }/js/bootstrap.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->
</head>

<body class="bcg">
	<div class="t">
		<div class="t_n">
			<div class="r_nr"><a href="#">我的学习</a>&nbsp;<a href="#">消息<em id="msg_num">2</em></a>&nbsp;<a href="#">购物车<em id="buy_num">1</em></a>&nbsp;<a href="#">登录/注册</a></div>
		</div>
	</div>
	<div class="header" style="height: 80px">
		<div class="container">
			<div class="header-top">
				<div class="logo">
					ANG English
				</div>
				<div class="top-menu">
					<span class="menu"><img src="${baseurl }/images/nav.png" alt=""/> </span>
					<ul>
						<li><a href="${baseurl }/icourse/getMain" class="active">主页</a></li>
							<li><a href="${baseurl }/icourse/getAll">课程</a></li>
							<li><a href="${baseurl }/icourse/getWord">单词</a></li>
						<li><a href="about.html">关于</a></li>
						<li><a href="service.html">服务</a></li>
						<li><a href="contact.html">联系</a></li>
					</ul>
				</div>
				<div class="search">
					<div class="b-search">
						<form>
							<input type="text" value="课程搜索" onfocus="this.value = ''" onblur="if (this.value == '') {this.value = 'Search here';}">
							<input type="submit" value="">
						</form>
					</div>
				</div>
				<!--script-nav-->
				 <script>
						 $("span.menu").click(function(){
						 $(".top-menu ul").slideToggle("slow" , function(){
						 });
						 });
						 </script>
					<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--services-->
	<div class="content">
		<div class="incredible">
				<div class="container">
					<div >
						<ul class="breadcrumb" contenteditable="true">
							<li>​<a href="index.html">主页</a></li>
							<li><a href="course.html" class="active">课程</a></li>
						</ul>
					</div>
					<div class="course_all">
						<div class="container-fluid">
							<div class="cg">
									<div class="cg_title">
										<ul class="unstyled inline" contenteditable="true">
											<li><a class="active">全部</a></li>
											<li><a >英语口语</a></li>
											<li><a>英语考试</a></li>
											<li><a>生活英语</a></li>
											<li><a>商务英语</a></li>
										</ul>
									</div>
									
									<div class="cg_type">
										<ul>
											<li>
												<p>课程类目:</p>
													<a>高中</a>
													<a>四级</a>
													<a>六级</a>
													<a>专八</a>
											</li>
											<li>
												<p>开课时间:</p>
													<a>已开课</a>
													<a>二月</a>
													<a>三月</a>
											</li>
										</ul>
									</div>
							</div>
							<div class="cg_course">
								<div class="cg_sort">
									<ul>
										<li><a>综合</a></li>
										<li><a>价格<a><i class="fa fa-angle-up"></i></a><a><i class="fa fa-angle-down"></i></a></a></li>
										<li><a>人气</a></li>
									</ul>
								</div>
								<div class="sort_course">
										<div class="incredible-grids">
								<c:if test="${ requestScope.id==1}">
								<c:forEach items="${course1}" var="course" begin="0" end="11">
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/${course.img}" class="img-responsive" alt="/">
												<h4>${course.name }</h4>
												<p>沪江网校</p>
												<p><span>￥${course.price}</span>（${ arr1[course.id]}人学过）</p>
												</a>
											</div>
								</c:forEach>
								</c:if>			
								<c:if test="${ requestScope.id==2}">
								<c:forEach items="${course2}" var="course" begin="0" end="11">
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/${course.img}" class="img-responsive" alt="/">
												<h4>${course.name }</h4>
												<p>沪江网校</p>
												<p><span>￥${course.price}</span>（${ arr2[course.id]}人学过）</p>
												</a>
											</div>
								</c:forEach>
								</c:if>			
								<c:if test="${ requestScope.id==3}">
								<c:forEach items="${course3}" var="course" begin="0" end="11">
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/${course.img}" class="img-responsive" alt="/">
												<h4>${course.name }</h4>
												<p>沪江网校</p>
												<p><span>￥${course.price}</span>（${ arr3[course.id]}人学过）</p>
												</a>
											</div>
								</c:forEach>
								</c:if>			
											<%-- <div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/hot2.jpg" class="img-responsive" alt="/">
												<h4>帮你学音标语音</h4>
												<p>帮你学英语</p>
												<p><span>￥299</span>（468人学过）</p>
												</a>
											</div>
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/hot3.jpg" class="img-responsive" alt="/"> 
												<h4>紧跟商业趋势--学地道英语</h4>
													<p>BenAtive商务英语</p>
												<p><span>￥199</span>（1888人学过）</p>
												</a>
											</div>
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/hot4.jpg" class="img-responsive" alt="/">
												<h4>英语口语革命零基础</h4>
												<p>李先知</p>
												<p><span>￥188</span>（3586人学过）</p>
												</a>
											</div> --%>
											<div class="clearfix"></div>
										</div>

										<%-- <div class="incredible-grids">
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/free1.jpg" class="img-responsive" alt="/">
												<h4>金牌口语课--中外教联袂出击</h4>
												<p>沪江网校</p>
												<p><span>￥288</span>（1401人学过）</p>
												</a>
											</div>
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/free2.jpg" class="img-responsive" alt="/">
												<h4>帮你学音标语音</h4>
												<p>帮你学英语</p>
												<p><span>￥299</span>（468人学过）</p>
												</a>
											</div>
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/free3.jpg" class="img-responsive" alt="/"> 
												<h4>紧跟商业趋势--学地道英语</h4>
													<p>BenAtive商务英语</p>
												<p><span>￥199</span>（1888人学过）</p>
												</a>
											</div>
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/free4.jpg" class="img-responsive" alt="/">
												<h4>英语口语革命零基础</h4>
												<p>李先知</p>
												<p><span>￥188</span>（3586人学过）</p>
												</a>
											</div>
											<div class="clearfix"></div>
										</div>

										<div class="incredible-grids">
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/hot1.jpg" class="img-responsive" alt="/">
												<h4>金牌口语课--中外教联袂出击</h4>
												<p>沪江网校</p>
												<p><span>￥288</span>（1401人学过）</p>
												</a>
											</div>
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/hot2.jpg" class="img-responsive" alt="/">
												<h4>帮你学音标语音</h4>
												<p>帮你学英语</p>
												<p><span>￥299</span>（468人学过）</p>
												</a>
											</div>
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/hot3.jpg" class="img-responsive" alt="/"> 
												<h4>紧跟商业趋势--学地道英语</h4>
													<p>BenAtive商务英语</p>
												<p><span>￥199</span>（1888人学过）</p>
												</a>
											</div>
											<div class="col-md-3 incredible-grid">
												<a href="#">
												<img src="${baseurl }/images/hot4.jpg" class="img-responsive" alt="/">
												<h4>英语口语革命零基础</h4>
												<p>李先知</p>
												<p><span>￥188</span>（3586人学过）</p>
												</a>
											</div>
											<div class="clearfix"></div>
										</div> --%>
										<!-- <div class="page">
											<ul class="pagination">
												<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
												<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#" aria-label="Next" ><span aria-hidden="true">»</span></a></li>
											</ul>
										</div> -->
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>
	<!--footer-->
	<div class="footer-section">
		<div class="container">
			<div class="footer-top">
				<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">ANG 英语在线学习平台</a></p>
			</div>
			<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
			<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		</div>
	</div>
</body>

</html>