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
					<a href="" class="navbar-brand">中国卒中中心联盟<span class="area-name">省质控中心管理平台</span></a>
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
					<a href="main"><i class="fa fa-cogs"></i> 评估表单审核</a>
				</li>
				<li>
					<a href=""><i class="fa fa-wrench"></i> 医院权限审批</a>
				</li>
				<li>
					<a href=""><i class="fa fa-database"></i> 数据质量控制</a>
				</li>
				<li>
					<a href=""><i class="fa fa-info-circle"></i> 医院信息推送</a>
				</li>
				<li>
					<a href=""><i class="fa fa-question-circle"></i> 医院问题解答</a>
				</li>
	        </ul>
		</div>
		<div class="main-content">
			<h2>努力开发中...敬请期待！</h2>
		</div>
	</body>
</html>
