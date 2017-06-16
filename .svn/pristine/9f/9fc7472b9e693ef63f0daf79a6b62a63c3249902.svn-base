<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@ include file="common.jsp" %>
<html>
	<head>
		<title>中国卒中中心联盟数据管理平台</title>
	</head>
	<body>
		<nav class="navbar navbar-fixed-top navbar-inverse custom-navbar">
			<div class="container-fluid">
				<div class="navbar-header" style="width:100%;">
				    <button type="button" class="navbar-toggle pull-left" data-toggle="sidebar" data-target="#sidebar" >
				        <span class="sr-only">缩小菜单</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				    </button>
					<a href="" class="navbar-brand">中国卒中中心联盟—<span class="area-name">国家质控中心管理平台</span></a>
					<div class="user-menu dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-user"></span> ${username } <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/CscaCenter/logout"><i class="fa fa-sign-out"></i>&nbsp;退出</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<div id="sidebar" class="sidebar">
			<ul class="nav-list">
				<li>
					<a href="main"><i class="fa fa-cogs"></i> 卒中中心审核</a>
				</li>
				<li>
					<a href="permission_deal"><i class="fa fa-wrench"></i> 医院质控管理</a>
				</li>
				<li class="active has-sub">
	            	<a href="javascript:;"><i class="fa fa-database"></i> 质控数据反馈<i class="fa fa-angle-left pull-right right-icon"></i></a>
	            	<ul class="sub" style="display: none;">
	            		<li><a href=""><i class="fa fa-caret-right"></i>  数据上报状况</a></li>
	            		<li><a href=""><i class="fa fa-caret-right"></i>  KPI反馈情况</a></li>
	            	</ul>
	            </li>
				<li>
					<a href="hos_info_push"><i class="fa fa-info-circle"></i> 信息宣传与交流</a>
				</li>
				<li>
					<a href="hos_question"><i class="fa fa-question-circle"></i> 问题反馈</a>
				</li>
	        </ul>
		</div>
		<div class="main-content">
			<div class="row path-nav">
				<h1 class="text-center red" style="margin-bottom:20px;">欢迎加入中国卒中中心联盟</h1>
				
				<div id="myCarousel" class="carousel slide img-show">
				    <!-- 轮播（Carousel）指标 -->
				    <ol class="carousel-indicators">
				        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				        <li data-target="#myCarousel" data-slide-to="1"></li>
				        <li data-target="#myCarousel" data-slide-to="2"></li>
				    </ol>   
				    <!-- 轮播（Carousel）项目 -->
				    <div class="carousel-inner">
				        <div class="item active">
				            <img src="../img/csca.jpg"/>
				        </div>
				        <div class="item">
				            <img src="../img/ppta.jpg"/>
				        </div>
				        <div class="item">
				            <img src="../img/shoupai.jpg"/>
				        </div>
				    </div>
				</div>
				
			</div>
		</div>
		
		<script>
			$('.carousel').carousel({
				interval: 3000
			});//轮播图
		</script>
	</body>
</html>
