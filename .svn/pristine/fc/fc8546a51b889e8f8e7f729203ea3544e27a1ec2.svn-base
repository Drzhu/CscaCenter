<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html>
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
					<a href="index" class="navbar-brand">中国卒中中心联盟—<span class="area-name">医院信息管理平台</span></a>
					<div class="user-menu dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-user"></span> ${username }  <span class="caret"></span></a>
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
					<a href="hospitalInfo"><i class="fa fa-edit"></i> 医院基本信息</a>
				</li>
				<li>
					<a href="data_manage"><i class="fa fa-database"></i> 数据上报</a>
				</li>
				<li>
					<a href="permission_application"><i class="fa fa-cogs"></i> 数据反馈</a>
				</li>
				<li class="active">
					<a href="main"><i class="fa fa-edit"></i> 卒中中心评估</a>
				</li>
	        </ul>
		</div>
		<div class="main-content">
			<div class="row path-nav">
				<ol class="breadcrumb">
				  <li><i class="fa fa-home"></i> 填写评估表</li>
				</ol>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4>评估列表</h4>
						</div>
						<div class="panel-body">
							<!-- <ul class="info-list">
								<li><a href="evaluate">2017 年卒中中心建设和医疗质量现状评估表</a></li>
							</ul> -->	
							<table class="table table-bordered table-hover table-striped">
								<tbody>	
									<tr>
										<td width="70%">2017 年卒中中心建设和医疗质量现状评估表</td>
										<td width="30%" id="myTd">
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script>
	$(function(){ 
		$.ajax({
	        type: "GET",
	        url: "load_value",
	        dataType: "json",
	        success: function(res){
	        	var zlpgValue= res.zv;
	        	if(zlpgValue.PState!=1){
	        		$("#myTd").append('<a href="evaluate" class="btn btn-xs btn-success"><i class="fa fa-edit"></i>在线填写</a>');
	        	}else{
	        		$("#myTd").append('<a href="evaluateView" class="btn btn-xs btn-success"><i class="fa fa-edit"></i>查看评估表</a>');
	        	}
	        	
	        }
	    });
		
		
	});
	//<a href="evaluate" class="btn btn-xs btn-success"><i class="fa fa-edit"></i>在线填写</a>
	
</script>
</html>
