<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@ include file="common.jsp" %>
<html>
	<head>
		<title>KPI数据反馈</title>
	</head>
	<body>
		<!-- 右侧内容 -->
		<div class="main-content">
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
					<li class="active">KPI数据反馈</li>
				</ul>
			</div>
			
			<!-- 右侧主内容 -->
			
			<!-- 搜索时间  -->
			<div class="row search-box">  
			    <form class='form-inline' method="post" onsubmit = "return check()" action=""> 
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
						<div class="panel-heading no-padding">
							<h4 class="pull-left">本省及二、三级医院KPI概况 </h4>
							<ul class="nav nav-tabs nav-tabs-custom2 pull-right" role="tablist">
							   <li role="presentation" class="active"><a href="#y_bar3_01" role="tab" data-toggle="tab">考虑禁忌症</a></li>
							   <li role="presentation"><a href="#y_bar3_02" role="tab" data-toggle="tab">不考虑禁忌症</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:500px;" id="y_bar3_01">
							  111
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:500px;" id="y_bar3_02">
							  222
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading no-padding">
							<h4 class="pull-left">本省与全国水平比较 </h4>
							<ul class="nav nav-tabs nav-tabs-custom2 pull-right" role="tablist">
							   <li role="presentation" class="active"><a href="#y_bar2_03" role="tab" data-toggle="tab">考虑禁忌症</a></li>
							   <li role="presentation"><a href="#y_bar2_04" role="tab" data-toggle="tab">不考虑禁忌症</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:500px;" id="y_bar2_03">
							  111
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:500px;" id="y_bar2_04">
							  222
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading no-padding">
							<h4 class="pull-left">本省二级医院与全国二级医院水平比较 </h4>
							<ul class="nav nav-tabs nav-tabs-custom2 pull-right" role="tablist">
							   <li role="presentation" class="active"><a href="#y_bar2_05" role="tab" data-toggle="tab">考虑禁忌症</a></li>
							   <li role="presentation"><a href="#y_bar2_06" role="tab" data-toggle="tab">不考虑禁忌症</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:500px;" id="y_bar2_05">
							  111
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:500px;" id="y_bar2_06">
							  222
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading no-padding">
							<h4 class="pull-left">本省三级医院与全国三级医院水平比较 </h4>
							<ul class="nav nav-tabs nav-tabs-custom2 pull-right" role="tablist">
							   <li role="presentation" class="active"><a href="#y_bar2_07" role="tab" data-toggle="tab">考虑禁忌症</a></li>
							   <li role="presentation"><a href="#y_bar2_08" role="tab" data-toggle="tab">不考虑禁忌症</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:500px;" id="y_bar2_07">
							  111
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:500px;" id="y_bar2_08">
							  222
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading no-padding">
							<h4 class="pull-left">本省KPI指标纵向比较 </h4>
							<ul class="nav nav-tabs nav-tabs-custom2 pull-right" role="tablist">
							   <li role="presentation" class="active"><a href="#y_bar2_09" role="tab" data-toggle="tab">考虑禁忌症</a></li>
							   <li role="presentation"><a href="#y_bar2_10" role="tab" data-toggle="tab">不考虑禁忌症</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:500px;" id="y_bar2_09">
							  111
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:500px;" id="y_bar2_10">
							  222
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading no-padding">
							<h4 class="pull-left">本省二级医院KPI指标纵向比较 </h4>
							<ul class="nav nav-tabs nav-tabs-custom2 pull-right" role="tablist">
							   <li role="presentation" class="active"><a href="#y_bar2_11" role="tab" data-toggle="tab">考虑禁忌症</a></li>
							   <li role="presentation"><a href="#y_bar2_12" role="tab" data-toggle="tab">不考虑禁忌症</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:500px;" id="y_bar2_11">
							  111
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:500px;" id="y_bar2_12">
							  222
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading no-padding">
							<h4 class="pull-left">本省三级医院本省KPI指标纵向比较 </h4>
							<ul class="nav nav-tabs nav-tabs-custom2 pull-right" role="tablist">
							   <li role="presentation" class="active"><a href="#y_bar2_13" role="tab" data-toggle="tab">考虑禁忌症</a></li>
							   <li role="presentation"><a href="#y_bar2_14" role="tab" data-toggle="tab">不考虑禁忌症</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:500px;" id="y_bar2_13">
							  111
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:500px;" id="y_bar2_14">
							  222
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading no-padding">
							<h4 class="pull-left">全国各省复合指标分布</h4>
							<ul class="nav nav-tabs nav-tabs-custom2 pull-right" role="tablist">
							   <li role="presentation" class="active"><a href="#map_15" role="tab" data-toggle="tab">考虑禁忌症</a></li>
							   <li role="presentation"><a href="#map_16" role="tab" data-toggle="tab">不考虑禁忌症</a></li>
							</ul>
						</div>
						<div class="panel-body">
							<div class="tab-content chart-box">
							  <div role="tabpanel" class="tab-pane active" style="height:450px;" id="map_15">
							  111
							  </div>
							  <div role="tabpanel" class="tab-pane" style="height:450px;" id="map_16">
							  222
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- 
1.NIHSS评分
2.rt-PA溶栓比例
3.48小时内抗栓治疗
4.吞咽功能评价
5.不能行走脑梗死患者给予深静脉血栓预防
6.康复评价
7.出院时抗栓治疗
8.出院时降压药物治疗
9.出院时他汀药物治疗
10.出院时降糖药物治疗
11.出院时房颤患者抗凝治疗 -->
	<script type="text/javascript">
		 /* 本省及二、三级医院KPI概况 bar1*/
		 //var cata = ['房颤抗凝','出院降糖','出院他汀','出院降压','出院抗栓','康复评价','深静脉血栓','吞咽功能','48h内抗栓','rt-PA','NIHSS'];
		 var cata = ['出院时房颤患者抗凝治疗','出院时降糖药物治疗','出院时他汀药物治疗','出院时降压药物治疗','出院时抗栓治疗','康复评价','不能行走脑梗死患者给予深静脉血栓预防','吞咽功能评价','48小时内抗栓治疗','rt-PA溶栓比例','NIHSS评分'];
		 var legend = ['本省','二级','三级'];
		 var data01 = [9,13,93,83,34,7,84,74,36,12,94];
		 var data02 = [19,92,9,12,88,32,6,48,36,13,43];
		 var data03 = [71,99,74,9,94,27,6,35,3,56,12];
		var Echart_01  = echarts.init(document.getElementById("y_bar3_01"));
		Echart_01.setOption(y_3_bar(['本省','二级','三级'],cata,${pro_con},${pro_con_L2},${pro_con_L3}));
		
		var Echart_02  = echarts.init(document.getElementById("y_bar3_02"));
		Echart_02.setOption(y_3_bar(['本省','二级','三级'],cata,${pro},${pro_L2},${pro_L3}));
		//Echart_02.setOption(y_3_bar(legend,cata,data01,data02,data03));
		
		var Echart_03  = echarts.init(document.getElementById("y_bar2_03"));
		Echart_03.setOption(y_2_bar(['本省','全国'],cata,${pro_con},${state_con}));
		
		var Echart_04  = echarts.init(document.getElementById("y_bar2_04"));
		Echart_04.setOption(y_2_bar(['本省','全国'],cata,${pro},${state}));
		
		var Echart_05  = echarts.init(document.getElementById("y_bar2_05"));
		Echart_05.setOption(y_2_bar(['本省二级','全国二级'],cata,${pro_con_L2},${state_con_L2}));
		
		var Echart_06  = echarts.init(document.getElementById("y_bar2_06"));
		Echart_06.setOption(y_2_bar(['本省二级','全国二级'],cata,${pro_L2},${state_L2}));
		
		var Echart_07  = echarts.init(document.getElementById("y_bar2_07"));
		Echart_07.setOption(y_2_bar(['本省三级','全国三级'],cata,${pro_con_L3},${state_con_L3}));
		
		var Echart_08  = echarts.init(document.getElementById("y_bar2_08"));
		Echart_08.setOption(y_2_bar(['本省三级','全国三级'],cata,${pro_L3},${state_L3}));
		
		var Echart_09  = echarts.init(document.getElementById("y_bar2_09"));
		Echart_09.setOption(y_2_bar(['选中时段本省','前六个月本省'],cata,${pro_con},${pro_six_con}));
		
		var Echart_10  = echarts.init(document.getElementById("y_bar2_10"));
		Echart_10.setOption(y_2_bar(['选中时段本省','前六个月本省'],cata,${pro},${pro_six}));
		
		var Echart_11  = echarts.init(document.getElementById("y_bar2_11"));
		Echart_11.setOption(y_2_bar(['选中时段本省二级','前六个月本省二级'],cata,${pro_con_L2},${pro_six_con_L2}));
		
		var Echart_12  = echarts.init(document.getElementById("y_bar2_12"));
		Echart_12.setOption(y_2_bar(['选中时段本省二级','前六个月本省二级'],cata,${pro_L2},${pro_six_L2}));
		
		var Echart_13  = echarts.init(document.getElementById("y_bar2_13"));
		Echart_13.setOption(y_2_bar(['选中时段本省三级','前六个月本省三级'],cata,${pro_con_L3},${pro_six_con_L3}));
		
		var Echart_14  = echarts.init(document.getElementById("y_bar2_14"));
		Echart_14.setOption(y_2_bar(['选中时段本省三级','前六个月本省三级'],cata,${pro_L3},${pro_six_L2}));
		
		var Echart_15  = echarts.init(document.getElementById("map_15"));
		Echart_15.setOption(map_mix(eval('(' +  '${Mix_con}' + ')'),1,${Mix_State_con}));
		
		var Echart_16  = echarts.init(document.getElementById("map_16"));
		Echart_16.setOption(map_mix(eval('(' +  '${Mix}' + ')'),1,${Mix_State}));
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
			function check() {
				if ($("#datetimepicker2").val() == ""
						|| $("#datetimepicker1").val() == "") {
					alert("查询时间不能为空！");
					return false;
				} else if (new Date($("#datetimepicker2").val().replace("/-/g",
						"/")).getTime() < new Date($("#datetimepicker1").val()
						.replace("/-/g", "/")).getTime() || new Date($("#datetimepicker2").val().replace("/-/g","/")).getTime() > new Date().getTime()) {
					alert("请选择正确的结束时间！");
					return false;
				}
				getTime();
				return true;
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
			       Echart_01.resize(); 
			       Echart_02.resize(); 
					Echart_03.resize(); 
					Echart_04.resize(); 
					Echart_05.resize();
					Echart_06.resize(); 
					Echart_07.resize(); 
					Echart_08.resize();
					Echart_09.resize();
					Echart_10.resize();
					Echart_11.resize();
					Echart_12.resize();
					Echart_13.resize();
					Echart_14.resize();
					Echart_15.resize();
					Echart_16.resize();
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
					Echart_09.resize();
					Echart_10.resize();
					Echart_11.resize();
					Echart_12.resize();
					Echart_13.resize();
					Echart_14.resize();
					Echart_15.resize();
					Echart_16.resize();
			  });
		</script>	 
	<script type="text/javascript">
		$(function(){
			$("#ourself_data_feedback").addClass("active");
			$(".sub").css("display","block");
			$(".sub-menu").attr("style","display:block");
			$("#kpifeedback").addClass("sec-active");
		});
		</script>
	</body>
</html>
