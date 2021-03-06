<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
	
<body>
<!-- header -->
	<div class="header">
			<div class="header-grid">
					<div class="container">
				<div class="header-left animated wow fadeInLeft" data-wow-delay=".5s">
					<ul>
					 <c:choose>
                    	<c:when test="${customer.c_id eq null}">
						<li>请登录</li>
                    	</c:when>
                   	 	<c:otherwise>
						<li><img src="upload/${customer.photo}" height="30"> </li>
						<li>欢迎您  ${customer.account}</li>
      				  	</c:otherwise>
      				</c:choose>
					
						
					</ul>
				</div>
				<div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
				<div class="header-right1 ">
					<ul>
						<c:choose>
	                    	<c:when test="${customer.c_id eq null}">
								<li><i class="glyphicon glyphicon-log-in" ></i><a href="customer/loginShow">登录</a></li>
								<li><i class="glyphicon glyphicon-book" ></i><a href="customer/registerShow">注册</a></li>
	                    	</c:when>
	                   	 	<c:otherwise>
								<li><i class="glyphicon glyphicon-log-out" ></i><a href="customer/logout">注销</a></li>
	      				  	</c:otherwise>
	      				</c:choose>
					</ul>
				</div>
				<div class="header-right2">
					<div class="cart box_1">
					<c:choose>
                    	<c:when test="${customer.c_id eq null}">
							<a href="customer/loginShow">
                    	</c:when>
                   	 	<c:otherwise>
							<a href="cart/list?c_id=${customer.c_id}">
      				  	</c:otherwise>
      				</c:choose>
							<h3> <div class="total">
								<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> 件)</div>
								<img src="images/cart.png" alt="" />
							</h3>
						</a>
						<p><a href="javascript:void(0);" class="simpleCart_empty" id="ec" onclick="ec();">清空购物车</a></p>
						<div class="clearfix"> </div>
					</div>	
				</div>
				<div class="clearfix"> </div>
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
			<div class="container">
			<div class="logo-nav">
				
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						 <div class="navbar-brand logo-nav-left ">
							<h1 class="animated wow pulse" data-wow-delay=".5s"><a href="index/homeShow">花之语在线鲜花商城</a></h1>
						</div>

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index/homeShow" class="act">首页</a></li>	
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">热门推荐 <b class="caret"></b></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<h6>鲜花</h6>

											<li><a href="goods/paging?s_id=19">蓝色妖姬</a></li>
											<li><a href="goods/paging?s_id=20">百合花束</a></li>
											<li><a href="goods/paging?s_id=21">春舞枝绣球</a></li>
											<li><a href="goods/paging?s_id=22">向日葵花束</a></li>
											<li><a href="goods/paging?s_id=23">混搭花束</a></li>
											<li><a href="goods/paging?s_id=24">永生花玫瑰花</a></li>
											<li><a href="goods/paging?s_id=25">进口玫瑰永生花</a></li>
											<li><a href="goods/paging?s_id=26">永生花礼盒玫瑰康乃馨</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<h6>香皂花</h6>
											<li><a href="goods/paging?s_id=14">红色玫瑰花香皂花</a></li>
											<li><a href="goods/paging?s_id=15">玫瑰花香皂花</a></li>
											<li><a href="goods/paging?s_id=16">康乃馨</a></li>
											<li><a href="goods/paging?s_id=17">香水百合花</a></li>
											<li><a href="goods/paging?s_id=18">香槟红玫瑰花</a></li>

										</ul>
									</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							
							<li><a href="classes/classesShow"> 商品分类</a></li>
							
							<c:choose>
		                    	<c:when test="${customer.c_id eq null}">
									<li><a href="customer/loginShow">历史订单</a></li>
		                    	</c:when>
		                   	 	<c:otherwise>
									<li><a href="indent/paging">历史订单</a></li>
		      				  	</c:otherwise>
		      				</c:choose>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">客户服务 <b class="caret"></b></a>
								<ul class="dropdown-menu multi multi2">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<i class="glyphicon glyphicon-headphones"></i><a>在线客服</a>
												<h6></h6>
												<i class="glyphicon glyphicon-envelope" ></i><a href="mailto:info@example.com">企业邮箱</a>
												<h6></h6>
												<i class="glyphicon glyphicon-earphone" ></i><a>联系电话</a>

											</ul>
										</div>
										<div class="clearfix">
										  <table>
										  	<tr>
											  <td><img src="images/wx.jpg" alt="微信" height="200"></td>
											  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
											  <td><img src="images/wb.JPG" alt="微博" height="200"></td>
											</tr>
										  	<tr align="center">
											  <td>微信</td>
											  <td></td>
											  <td>微博</td>
											</tr>
										  </table>
										</div>
									</div>
								</ul>
							</li>
							<c:choose>
		                    	<c:when test="${customer.c_id eq null}">
									<li><a href="customer/loginShow">个人信息</a></li>
		                    	</c:when>
		                   	 	<c:otherwise>
									<li><a href="address/list?c_id=${customer.c_id}">个人信息</a></li>
		      				  	</c:otherwise>
		      				</c:choose>
							
						</ul>
					</div>
					</nav>
				</div>
		</div>
		<div class="header">
			<div class="header-grid">
				<div class="container">
					<div class="header-md animated wow fadeInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
						<form action="goods/paging" method="post" onsubmit="return full();">
							<div class="col-sm-11">
         						<input type="text" class="form-control" name="key" id="key" placeholder="请输入搜索文字">
        					</div>
							<input type="submit" class="btn btn-1 btn-default" value="搜索">
						</form>
						
					</div>
				</div>	
			</div>
		</div>
	</div>
<!-- //header --><!--banner-->
<div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">注册</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="#">首页</a><label>/</label>注册</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- contact -->
	<div class="login">
		<div class="container">
		 <form action="customer/register" method="post" enctype="multipart/form-data"  onsubmit="return isfull();">
			<div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
			<span class="help-inline"><img id="loading"><font id="show"></font></span>
				<div class="login-mail">
					<input type="text" placeholder="账号" required="" name="account" id="account"  onchange="checkAccount();"><i class="glyphicon glyphicon-user"></i>
				</div>
				
				<div class="login-mail">
					<input type="password" placeholder="密码" required="" name="password" id="psw1"><i class="glyphicon glyphicon-lock"></i>
				</div>
				<div class="login-mail">
					<input type="password" placeholder="确认密码" required="" id="psw2"><i class="glyphicon glyphicon-lock"></i>
				</div>
				<div class="login-mail">
					<input type="text" placeholder="头像" readonly="readonly" ><i class="glyphicon glyphicon-camera"></i><br/><br/>
					<input type="file"  required=""  name="photoFile" id="photo"  onchange="preview(this,'preview','imghead',350,200)" >
					<div id="preview">
								<img id="imghead" width="350" height="200" />
					 </div>
				</div>
				  <a class="news-letter" href="#">
						 <label class="checkbox1"><input type="checkbox" id="cb" ><i> </i>我同意xxx条款</label>
					   </a>
	
			</div>
			<div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
				<label class="hvr-sweep-to-top login-sub">
					<input type="submit" value="提交">
					</label>
					<p>已有账号</p>
				<a href="customer/loginShow" class="hvr-sweep-to-top">登录</a>
			</div>
			<div class="clearfix"> </div>
			</form>
		</div>


	</div>
<div class="social animated wow fadeInDown" data-wow-delay=".1s">
    <div class="container">
        <div class="col-sm-3 social-ic">
            <a>品类齐全<br/>轻松购物</a>
        </div>
        <div class="col-sm-3 social-ic">
            <a>多仓直发<br/>极速配送</a>
        </div>
        <div class="col-sm-3 social-ic">
            <a>正品行货<br/>精致服务</a>
        </div>
        <div class="col-sm-3 social-ic">
            <a>天天低价<br/>畅选无忧</a>
        </div>
    <div class="clearfix"></div>
    </div>
</div>

<!-- footer -->
    <div class="footer">
        <div class="container">
            <div class="copy-right animated wow fadeInUp" data-wow-delay=".5s">
                <p>Copyright &copy; 2016.Company name All rights reserved.<a href="employee/loginShow">后台管理</a></p>
            </div>
        </div>
    </div>
<!-- //footer -->
</body>
<script type="text/javascript"src="plugins/imagePreview/imagePreview.js"></script>
<script type="text/javascript"src="plugins/jQuery/jquery.js"></script>
<script type="text/javascript">
//前台验证
function isfull() {
	//两次是否一致
	var txt1 = document.getElementById("psw1");//通过ID属性控制对象
	var txt2 = document.getElementById("psw2");
	if (txt1.value != txt2.value) {
		alert("两次输入不一致");
		return false;
	}
	return true;
}
//ajax验证账号
function checkAccount() {
	$("#loading").attr("src","images/load.gif");
	$("#show").removeAttr("color").html("正在为您验证账号");
	var url = "customer/checkAccount";
	var param={
			"account":$("#account").val()
	};
	$.post(url,param,function(m){
		$("#loading").removeAttr("src");
		if(m.m=="1"){
			$("#show").attr("color","green").html("恭喜您，该账号可以使用");
		}else if(m.m=="0"){
			$('#account').val('');
			$("#show").attr("color","red").html("账号\""+m.account+"\"已存在，请重新输入");
		}
	});
}
//前台验证 	
function full() {
	//是否填写品牌
	var txt=document.getElementById("key");//通过ID属性控制对象
	var message=txt.value;
		
	if(message==""){
		return false;
	}	
	
	return true;
}
//ajax清空购物车
function ec() {
	var url = "cart/empty";
	var param={
	};
	$.post(url,param,function(){
	});
}
</script>
</html>