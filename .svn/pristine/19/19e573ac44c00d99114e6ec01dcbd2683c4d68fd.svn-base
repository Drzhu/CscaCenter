<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@ include file="common.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>province/test</title>
</head>
<body>
<input value="${areaname }" id ="areaname" hidden/>
<input value="10" id ="time" hidden/>
	<div class="container">
		<div id="x_bar_01" style="width: 1000px; height: 500px; float: center;"></div>
		<div id="x_bar_02" style="width: 1000px; height: 500px; float: center;"></div>
		<div id="pie01" style="width: 1000px; height: 500px; float: center;"></div>
		<div id="pie02" style="width: 1000px; height: 500px; float: center;"></div>
		<div id="pie03" style="width: 1000px; height: 500px; float: center;"></div>
		<div class="panel-body">
			<table id="hos_info" class="table table-bordered table-hover table-striped" style="width: 100%;">
			</table>
		</div>
	</div>
	<script src="../js/jquery.dataTables.js"></script>
	<script src="../js/echart/hos_info_dataTable.js"></script>
	<script type="text/javascript">
	/* 全国医院排行 bar1*/
	var x_catalog_list = [];
	<c:forEach var="item" items="${x_catalog}" varStatus="status">
	x_catalog_list.push('${item}');
	</c:forEach>
	var Echart_01  = echarts.init(document.getElementById("x_bar_01"));
	Echart_01.setOption(x_bar([ '医院数' ],deal(x_catalog_list),${y_data}));
	/* 全国上报病例数排行 bar1*/
	var x_catalog_list_bingli = [];
	<c:forEach var="item" items="${x_catalog_bingli}" varStatus="status">
	x_catalog_list_bingli.push('${item}');
	</c:forEach>
	var Echart_02  = echarts.init(document.getElementById("x_bar_02"));
	Echart_02.setOption(x_bar([ '病例数' ],deal(x_catalog_list_bingli),${y_data_bingli}));
	
	/* 全国上报数据疾病种类概况 pie*/
	var pie_state_all = [];
	<c:forEach var="item" items="${pie_state_json}" varStatus="status">
	pie_state_all.push('${item.name}');
	</c:forEach>
	var Echart_03  = echarts.init(document.getElementById("pie01"));
	Echart_03.setOption(pie(pie_state_all, ${pie_state_json}));
	
	/* 全国上报数据疾病种二级类概况 pie*/
	var pie_state_two = [];
	<c:forEach var="item" items="${pie_state_two_json}" varStatus="status">
	pie_state_two.push('${item.name}');
	</c:forEach>
	var Echart_04  = echarts.init(document.getElementById("pie02"));
	Echart_04.setOption(pie(pie_state_two, ${pie_state_two_json}));
	
	/* 全国上报数据疾病种三级类概况 pie*/
	var pie_state_three = [];
	<c:forEach var="item" items="${pie_state_three_json}" varStatus="status">
	pie_state_three.push('${item.name}');
	</c:forEach>
	var Echart_05  = echarts.init(document.getElementById("pie03"));
	Echart_05.setOption(pie(pie_state_three, ${pie_state_three_json}));
	
	function deal(x_catalog){
		var list = [];
		for (var i = 0; i < x_catalog.length; i++) {
			var s = "";
			for(var j = 0; j < x_catalog[i].length; j++){
				s += x_catalog[i][j]+"\r\n";
			}
			list.push(s);
		}
		return list;
	}
	</script>
</body>

</html>
