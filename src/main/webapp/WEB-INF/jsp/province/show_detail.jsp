<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@ include file="common.jsp" %>
<html>
<head>
<title>中国卒中中心联盟数据管理平台</title>
</head>
<body style="padding: 0;">
		<h1 class="pinggu-tit">
			<span class="btn btn-sm btn-default back-btn"><i class="fa fa-chevron-left"></i> 返回${thunitId }</span>
			2017 年卒中中心建设和医疗质量现状评估表
		</h1>
		<div class="pinggu-cont">
			<!-- Nav tabs -->
			<ul class="nav nav-pills nav-stacked nav-stacked-custom" role="tablist">
			  <li role="presentation" class="active"><a href="#jiegou" role="tab" data-toggle="tab">结构资源配置</a></li>
			  <li role="presentation"><a href="#shebei" role="tab" data-toggle="tab">设备资源配置</a></li>
			  <li role="presentation"><a href="#renli" role="tab" data-toggle="tab">人力资源配置</a></li>
			  <li role="presentation"><a href="#zhiliao" role="tab" data-toggle="tab">治疗技术</a></li>
			  <li role="presentation"><a href="#jiance" role="tab" data-toggle="tab">监测随访技术</a></li>
			  <li role="presentation"><a href="#jiaoxue" role="tab" data-toggle="tab">教学科研</a></li>
			  <li role="presentation"><a href="#cuzhong" role="tab" data-toggle="tab">卒中中心质量管理指标</a></li>
			  <li role="presentation"><a href="#zuzhi" role="tab" data-toggle="tab">组织管理质量</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
			  <div role="tabpanel" class="tab-pane active" id="jiegou">
			  	<div class="dati-box">
			  		<fieldset>
				  		<legend class="c">C</legend>
				  		<div class="dati-control">
				  			<h4>1.医院至少二级及以上医院等级资格：<span class="green">是</span></h4>
				  		</div>
				  		<div class="dati-control">
				  			<h4>2. 有独立的神经内科专业：<span class="green">是</span></h4>
				  		</div>
				  		<div class="dati-control">
				  			<h4>3. 神经内科专业床位20张以上：<span class="green">是</span></h4>
				  		</div>
				  		<div class="dati-control">
				  			<h4>4. 有 急诊室：<span class="red">否</span></h4>
				  		</div>
				  		<div class="dati-control">
				  			<h4>5. 有常规检查实验室：<span class="red">否</span></h4>
				  		</div>
				  		<div class="dati-control">
				  			<h4>6. 有放射科：<span class="red">否</span></h4>
				  		</div>
				  		<div class="dati-control">
				  			<h4>7. 有卒中单元：<span class="red">否</span></h4>
				  		</div>
				  		<div class="dati-control">
				  			<h4>8. 有卒中预防门诊：<span class="red">否</span></h4>
				  		</div>
				  	</fieldset>
				  	<fieldset>
				  		<legend class="b">B,符合“Ｃ”，并</legend>
				  		<div class="dati-control">
				  			<h4>1.有独立的神经内科科室：<span class="red">否</span></h4>
				  		</div>
				  	</fieldset>
			  	</div>
			  	
			  </div>
			  <div role="tabpanel" class="tab-pane" id="shebei">.222..</div>
			  <div role="tabpanel" class="tab-pane" id="renli">.333..</div>
			  <div role="tabpanel" class="tab-pane" id="zhiliao">..444.</div>
			  <div role="tabpanel" class="tab-pane" id="jiance">55</div>
			  <div role="tabpanel" class="tab-pane" id="jiaoxue">.66..</div>
			  <div role="tabpanel" class="tab-pane" id="cuzhong">.77..</div>
			  <div role="tabpanel" class="tab-pane" id="zuzhi">..88.</div>
			</div>
		</div>
	</body>
</html>
