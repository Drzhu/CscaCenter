<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%
String base = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+""+request.getContextPath();
String areaname = (String)session.getAttribute("areaname");
%>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<!-- <meta name="viewport" content="width=device-width, initial-scale=1,maxinum-scale=1,user-scalable=no"> -->
   	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
   	<meta name="renderer" content="webkit">
   	<link rel="stylesheet" type="text/css" href="<%=base %>/font-awesome-4.6.3/css/font-awesome.css" />
   	<link rel="stylesheet" type="text/css" href="<%=base %>/css/bootstrap/bootstrap.min.css" />
   	<link rel="stylesheet" type="text/css" href="<%=base %>/css/bootstrap/dataTables.bootstrap.css" />
   	<link rel="stylesheet" type="text/css" href="<%=base %>/css/csca-css.css" />
   	<link rel = "Shortcut Icon" href="<%=base %>/img/czh.ico">
   	<title>医院数</title>
</head>
<body class="no-padding">
<%-- ${areaname} --%>
	<div class="row no-margin">
		<div class="col-sm-12">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4>全国各省质控医院数</h4>
				</div>
				<div class="panel-body">
					<table id="hosNumber" class="table table-bordered table-hover table-striped" >
						<thead>
							<tr>
								<th colspan="5" class="text-center" style="background-color:#e6e6e6;">
									中国卫生和计划生育统计年鉴二级及以上医院总数
								</th>
								<th colspan="3" class="text-center">
									现质控医院数量
								</th>
								<th colspan="3" class="text-center" style="background-color:#e6e6e6;">
									联盟医院数占年鉴比例（%）
								</th>
							</tr>
							<tr>
							<th>ID</th>
								<th>省份</th>
								<th>总数</th>
								<th>三级医院</th>
								<th>二级医院</th>
								<th>总数</th>
								<th>三级医院</th>
								<th>二级医院</th>
								<th>总数</th>
								<th>三级医院</th>
								<th>二级医院</th>
							</tr>
						</thead>
						<tbody>
						
							<c:forEach var ="u" items="${hospital_detail_list}" varStatus="status">
								<tr id="${u.areaname}" >
								<td>${status.index}</td>
								<td>${u.areaname}</td>
								<td>${u.count_2015}</td>
								<td>${u.threeLevel_2015}</td>
								<td>${u.twoLevel_2015}</td>
								<td>${u.count}</td>
								<td>${u.threeLevel}</td>
								<td>${u.twoLevel}</td>
								<td>${u.countscale}</td>
								<td>${u.threescale}</td>
								<td>${u.twoscale}</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<p style="color:red;"><c:forEach var ="u" items="${hospital_null_level_list}" varStatus="status">
						${u.areaname}有${u.null_level }家未定级医院
							</c:forEach></p>
					<input id = "inp" value="${areaname }" hidden>
			</div>
			</div>
		</div>
	</div>
	<script src="../js/jquery-3.1.0.min.js"></script>
	<script src="../js/bootstrap/bootstrap.min.js"></script>
	<script src="../js/jquery.dataTables.js"></script>
	<script>
		$(function(){
			$('#hosNumber').DataTable({
					/* 'order': [[4, "desc"]],//表格初始化，默认第四列降序 */
					'columnDefs':[{
					　　　　'targets' : [1,2,3,4],  //前四列不排序
					　　　　'orderable' : false
					}],
					'lengthMenu':[20], 
					'lengthChange':false,
					
					'searching' :false,
					'language' : {
						'emptyTable' : '没有数据',
						'loadingRecords' : '加载中...',
						'processing' : '查询中...',
						'search' : '<i class="fa fa-search" style="position:absolute; margin:30px 10px; color:#4f9cde;"></i>',
						'lengthMenu' : '每页 _MENU_ 条',
						'zeroRecords' : '没有数据',
						'paginate' : {
							'first' : '首页',
							'last' : '末页',
							'next' : '下页',
							'previous' : '上页'
						},
						'info' : "第 _PAGE_ 页 / 总 _PAGES_ 页，共 _TOTAL_ 条数据",
						'infoEmpty' : '没有数据',
						'infoFiltered' : '(过滤总数 _MAX_ 条)'
					}
			});
			Valicate();
		});
		function Valicate(){
			if($("#inp").val() == '${areaname}'){
				$("#${areaname}").attr("style","background-color:#FE8463");
			}
		}
	</script>
</body>
</html>
