<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@ include file="common.jsp" %>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<%=base %>/css/bootstrap/dataTables.bootstrap.css" />
		<title>质控医院概述</title>
	</head>
	<body>
	
		<!-- 右侧内容 -->
		<div class="main-content main-cont">
			<!-- 右侧导航提示 -->
			<div class="row path-nav">
				<ul class="breadcrumb">
					<li>
						<i class="ace-icon fa fa-home home-icon"></i>
						<a href="index">主页</a>
					</li>
					<li>
						<a href="#">本省数据反馈</a>
					</li>
					<li class="active">质控医院概况</li>
				</ul>
			</div>
			
			<!-- 右侧主内容 -->
			
			<!-- 搜索时间  -->
			<div class="row search-box">  
			    <form class='form-inline' method="post" onsubmit="return check()" action=""> 
			     <div class="form-group">
				   <label>开始时间：</label>  
		            <!--指定 date标记-->  
		            <div class='input-group date'>  
	                <input type='text' id='datetimepicker1' name = "start_time" value = "${start_time}" class="form-control" readonly/>  
	                <span class="input-group-addon">  
	                    <span class="fa fa-calendar"></span>  
	                </span>  
		            </div> 
				  </div>
				  <div class="form-group">
			        <label>结束时间：</label>  
		            <!--指定 date标记-->  
		            <div class='input-group date'>  
		                <input type='text' id='datetimepicker2' name = "end_time" value = "${end_time}" class="form-control" readonly/>
		                <input value="${areaname }" id ="areaname" name = "areaname" hidden/>   
		                <input value="${timespan}" id ="timespan" name = "timespan" hidden/> 
		                <span class="input-group-addon">  
		                    <span class="fa fa-calendar"></span>  
		                </span>  
		            </div>
				  </div>
				  <button type="submit" id = "submit" class="btn btn-primary">查询</button>  
			    </form>  
			   
			</div> 
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4>全国各省联盟医院数</h4>
						</div>
						<div class="panel-body">
							<div class="chart-box" id = "x_bar_01" onclick="window.open('show_hospital_detail');"></div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4>全国各省上报病例数</h4>
						</div>
						<div class="panel-body">
							<div class="chart-box" id = "x_bar_02" style="width:75%; float:left;"></div>
							<div class="chart-box" style="width:25%; float:left; overflow:auto;">
								<table id="example" class="table table-striped table-bordered"> 
								    <thead> 
								     <tr> 
								      <th>省份</th> 
								      <th>病例数</th> 
								     </tr> 
								    </thead>
								    <tbody>
									<c:forEach var="item" items="${map_bingli}" varStatus="status">
									<c:if test="${item.name!='南海诸岛'}">
									<tr>
									      <td>${item.name}</td> 
									      <td>${item.value }</td> 
									     </tr>
									     </c:if>
									</c:forEach>
									
								    </tbody> 
								    <!-- tbody是必须的 --> 
								   </table> 
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading no-padding">
							<ul class="nav nav-tabs nav-tabs-custom2" role="tablist">
							   <li role="presentation" class="active"><a href="#national" role="tab" data-toggle="tab">全国上报病例种类分布</a></li>
							   <li role="presentation"><a href="#nationalSecdHos" role="tab" data-toggle="tab">全国二级医院上报病例种类分布</a></li>
							   <li role="presentation"><a href="#nationalThirdHos" role="tab" data-toggle="tab">全国三级医院上报病例种类分布</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:500px;" id="national">
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:500px;" id="nationalSecdHos">
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:500px;" id="nationalThirdHos">
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<p id="maodianTab" style="position:relative; top:-200px; height:1px; overflow:hidden; margin:0;"><!-- 锚点勿删 --></p>
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4>本省质控医院名单及上报病例数</h4>
							<a id = "link_down" class="btn btn-success btn-sm pull-right" onclick="return ExcellentExport.excel(this, 'downExcel', 'Sheet-1');" style="position:relative; top:-6px;">导出数据</a>
						</div>
						<div class="panel-body">
							<table id = "downExcel" hidden>
							<tr>
								<th>医院名称</th>
								<th>所属省份</th>
								<th>所属地市</th>
								<th>医院级别</th>
								<th>卒中中心级别</th>
								<th>卒中中心主任姓名</th>
								<th>卒中中心主任电话</th>
								<th>卒中中心主任邮箱</th>
								<th>授牌时间</th>
								<th>累计上报病例数</th>
								<th>平均上报病例数/月</th>
							</tr>
							</table>
							<table id="hos_info" class="table table-bordered table-hover table-striped" style="width: 100%;">
			</table></div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading no-padding">
							<ul class="nav nav-tabs nav-tabs-custom2" role="tablist">
							   <li role="presentation" class="active"><a href="#provnice" role="tab" data-toggle="tab">本省上报病例种类分布</a></li>
							   <li role="presentation"><a href="#provniceSecdHos" role="tab" data-toggle="tab">本省二级医院上报病例种类分布</a></li>
							   <li role="presentation"><a href="#provniceThirdHos" role="tab" data-toggle="tab">本省三级医院上报病例种类分布</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:500px;" id="provnice">
							  </div>
							  <div role="tabpanel" class="tab-pane"  style="height:500px;" id="provniceSecdHos">
							  </div>
							  <div role="tabpanel" class="tab-pane"  style="height:500px;" id="provniceThirdHos">
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<a id="backTo" href="#maodianTab" class="back-to">返回<i class="fa fa-arrow-left"></i></a>
		<iframe class="iframe" width="100%" height="100%"></iframe> 
		<script src="../js/jquery.dataTables.js"></script>
		<script src="../js/excellentexport.js"></script>
		<script type="text/javascript">
		$(function(){
			var down_data = [];
			var dd = '${dataTable}'.split("*");
			for(var i=0;i<dd.length-1;i++){
				down_data.push(dd[i].split(","));
			}
			/* $("#ourself_data_feedback").addClass("active");
			$(".sub").attr("style","display:block");
			$(".sub-menu").attr("style","display:block");
			$("#hosSummary").addClass("sec-active"); */
			DownExcel();
			DataTable(down_data);
		});
		var see;
		var all_province = ["河南","河北","浙江","山东","广东","江苏","辽宁","四川","湖北","陕西","北京","山西","安徽","福建","湖南",
		                    "黑龙江","广西","重庆","吉林","云南","上海","江西","新疆","贵州","内蒙古","甘肃","天津","海南","宁夏","青海","西藏"];
		var start_date,end_time;
		 $("#datetimepicker1").datetimepicker({
			 minView: "month", //选择日期后，不会再跳转去选择时分秒 
			 language:  'zh-CN',
			 format: 'yyyy-mm-dd',
			 autoclose: true,
		 }).on("changeDate",function(ev){
			start_date = ev.date.valueOf();
		 });
		 $("#datetimepicker2").datetimepicker({
			 minView: "month", //选择日期后，不会再跳转去选择时分秒 
			 language:  'zh-CN',
			 format: 'yyyy-mm-dd',
			 autoclose: true,
		 }).on("changeDate",function(ev){
			end_date = ev.date.valueOf();
			if(end_date < start_date){
				alert("结束时间须大于开始时间！");
				$("#submit").attr("disabled",true);
			}else{
				$("#submit").attr("disabled",false);
			}
		 });
		 var start_time=$("#datetimepicker1").val();
		 var end_time=$("#datetimepicker2").val();
		function DownExcel(){
			$.ajax({
                type: "POST",
                url: "DownExcelByProvince",
                data: {
                    areaname: $("#areaname").val(),
                    start_time: start_time,
                    end_time: end_time,
                    /* start_time: $("#datetimepicker1").val(),
                    end_time: $("#datetimepicker2").val(), */
                    timespan:$("#timespan").val()
                },
                success: function (res) {
                	var data = eval('(' + res + ')').data;
					for(var i =0;i < data.length; i++){
						$("#downExcel").append("<tr><td>"+data[i].hname+"</td><td>"+data[i].areaname+"</td><td>"+data[i].city+"</td><td>"+data[i].hlevel+"</td><td>"+data[i].czlevel+"</td><td>"+data[i].jmname+"</td><td>"+data[i].jmtel+"</td><td>"+data[i].jmmail+"</td><td>"+data[i].time+"</td><td>"+data[i].bingli_count+"</td><td>"+data[i].evg+"</td></tr>");
					}
					$("#link_down").attr("download",$("#areaname").val()+"-"+$("#datetimepicker1").val()+"至"+$("#datetimepicker2").val()+".xls");
                },
                error:function(){
                	//alert("系统繁忙，请稍后再试");
                	return false;
                }
            });
		 }
		 function check(){
				if($("#datetimepicker2").val() == "" || $("#datetimepicker1").val() == ""){
					alert("查询时间不能为空！");
					return false;
				}else if(new Date($("#datetimepicker2").val().replace("/-/g","/")).getTime() < new Date($("#datetimepicker1").val().replace("/-/g","/")).getTime() || new Date($("#datetimepicker2").val().replace("/-/g","/")).getTime() > new Date().getTime()){
					alert("请选择正确的结束时间！");
					return false;
				}
				getTime();
				return true;
			 }
		 /* 全国医院排行 bar1*/
			var Echart_01  = echarts.init(document.getElementById("x_bar_01"));
			Echart_01.setOption(x_bar([ '医院数' ],deal('${x_catalog}'.split(",")),${y_data},'${areaname}'));
			/* 全国上报病例数排行 bar1*/
			//var y_data_bingli_list = ${y_data_bingli};
			var Echart_02  = echarts.init(document.getElementById("x_bar_02"));
			//Echart_02.setOption(x_bar([ '病例数' ],deal('${x_catalog_bingli}'.split(",")),y_data_bingli_list,'${areaname}'));
			Echart_02.setOption(map_bingli(eval('(' +  '${map_bingli}' + ')'),eval('(' +  '${map_bingli}' + ')')[0].value));
			/* 全国上报数据疾病种类概况 pie*/
			var pie_state_all = [];
			<c:forEach var="item" items="${pie_state_json}" varStatus="status">
			pie_state_all.push('${item.name}');
			</c:forEach>
			var Echart_03  = echarts.init(document.getElementById("national"));
			Echart_03.setOption(pie(pie_state_all, ${pie_state_json}));
			
			/* 全国上报数据疾病种二级类概况 pie*/
			var pie_state_two = [];
			<c:forEach var="item" items="${pie_state_two_json}" varStatus="status">
			pie_state_two.push('${item.name}');
			</c:forEach>
			var Echart_04  = echarts.init(document.getElementById("nationalSecdHos"));
			Echart_04.setOption(pie(pie_state_two, ${pie_state_two_json}));
			
			/* 全国上报数据疾病种三级类概况 pie*/
			var pie_state_three = [];
			<c:forEach var="item" items="${pie_state_three_json}" varStatus="status">
			pie_state_three.push('${item.name}');
			</c:forEach>
			var Echart_05  = echarts.init(document.getElementById("nationalThirdHos"));
			Echart_05.setOption(pie(pie_state_three, ${pie_state_three_json}));
			
			/* 本省上报数据疾病种类概况 pie*/
			var pie_province_all = [];
			<c:forEach var="item" items="${pie_province_json}" varStatus="status">
			pie_province_all.push('${item.name}');
			</c:forEach>
			var Echart_06  = echarts.init(document.getElementById("provnice"));
			Echart_06.setOption(pie(pie_province_all, ${pie_province_json}));
			
			/* 本省上报数据疾病种二级类概况 pie*/
			var pie_province_two = [];
			<c:forEach var="item" items="${pie_province_two_json}" varStatus="status">
			pie_province_two.push('${item.name}');
			</c:forEach>
			var Echart_07  = echarts.init(document.getElementById("provniceSecdHos"));
			Echart_07.setOption(pie(pie_province_two, ${pie_province_two_json}));
			
			/* 本省上报数据疾病种三级类概况 pie*/
			var pie_province_three = [];
			<c:forEach var="item" items="${pie_province_three_json}" varStatus="status">
			pie_province_three.push('${item.name}');
			</c:forEach>
			var Echart_08  = echarts.init(document.getElementById("provniceThirdHos"));
			Echart_08.setOption(pie(pie_province_three, ${pie_province_three_json}));
			function deal(x_catalog){
				var new_list = x_catalog;
				for (var i = 0; i < all_province.length; i++) {
					if($.inArray(all_province[i],x_catalog) == -1){
						new_list.push(all_province[i]);
						y_data_bingli_list.push(0);
					}
				}
				var list = [];
				for (var i = 0; i < new_list.length; i++) {
					var s = "";
					for(var j = 0; j < new_list[i].length; j++){
						s += new_list[i][j]+"\r\n";
					}
					list.push(s);
				}
				return list;
			}
			
			  function getTime() {
	                //计算出相差天数  
	                var date01 = $("#datetimepicker1").val();
	                var date02 = $("#datetimepicker2").val();
	                var date03 = new Date(date02).getTime() - new Date(date01).getTime(); //时间差的毫秒数  
	                var days11 = Math.floor(date03 / (24 * 3600 * 1000))
	                $("#timespan").val(days11);
	            }
			  $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {//解决选项卡只显示第一个图标问题
			       // 获取已激活的标签页的名称
					Echart_03.resize(); 
					Echart_04.resize(); 
					Echart_05.resize();
					Echart_06.resize(); 
					Echart_07.resize(); 
					Echart_08.resize();
		       });
			   $(window).resize(function(){//窗口缩放echart跟着变化
					Echart_01.resize(); 
					Echart_02.resize(); 
				 	Echart_03.resize(); 
					Echart_04.resize(); 
					Echart_05.resize();
					Echart_06.resize(); 
					Echart_07.resize(); 
					Echart_08.resize();
			  });
			   
			  $(document).on("click","a[name='area']",function() {//点击表格每行跳转到对应的kpi 
				/*  $("button[name='area']").on("click",function(){ */
					var hunitId= $(this).attr("id"); 			
					$(".main-cont").css("display","none");
					$("#backTo").css("display","block");
					$(".iframe").css("display","block");
					$(".iframe").attr("src","http://kpi.chinastroke.cn/?r=login/test&HUnitID="+hunitId+"&begin_time="+start_time+"&end_time="+end_time);
				});
			   
			   
			   $("#backTo").on("click",function(){
				  $(this).css("display","none");
				  $(".iframe").css("display","none");
				  $(".main-content").css("display","block");
			   });
			   function DataTable(dataSet){
				   $('#hos_info').DataTable(
							{
								'order': [[9, "desc"]],//表格初始化，默认第一列降序
								columnDefs:[{
								　　　　'targets' : [5,6,7,8],  //除前五列外，都默认不排序
								　　　　'orderable' : false
								}],
								'lengthChange' : false,
								'bdestroy' : true,
								'bRetrieve' : true,
								'searching' :false,
								'aoColumns' : [ {
									name:"HName",
									title : "医院名称",
									width : "9%"
								}, {
									name:"AreaName",
									title : "所属省份",
									width : "5%"
								}, {
									name:"City",
									title : "所属地市",
									width : "5%"
								}, {
									name:"HLevel",
									title : "医院级别",
									width : "5%"
								}, {
									name:"czlevel",
									title : "卒中中心级别",
									width : "8%"
								}, 	{
									name:"czlevel",
									title : "卒中中心<br/>主任姓名",
									width : "8%"
								}, {
									title : "卒中中心<br/>主任电话",
									width : "8%"
								}, {
									title : "卒中中心<br/>主任邮箱",
									width : "8%"
								}, {
									title : "授牌时间",
									width : "8%"
								}, {
									name:"Utype",
									title : "累计上报<br/>病例数",
									width : "8%"
								}, {
									name:"LinkTel",
									title : "平均上报<br/>病例数/月",
									width : "8%"
								}, ],
								"data":dataSet,
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
			   }
			   Echart_02.on('click', function(param) {
					if(param.dataIndex == see){
						window.location.href="http://www.baidu.com"
					}
	    	});
		</script>
	</body>
</html>
