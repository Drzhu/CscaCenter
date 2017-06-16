<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="common_simple.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/sweetalert.css" />
<link href="../css/bootstrap/toastr.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.intro
{
font-size:120%;
color:blue;
border:3px solid;
border-color: #8470FF;
}
.reintro
{
font-size:100%;
color:black;
border:3px solid;
border-color: #8470FF;
}
</style>
<title>中国卒中中心联盟数据管理平台</title>
</head>

<body style="padding: 0;" >
		<h1 class="pinggu-tit">
			<span class="btn btn-sm btn-default back-btn" onclick="history.go(-1)"><i class="fa fa-chevron-left"></i> 返回</span> 
			2017 年卒中中心建设和医疗质量现状评估表
		</h1>
		<div class="pinggu-cont">
			<!-- Nav tabs -->
			<ul class="nav nav-pills nav-stacked nav-stacked-custom" role="tablist" id="myTab">
			  <li role="presentation" class="active"><a href="#shuoming" role="tab" data-toggle="tab">评估表填写说明</a></li>
			  <li role="presentation"><a href="#jiegou" role="tab" data-toggle="tab" onclick="click_module()">医疗结构资源配置</a></li>
			  <li role="presentation"><a href="#shebei" role="tab"  data-toggle="tab">设备资源配置</a></li>
			  <li role="presentation"><a href="#renli" role="tab" data-toggle="tab">人力资源配置</a></li>
			  <li role="presentation"><a href="#zhiliao" role="tab" data-toggle="tab">治疗技术</a></li>
			  <li role="presentation"><a href="#jiance" role="tab" data-toggle="tab">监测随访技术</a></li>
			  <li role="presentation"><a href="#jiaoxue" role="tab" data-toggle="tab">教学科研</a></li>
			  <li role="presentation"><a href="#cuzhong" role="tab" data-toggle="tab">卒中中心质量管理指标</a></li>
			  <li role="presentation"><a href="#zuzhi" role="tab" data-toggle="tab">组织管理质量</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
			  <div role="tabpanel" class="tab-pane active" id="shuoming">
			  		<h3 class="text-center">2017 年卒中中心建设和医疗质量现状评估表</h3>
			  		<h4 class="text-center"><b>（2017年试用版）</b></h4>
			  		<p class="shuoming-p">
			  			为落实“国家卫生计生委办公厅关于提升急性心脑血管疾病医疗救治能力的通知”的要求，以中国卒中学会和国家卫生计生委神经内科医疗质量控制中心发布《中国卒中中心建设指南》和《缺血性卒中医疗质量管理指标》为基础，2017 年对中国卒中中心联盟所有医院进行卒中中心建设现状进行评估，为中国卒中中心联盟各医院持续医疗服务质量改进提供基线信息，推动各医疗机构加强卒中中心建设，提高医疗质量，保证医疗安全，改善医疗服务。
			  		</p>
			  		<p class="shuoming-p"><b>一、本评估表细则适用范围</b></p>
			  		<p class="shuoming-p">
			  			《2017 年卒中中心建设和医疗质量评估表》适用于已经加入和目前正在申请加入中国卒中中心联盟的所有医院。
			  		</p>
			  		<p class="shuoming-p"><b>二、评估表述方式</b></p>
			  		<p class="shuoming-p">（一）评估理论基础</p>
			  		<p class="shuoming-p">
			  			卒中中心建设和医疗质量基于经典的医疗质量“结构-过程-结局”理论，从三个方面开展评价：硬件建设，医疗服务过程指标，患者结局。
			  		</p>
			  		<p class="shuoming-p">（二）各项指标评估表述分为 A、B、C 三个级别。</p>
			  		<p class="shuoming-p">
			  			A-优秀 （符合综合卒中中心的标准） B-良好（符合卒中中心的可选标准） C-合格（符合卒中中心的必备标准）
			  		</p>
			  		<p class="shuoming-p">
			  			判定原则是要达到“B-良好”级别，必须先符合“C-合格”要求，要到“A-优秀”，必须先符合“B-良好”要求。
			  		</p>
			  		<p class="shuoming-p"><b>三、评估结果</b></p>
			  		<p class="shuoming-p">
			  		评估结果表达为对每一项指标进行评估，合格的在右侧评估表格最右侧一列“评估结果”的 选 <big><b>“是”</b>，</big>不合格选 <big><b>“否”。</b></big>
					</p>
					<p class="shuoming-p"><b>四、联系我们</b></p>
			  		<p class="shuoming-p">评估表下载详见：<a target="blank" href="http://csca.chinastroke.net/Download.aspx">http://csca.chinastroke.net/Download.aspx</a></p>
			  		<p class="shuoming-p"><b>如有问题请联系联盟数据协调员：</b></p>
		  			<table class="sm-tab">
		  				<thead>
							<tr>
								<th width="12%">姓名</th>
								<th width="15%">联系电话</th>
								<th width="20%">微信号</th>
								<th width="12%">分管地区</th>
								<th width="41%">分管省份</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan="2" valign="middle">王慧星</td>
								<td rowspan="2" valign="middle">18610700680</td>
								<td rowspan="2" valign="middle">whx619185285</td>
								<td>华东</td>
								<td>江苏、安徽、上海、浙江</td>
							</tr>
							<tr>
								<td>东北</td>
								<td>辽宁、内蒙古、吉林、黑龙江</td>
							</tr>
							<tr>
								<td rowspan="2" valign="middle">云 雪</td>
								<td rowspan="2" valign="middle">18600614623</td>
								<td rowspan="2" valign="middle">y12234556</td>
								<td>华中</td>
								<td>河南</td>
							</tr>
							<tr>
								<td>华北</td>
								<td>北京、河北、山东、山西、天津</td>
							</tr>
							<tr>
								<td rowspan="2" valign="middle">徐曼卿</td>
								<td rowspan="2" valign="middle">18513411724</td>
								<td rowspan="2" valign="middle">EF-1106M</td>
								<td>华南</td>
								<td>福建、广东、广西、贵州、海南、湖北、湖南、江西</td>
							</tr>
							<tr>
								<td>西北</td>
								<td>甘肃、宁夏、青海、陕西、四川、西藏、新疆、云南、重庆</td>
							</tr>
						</tbody>
		  			</table>
			  </div>
			  <div role="tabpanel" class="tab-pane" id="jiegou">
			  	<div class="dati-box">
			  		<fieldset>
				  		<legend>【Ｃ】</legend>
				  		<div id="SR_C_HOSPL" class="dati-control">
				  			<h4>1.医院至少二级及以上医院等级资格</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRCHOSPL" type="radio" name="SR_C_HOSPL" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_C_HOSPL" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_C_NEU" class="dati-control">
				  			<h4>2. 有独立的神经内科专业</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRCNEU" type="radio" name="SR_C_NEU" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_C_NEU" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_C_BED20" class="dati-control">
				  			<h4>3. 神经内科专业床位20张以上</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRCBED20" type="radio" name="SR_C_BED20" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_C_BED20" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_C_EM" class="dati-control">
				  			<h4>4. 有 急诊室</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRCEM" type="radio" name="SR_C_EM" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_C_EM" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_C_LAB" class="dati-control">
				  			<h4>5. 有常规检查实验室</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRCLAB" type="radio" name="SR_C_LAB" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_C_LAB" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_C_RAD" class="dati-control">
				  			<h4>6. 有放射科</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRCRAD" type="radio" name="SR_C_RAD" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_C_RAD" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_C_STROU" class="dati-control">
				  			<h4>7. 有卒中单元</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRCSTROU" type="radio" name="SR_C_STROU" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_C_STROU" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_C_STROPRE" class="dati-control">
				  			<h4>8. 有卒中预防门诊</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRCSTROPRE" type="radio" name="SR_C_STROPRE" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_C_STROPRE" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  	</fieldset>
				  	<fieldset>
				  		<legend class="b">【B】符合“Ｃ”，并</legend>
				  		<div id="SR_B_NEUD" class="dati-control">
				  			<h4>1. 有独立的神经内科科室</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRBNEUD" type="radio" name="SR_B_NEUD" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_B_NEUD" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_B_STROU7D" class="dati-control">
				  			<h4>2. 有独立的能提供24小时×7天服务的卒中单元</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRBSTROU7D" type="radio" name="SR_B_STROU7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_B_STROU7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_B_GREENC" class="dati-control">
				  			<h4>3. 设置卒中急救绿色通道</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRBGREENC" type="radio" name="SR_B_GREENC" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_B_GREENC" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_B_NICU" class="dati-control">
				  			<h4>4. 有神经重症监护室（neurological intensive care unit, NICU）</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRBNICU" type="radio" name="SR_B_NICU" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_B_NICU" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_B_NOR" class="dati-control">
				  			<h4>5. 有外科手术室</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRBNOR" type="radio" name="SR_B_NOR" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_B_NOR" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_B_NIOR" class="dati-control">
				  			<h4>6. 有神经介入手术室</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRBNIOR" type="radio" name="SR_B_NIOR" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_B_NIOR" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_B_NCI80" class="dati-control">
				  			<h4>7. 卒中病例登记和质量改进数据库（包括使用“中国卒中中心联盟”的数据录入平台），至少80%卒中患者纳入登记上报</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRBNCI80" type="radio" name="SR_B_NCI80" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_B_NCI80" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  	</fieldset>
				  	<fieldset>
				  		<legend class="b">【A】符合“B”，并</legend>
				  		<div id="SR_A_HOSP" class="dati-control">
				  			<h4>1. 医院经评审获得三级医院等级资格</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRAHOSP" type="radio" name="SR_A_HOSP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_A_HOSP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_A_BED40" class="dati-control">
				  			<h4>2. 神经内科开设床位40张以上</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRABED40" type="radio" name="SR_A_BED40" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_A_BED40" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_A_GREENC7D" class="dati-control">
				  			<h4>3. 设置24小时×7天卒中急救绿色通道</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRAGREENC7D" type="radio" name="SR_A_GREENC7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_A_GREENC7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_A_NICU7D" class="dati-control">
				  			<h4>4. 有能提供24小时×7天服务的NICU</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRANICU7D" type="radio" name="SR_A_NICU7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_A_NICU7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_A_NIOR7D" class="dati-control">
				  			<h4>5. 有能提供 24 小时*7 天服务的神经介入手术室。</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRANIOR7D" type="radio" name="SR_A_NIOR7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_A_NIOR7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_A_NOR7D" class="dati-control">
				  			<h4>6. 有能提供 24 小时*7 天服务的外科手术室。</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRANOR7D" type="radio" name="SR_A_NOR7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_A_NOR7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SR_A_NCI90" class="dati-control">
				  			<h4>7. 卒中病例登记和质量改进数据库（包括使用“中国卒中中心联盟”的数据录入平台），至少 90%脑血管病患者纳入登记</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SRANCI90" type="radio" name="SR_A_NCI90" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SR_A_NCI90" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  	</fieldset>
				  	<div>
				  	<input style="margin-left: 40%;width: 130px" class="btn btn-success"   value="下一页" onclick="nextPage(this)"  readonly="readonly"/>
				  	</div>
			  	</div>
			  	 	
			  </div>
			 
			  <div role="tabpanel" class="tab-pane" id="shebei">
			  	<div class="dati-box">
			  		<fieldset>
				  		<legend>【Ｃ】</legend>
				  		<div id="ER_C_CT" class="dati-control">
				  			<h4>1. 有能提供24小时×7天检查的计算机断层扫描（computed tomography,CT）（推荐≥64排）</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCCT" type="radio" name="ER_C_CT" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_CT" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_C_CT_PIROR" class="dati-control">
				  			<h4>2. 卒中患者优先的CT扫描</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCCTPIROR" type="radio" name="ER_C_CT_PIROR" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_CT_PIROR" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_C_CT_45R" class="dati-control">
				  			<h4>3. 拟静脉溶栓患者，能够在到院后25分钟内开始头颅CT平扫检查，并且45分钟内获得检查结果</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCCT45R" type="radio" name="ER_C_CT_45R" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_CT_45R" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_C_CT_LB7D" class="dati-control">
				  			<h4>4. 血常规、生化、凝血相能提供24小时×7天检查</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCCTLB7D" type="radio" name="ER_C_CT_LB7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_CT_LB7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_C_CT_LB45R" class="dati-control">
				  			<h4>5. 拟静脉溶栓患者，实验室检查（血常规、血生化及凝血谱）能够在到院后45分钟内显示结果</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCCTLB45R" type="radio" name="ER_C_CT_LB45R" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_CT_LB45R" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_C_ECG7D" class="dati-control">
				  			<h4>6. 有能提供24小时×7天检查的心电图（electrocardiogram, ECG）机</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCECG7D" type="radio" name="ER_C_ECG7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_ECG7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_C_CT_X7D" class="dati-control">
				  			<h4>7. 有能提供24小时×7天检查的X线机</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCCTX7D" type="radio" name="ER_C_CT_X7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_CT_X7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_C_UECG" class="dati-control">
				  			<h4>8. 有超声心动图</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCUECG" type="radio" name="ER_C_UECG" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_UECG" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_C_CEDOP" class="dati-control">
				  			<h4>9. 有颈部血管的超声设备</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCCEDOP" type="radio" name="ER_C_CEDOP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_CEDOP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_C_TDOP" class="dati-control">
				  			<h4>10. 有经颅多普勒检查仪</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERCTDOP" type="radio" name="ER_C_TDOP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_C_TDOP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  	</fieldset>
				  	<fieldset>
				  		<legend>【B】符合“Ｃ”，并</legend>
				  		<div id="ER_B_TEECG" class="dati-control">
				  			<h4>1. 有经食道超声心动图检查仪</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERBTEECG" type="radio" name="ER_B_TEECG" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_B_TEECG" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_B_CTA" class="dati-control">
				  			<h4>2. 有CT血管造影（CT angiography，CTA）和CT脑灌注成像（CT perfusion，CTP）检查设备</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERBCTA" type="radio" name="ER_B_CTA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_B_CTA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_B_MRI" class="dati-control">
				  			<h4>3. 有头颅MRI扫描设备，包括T1、T2、弥散加权序列（diffusion weighted imaging, DWI）和磁共振血管造影序列（magnetic resonance angiography,
								MRA）和磁共振梯度回波（gradient recalled echo, GRE）T2*成像、磁敏
								感加权成像（susceptibility weighted imaging, SWI）、磁共振成像液体衰
								减反转恢复序列（fluid attenuated inversion recovery, FLAIR）、及灌注加
								权成像（perfusion weighted imaging, PWI）、磁共振静脉造影（magnetic
								resonance venography，MRV）及增强扫描</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERBMRI" type="radio" name="ER_B_MRI" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_B_MRI" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_B_DSA" class="dati-control">
				  			<h4>4. 有脑血管数字减影血管成像（digital subtraction angiography, DSA）检查设备</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERBDSA" type="radio" name="ER_B_DSA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_B_DSA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  	</fieldset>	
				  	<fieldset>
				  		<legend>【A】符合“B”，并</legend>
				  		<div id="ER_A_CTA7D" class="dati-control">
				  			<h4>1. 能提供24小时×7天CTA和CTP检查</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERACTA7D" type="radio" name="ER_A_CTA7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_A_CTA7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_A_MRI7D" class="dati-control">
				  			<h4>2. 能提供24小时×7天头颅MRI扫描，包括T1、T2、DWI、MRA、GRE T2*成像、SWI、FLAIR及PWI</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERAMRI7D" type="radio" name="ER_A_MRI7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_A_MRI7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_A_DSA7D" class="dati-control">
				  			<h4>3. 能提供24小时×7天脑血管病DSA检查</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERADSA7D" type="radio" name="ER_A_DSA7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_A_DSA7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_A_SPECT7D" class="dati-control">
				  			<h4>4. 氙气CT(Xe-CT)/单光子发射计算机断层成像术（single -photonemission computed tomography，SPECT）</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERASPECT7D" type="radio" name="ER_A_SPECT7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_A_SPECT7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="ER_A_PCTA7D" class="dati-control">
				  			<h4>5. 正电子发射断层成像术（positron emission tomography，PET）扫描</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="ERAPCTA7D" type="radio" name="ER_A_PCTA7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="ER_A_PCTA7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  	</fieldset>
				  		<div>
				  	<input style="margin-left: 40%;width: 130px" class="btn btn-success"   value="下一页" onclick="nextPage(this)" readonly="readonly"/>
				  	</div>
				  </div>
			  </div>
			  <div role="tabpanel" class="tab-pane" id="renli">
			  <div class="dati-box">
			  	<fieldset>
				  		<legend>【Ｃ】</legend>
				  		<div id="HR_C_SG" class="dati-control">
				  			<h4>1. 有卒中小组，且卒中小组成员要具有以下资质：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSG" type="radio" name="HR_C_SG" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SG" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SG_a" class="dati-control second">
				  			<h4>①由受过卒中专业培训的主治（或以上）医师组成。</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSGa" type="radio" name="HR_C_SG_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SG_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SG_b" class="dati-control second">
				  			<h4>②至少获得连续1年的卒中诊疗培训。</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSGb" type="radio" name=HR_C_SG_b value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SG_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SG_c" class="dati-control second">
				  			<h4>③独立工作前，必须在中心内接受实践培训。</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSGc" type="radio" name="HR_C_SG_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SG_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SG_d" class="dati-control second">
				  			<h4>④接到急诊电话后15分钟内对疑似卒中患者进行评估。</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSGd" type="radio" name="HR_C_SG_d" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SG_d" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SCD" class="dati-control">
				  			<h4> 2. 有卒中中心主任，且具有以下资质：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSCD" type="radio" name="HR_C_SCD" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SCD" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SCD_a" class="dati-control second">
				  			<h4>①神经内科或神经外科专业副主任医师及以上</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSCDa" type="radio" name="HR_C_SCD_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SCD_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SCD_b" class="dati-control second">
				  			<h4>②经高级卒中中心培训6个月以上，完成血管神经病学培训或血管神经外科培训，或者具有同等经历者</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSCDb" type="radio" name="HR_C_SCD_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SCD_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SCD_c" class="dati-control second">
				  			<h4>③每年参加一次全国性的脑血管病相关医学继续教育项目，不限定地点</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSCDc" type="radio" name="HR_C_SCD_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SCD_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SCD_d" class="dati-control second">
				  			<h4>④每年诊断和治疗的脑血管疾病患者≥100例</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSCDd" type="radio" name="HR_C_SCD_d" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SCD_d" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_EP" class="dati-control">
				  			<h4>3. 有急诊科医师，且具有以下资质：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCEP" type="radio" name="HR_C_EP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_EP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_EP_a" class="dati-control second">
				  			<h4>①至少接受过一次卒中中心的卒中急救培训</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCEPa" type="radio" name="HR_C_EP_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_EP_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_EP_b" class="dati-control second">
				  			<h4>②每年应与院前急救系统人员至少会晤2次，评审急性卒中救治情况</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCEPb" type="radio" name="HR_C_EP_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_EP_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_EP_c" class="dati-control second">
				  			<h4>③每年参加≥2次有关急诊医疗服务的继续教育</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCEPc" type="radio" name="HR_C_EP_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_EP_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_NP" class="dati-control">
				  			<h4>4. 有神经内科专科医师，且：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCNP" type="radio" name="HR_C_NP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_NP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_NP_a" class="dati-control second">
				  			<h4>①至少有1名神经内科专科医师为脑血管病专家</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCNPa" type="radio" name="HR_C_NP_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_NP_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_NP_b" class="dati-control second">
				  			<h4>②至少有3名为经过综合卒中中心培训并获得认证的医师</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCNPb" type="radio" name="HR_C_NP_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_NP_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_DR" class="dati-control">
				  			<h4>5. 有神经放射诊断医师，且：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCDR" type="radio" name="HR_C_DR" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_DR" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_DR_a" class="dati-control second">
				  			<h4>①经过培训，能够进行急诊神经影像诊断</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCDRa" type="radio" name="HR_C_DR_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_DR_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_DR_b" class="dati-control second">
				  			<h4>②能够在开始急诊头颅CT检查后20分钟内出具影像初步报告</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCDRb" type="radio" name="HR_C_DR_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_DR_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_RaP" class="dati-control">
				  			<h4>6. 有放射科技师，且：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCRaP" type="radio" name="HR_C_RaP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_RaP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_RaP_a" class="dati-control second">
				  			<h4>①至少配备1名以上经过培训且有上岗证的CT/MRI技师</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCRaPa" type="radio" name="HR_C_RaP_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_RaP_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_RaP_b" class="dati-control second">
				  			<h4>②围检查期的死亡率＜1%，严重并发症≤2%</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCRaPb" type="radio" name="HR_C_RaP_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_RaP_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SN" class="dati-control">
				  			<h4>7. 有卒中护理人员，且：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSN" type="radio" name="HR_C_SN" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SN" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SN_a" class="dati-control second">
				  			<h4>①接受特定的正式卒中医学培训至少3个月</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSNa" type="radio" name="HR_C_SN_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SN_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SN_b" class="dati-control second">
				  			<h4>②卒中专科护士应接受培训（卒中相关专题讲座）≥3次/年</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSNb" type="radio" name="HR_C_SN_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SN_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_SN_c" class="dati-control second">
				  			<h4>③卒中专科护士应每年参加脑血管病相关的继续教育活动≥20学时</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCSNc" type="radio" name="HR_C_SN_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_SN_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_ReP" class="dati-control">
				  			<h4>8. 有康复医师（包括吞咽障碍管理师），且：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCReP" type="radio" name="HR_C_ReP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_ReP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_ReP_a" class="dati-control second">
				  			<h4>①经过理疗康复部门认证的医师或经过培训的其他医务人员（如富有卒中康复治疗经验的神经科医师）</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCRePa" type="radio" name="HR_C_ReP_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_ReP_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_ReP_b" class="dati-control second">
				  			<h4>②持有政府颁发的上岗证，有≥1年的卒中患者治疗经验</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCRePb" type="radio" name="HR_C_ReP_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_ReP_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_ReP_c" class="dati-control second">
				  			<h4>③理疗用药、康复治疗、物理治疗、作业治疗、语言治疗必要时可在患者入院后72小时内完成</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCRePc" type="radio" name="HR_C_ReP_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_ReP_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_UP" class="dati-control">
				  			<h4>9. 有超声医师，且具有超声科从业人员工作资质并能够熟练按照卒中患者病因筛查的需要完成相关颈部、颅内及心脏的超声检查</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCUP" type="radio" name="HR_C_UP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_UP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_C_MQIS" class="dati-control">
				  			<h4>10. 有医疗质量评价和改进专员（专职/兼职），每年至少接受1次卒中数据上报和反馈培训</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRCMQIS" type="radio" name="HR_C_MQIS" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_C_MQIS" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  	</fieldset>
				  	<fieldset>
				  	<legend>【Ｂ】符合“Ｃ”，并</legend>
				  		<div id="HR_B_NSP" class="dati-control">
				  			<h4>1. 有急性卒中救治经验的神经外科医师，且：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSP" type="radio" name="HR_B_NSP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_a" class="dati-control second">
				  			<h4>①值班医师能够在接到呼叫后30分钟内到达医院；</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPa" type="radio" name="HR_B_NSP_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_b" class="dati-control second">
				  			<h4>②值班医师能够实施神经外科急救手术，处置危及生命的颅内疾病</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPb" type="radio" name="HR_B_NSP_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_c" class="dati-control second">
				  			<h4>③值班医师24小时×7天应诊，并能够得到上级神经外科医师的指导</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPc" type="radio" name="HR_B_NSP_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_d" class="dati-control second">
				  			<h4>④神经外科医师每年至少完成10例动脉瘤夹闭术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPd" type="radio" name="HR_B_NSP_d" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_d" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_e" class="dati-control second">
				  			<h4>⑤神经外科医师每年至少完成10例去骨瓣减压术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPe" type="radio" name="HR_B_NSP_e" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_e" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_f" class="dati-control second">
				  			<h4>⑥神经外科医师每年至少完成30例血肿清除术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPf" type="radio" name="HR_B_NSP_f" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_f" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_g" class="dati-control second">
				  			<h4>⑦神经外科医师（或有资质的血管外科或外科医师）每年至少完成20例颈动脉内膜剥脱术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPg" type="radio" name="HR_B_NSP_g" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_g" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_h" class="dati-control second">
				  			<h4>⑧神经外科医师能完成脑室引流术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPh" type="radio" name="HR_B_NSP_h" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_h" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_i" class="dati-control second">
				  			<h4>⑨神经外科医师能完成安置颅内压监测传感器</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPi" type="radio" name="HR_B_NSP_i" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_i" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_NSP_j" class="dati-control second">
				  			<h4>⑩神经外科医师的治疗成果应每年进行统计，并将连续3年以上的平均成果与文献报道的预后和并发症发生率进行比较</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBNSPj" type="radio" name="HR_B_NSP_j" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_NSP_j" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_Phy" class="dati-control">
				  			<h4>2. 有内科医师</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBPhy" type="radio" name="HR_B_Phy" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_Phy" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_MQIS" class="dati-control">
				  			<h4>3. 有医疗质量评价和改进专员，每年接受≥2次卒中数据上报和反馈培训</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBMQIS" type="radio" name="HR_B_MQIS" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_MQIS" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_B_SV" class="dati-control">
				  			<h4>4. 有社会志愿者</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRBSV" type="radio" name="HR_B_SV" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_B_SV" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  	</fieldset>
				  	<fieldset>
				  		<legend>【Ａ】符合“Ｂ”，并</legend>
				  		<div id="HR_A_NIP" class="dati-control">
				  			<h4>1. 有具备血管内治疗资质的神经介入医师，且 ：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANIP" type="radio" name="HR_A_NIP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NIP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_NIP_a" class="dati-control second">
				  			<h4>①值班医师能够在接到呼叫后30分钟内到达医院</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANIPa" type="radio" name="HR_A_NIP_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NIP_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_NIP_b" class="dati-control second">
				  			<h4>②神经介入医师能够实施紧急动脉溶栓</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANIPb" type="radio" name="HR_A_NIP_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NIP_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_NIP_c" class="dati-control second">
				  			<h4>③神经介入医师能够实施紧急动脉内机械取栓术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANIPc" type="radio" name="HR_A_NIP_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NIP_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_NIP_d" class="dati-control second">
				  			<h4>④神经介入医师能够24小时×7天应诊，每年至少完成10例血管内治疗</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANIPd" type="radio" name="HR_A_NIP_d" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NIP_d" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_NIP_e" class="dati-control second">
				  			<h4>⑤神经介入医师完成颅内外血管支架成形术每年至少20例</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANIPe" type="radio" name="HR_A_NIP_e" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NIP_e" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_NIP_f" class="dati-control second">
				  			<h4>⑥神经介入医师的治疗成果应每年进行统计，并将连续3年以上的平均成果与文献报道的预后和并发症发生率进行比较</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANIPf" type="radio" name="HR_A_NIP_f" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NIP_f" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_CEA" class="dati-control">
				  			<h4>2. 有能进行颈动脉内膜剥脱术的外科专家</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRACEA" type="radio" name="HR_A_CEA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_CEA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_NICUPhy" class="dati-control">
				  			<h4>3. 有 NICU 医师，且：</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANICUPhy" type="radio" name="HR_A_NICUPhy" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NICUPhy" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_NICUPhy7D" class="dati-control second">
				  			<h4>①24小时×7天应诊</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANICUPhy7D" type="radio" name="HR_A_NICUPhy7D" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NICUPhy7D" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_NICUH" class="dati-control second">
				  			<h4>②高年资NICU医师每年参加至少8h关于急性卒中诊疗的继续教育</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRANICUH" type="radio" name="HR_A_NICUH" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_NICUH" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_MP" class="dati-control">
				  			<h4>4. 有医务科人员加入卒中小组</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRAMP" type="radio" name="HR_A_MP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_MP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="HR_A_CLNRE" class="dati-control">
				  			<h4>5. 有临 床研究协调员，且具备如下资质：具备医疗背景， 可以是执业护
								师、临床专科护师优先，能协调患者诊治流程、检查活动、卒中登记、
								健康宣教和质量控制、改进等事项顺利进行</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="HRACLNRE" type="radio" name="HR_A_CLNRE" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="HR_A_CLNRE" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  	</fieldset>
					<div>
						<input style="margin-left: 40%;width: 130px" class="btn btn-success"   value="下一页" onclick="nextPage(this)" readonly="readonly"/>
					</div>
				  </div>
				  	
			  </div>
			  <div role="tabpanel" class="tab-pane" id="zhiliao">
			  	<div class="dati-box">
			  		<fieldset>
			  			<legend>【Ｃ】</legend>
			  			<div id="TT_C_EPA" class="dati-control">
				  			<h4>1.所有患者必须在急诊就诊时根据目前指南评估是否适合静脉溶栓治疗。</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCEPA" type="radio" name="TT_C_EPA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_EPA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_DT" class="dati-control">
				  			<h4>2.对于适宜静脉溶栓的急性缺血性卒中患者，急诊就诊到开始给予药物溶栓的目标时间应当<60分钟</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCDT" type="radio" name="TT_C_DT" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_DT" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_PSC" class="dati-control">
				  			<h4>3. 预防卒中并发症（至少包括以下）： </h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCPSC" type="radio" name="TT_C_PSC" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_PSC" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_PSC_a" class="dati-control second">
				  			<h4>①跌倒风险评估 </h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCPSCa" type="radio" name="TT_C_PSC_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_PSC_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_PSC_b" class="dati-control second">
				  			<h4>②吸入性肺炎 </h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCPSCb" type="radio" name="TT_C_PSC_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_PSC_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_PSC_c" class="dati-control second">
				  			<h4>③深静脉血栓 </h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCPSCc" type="radio" name="TT_C_PSC_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_PSC_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_PSC_d" class="dati-control second">
				  			<h4>④压疮 </h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCPSCd" type="radio" name="TT_C_PSC_d" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_PSC_d" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_PSC_e" class="dati-control second">
				  			<h4>⑤骨折 </h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCPSCe" type="radio" name="TT_C_PSC_e" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_PSC_e" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_PSC_f" class="dati-control second">
				  			<h4>⑥应激性溃疡和消化道出血 </h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCPSCf" type="radio" name="TT_C_PSC_f" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_PSC_f" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_EVT" class="dati-control">
				  			<h4>4. 能通过与综合卒中中心的合作网络使患者获得及时的血管内治疗（24小时×7天）。 </h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCEVT" type="radio" name="TT_C_EVT" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_EVT" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_HTR" class="dati-control">
				  			<h4>5. 能通过与综合卒中中心的合作网络使患者获得及时的去骨瓣减压术或血肿清除术（24小时×7天） </h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCHTR" type="radio" name="TT_C_HTR" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_HTR" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_C_ACO" class="dati-control">
				  			<h4>6. 能通过与综合卒中中心的合作网络使患者获得动脉瘤夹闭术或介入治疗（24小时×7天）</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTCACO" type="radio" name="TT_C_ACO" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_C_ACO" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ｂ】同“Ｃ”指标</legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ａ】符合“Ｂ”，并</legend>
			  			<div class="dati-control">
				  			<h4>1.血管内介入治疗术，包括以下：</h4>
				  		</div>
				  		<div id="TT_A_IAT_a" class="dati-control second">
				  			<h4>①动脉内溶栓（24小时×7天）</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTAIATa" type="radio" name="TT_A_IAT_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_A_IAT_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_A_IAT_b" class="dati-control second">
				  			<h4>②动脉内机械取栓术（24小时×7天）</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTAIATb" type="radio" name="TT_A_IAT_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_A_IAT_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_A_IAT_c" class="dati-control second">
				  			<h4>③颅内外血管支架成形术（24小时×7天）</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTAIATc" type="radio" name="TT_A_IAT_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_A_IAT_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_A_DPC" class="dati-control">
				  			<h4>2. 去骨瓣减压术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTADPC" type="radio" name="TT_A_DPC" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_A_DPC" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_A_HMR" class="dati-control">
				  			<h4>3. 血肿清除术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTAHMR" type="radio" name="TT_A_HMR" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_A_HMR" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_A_VD" class="dati-control">
				  			<h4>4. 脑室引流术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTAVD" type="radio" name="TT_A_VD" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_A_VD" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_A_ACO" class="dati-control">
				  			<h4>5. 动脉瘤夹闭术及动脉瘤介入治疗</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTAACO" type="radio" name="TT_A_ACO" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_A_ACO" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TT_A_CEA" class="dati-control">
				  			<h4>6. 颈动脉内膜剥脱术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TTACEA" type="radio" name="TT_A_CEA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TT_A_CEA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ｃ】</legend>
			  			<div id="NT_C_PP" class="dati-control">
				  			<h4>1. 根据指南正确安置和摆放患者体位</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="NTCPP" type="radio" name="NT_C_PP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="NT_C_PP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="NT_C_PF" class="dati-control">
				  			<h4>2. 评估受压区域压疮风险和跌倒风险</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="NTCPF" type="radio" name="NT_C_PF" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="NT_C_PF" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="NT_C_ADL" class="dati-control">
				  			<h4>3. 用日程生活能力量表（activities of daily living，ADL）监测神经功能</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="NTCADL" type="radio" name="NT_C_ADL" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="NT_C_ADL" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="NT_C_LE" class="dati-control">
				  			<h4>4. 评价液体平衡</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="NTCLE" type="radio" name="NT_C_LE" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="NT_C_LE" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="NT_C_TD" class="dati-control">
				  			<h4>5. 监测体温及评价吞咽困难</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="NTCTD" type="radio" name="NT_C_TD" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="NT_C_TD" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="NT_C_IN" class="dati-control">
				  			<h4>6. 让患者亲属以及照顾者参与培训和家庭护理中，并提供有关卒中症状、检查和治疗、康复、卒中后服务等信息</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="NTCIN" type="radio" name="NT_C_IN" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="NT_C_IN" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="NT_C_HE" class="dati-control">
				  			<h4>7. 每周集中一次针对患者和（或）家属的卒中预防、诊断、治疗和康复等健康教育</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="NTCHE" type="radio" name="NT_C_HE" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="NT_C_HE" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ｂ】同【Ｃ】指标 </legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ａ】同【Ｂ】指标 </legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ｃ】 </legend>
			  			<div id="SP_C_SCE" class="dati-control">
				  			<h4>1. 为患者提供戒烟咨询及脑血管病的健康教育</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SPCSCE" type="radio" name="SP_C_SCE" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SP_C_SCE" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SP_C_ATP" class="dati-control">
				  			<h4>2. 出院时使用阿司匹林或氯吡格雷等抗血小板药物</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SPCATP" type="radio" name="SP_C_ATP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SP_C_ATP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SP_C_AFATP" class="dati-control">
				  			<h4>3. 出院时伴有心房颤动的缺血性卒中患者口服抗凝剂（华法林或新型抗凝药）的治疗</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SPCAFATP" type="radio" name="SP_C_AFATP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SP_C_AFATP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SP_C_RFH" class="dati-control">
				  			<h4>4. 住院时/出院时对高血压危险因素采取治疗措施</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SPCRFH" type="radio" name="SP_C_RFH" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SP_C_RFH" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SP_C_HGF" class="dati-control">
				  			<h4>5. 住院时/出院时对高血糖危险因素采取治疗措施</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SPCHGF" type="radio" name="SP_C_HGF" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SP_C_HGF" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SP_C_RFD" class="dati-control">
				  			<h4>6. 住院时/出院时对血脂异常危险因素采取治疗措施</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SPCRFD" type="radio" name="SP_C_RFD" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SP_C_RFD" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="SP_C_HCRF" class="dati-control">
				  			<h4>7. 住院时/出院时对高同型半胱氨酸等危险因素采取治疗措施</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="SPCHCRF" type="radio" name="SP_C_HCRF" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="SP_C_HCRF" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset> 
			  		<fieldset>
			  			<legend>【Ｂ】同【Ｃ】指标  </legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ａ】同【Ｂ】指标 </legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ｃ】 </legend>
			  			<div id="RT_C_RTA" class="dati-control">
				  			<h4>1. 在病情稳定和卒中严重程度允许的情况下，尽早实现早期活动和康复治疗</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCRTA" type="radio" name="RT_C_RTA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_RTA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="RT_C_EA" class="dati-control">
				  			<h4>2. 早期活动和运动治疗至少1次/天，如资源允许可为2次/天</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCEA" type="radio" name="RT_C_EA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_EA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="RT_C_MJC" class="dati-control">
				  			<h4>3. 至少每周一次多学科联合查房评估</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCMJC" type="radio" name="RT_C_MJC" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_MJC" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  			<div id="RT_C_TG" class="dati-control">
				  			<h4>4. 设立治疗目标</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCTG" type="radio" name="RT_C_TG" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_TG" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="RT_C_AE" class="dati-control">
				  			<h4>5. 日常活动评价</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCAE" type="radio" name="RT_C_AE" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_AE" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="RT_C_SS" class="dati-control">
				  			<h4>6. 吞咽功能障碍筛查和处理</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCSS" type="radio" name="RT_C_SS" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_SS" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="RT_C_LT" class="dati-control">
				  			<h4>7. 语言治疗</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCLT" type="radio" name="RT_C_LT" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_LT" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="RT_C_CA" class="dati-control">
				  			<h4>8. 神经心理学和认知评估</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCCA" type="radio" name="RT_C_CA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_CA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="RT_C_RI" class="dati-control">
				  			<h4>9. 出院时康复指导及计划</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCRI" type="radio" name="RT_C_RI" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_RI" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="RT_C_RP" class="dati-control">
				  			<h4>10. 对患者及其照顾者全程提供康复及预后的信息</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="RTCRP" type="radio" name="RT_C_RP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="RT_C_RP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset> 
			  		<fieldset>
			  			<legend>【Ｂ】同【Ｃ】指标  </legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ａ】同【Ｂ】指标 </legend>
			  		</fieldset>
			  		<div>
						<input style="margin-left: 40%;width: 130px" class="btn btn-success"   value="下一页" onclick="nextPage(this)" readonly="readonly"/>
					</div>
			  	</div>
			  </div>
			  <div role="tabpanel" class="tab-pane" id="jiance">
			  	<div class="dati-box">
			  		<fieldset>
			  			<legend>【Ｃ】</legend>
			  			<div id="MF_C_VS" class="dati-control">
				  			<h4>1.床旁 24 小时生命体征监测（根据病情需要，给予心率、血压、呼吸、血氧饱和度及体温等监护）</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="MFCVS" type="radio" name="MF_C_VS" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="MF_C_VS" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="MF_C_NIHSS" class="dati-control">
				  			<h4>2.神经功能评分方法，推荐美国国立卫生研究院卒中量表（national
								institutes of health stroke scale，NIHSS），需要在入院、出院时完成评估</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="MFCNIHSS" type="radio" name="MF_C_NIHSS" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="MF_C_NIHSS" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="MF_C_FP" class="dati-control">
				  			<h4>3. 依据国家卒中二级预防指南，制订出院及随访计划</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="MFCFP" type="radio" name="MF_C_FP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="MF_C_FP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ｂ】同【Ｃ】指标 </legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ａ】符合“Ｂ”，并 </legend>
			  			<div id="MF_A_IT" class="dati-control">
				  			<h4>1. 有 颅内压监测的相关设备和技术</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="MFAIT" type="radio" name="MF_A_IT" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="MF_A_IT" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  		<div>
						<input style="margin-left: 40%;width: 130px" class="btn btn-success"   value="下一页" onclick="nextPage(this)" readonly="readonly"/>
					</div>
			  	</div>
			  </div>
			  <div role="tabpanel" class="tab-pane" id="jiaoxue">
			  	<div class="dati-box">
			  		<fieldset>
			  			<legend>【Ｃ】</legend>
			  			<div id="TSR_C_CE" class="dati-control">
				  			<h4>1. 医院卒中诊疗相关专业的医务人员应每年参加与脑血管病相关的各级医学继续教育项目，完成规定的学分要求</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TSRCCE" type="radio" name="TSR_C_CE" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TSR_C_CE" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ｂ】同【Ｃ】指标 </legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ａ】符合“Ｂ”，并 </legend>
			  			<div id="TSR_A_CR" class="dati-control">
				  			<h4>1. 承担国家级或省部级卒中临床/应用基础研究</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TSRACR" type="radio" name="TSR_A_CR" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TSR_A_CR" value="0"/>否
				  				</label>
				  			</div>
				  		</div>	
				  		<div id="TSR_A_CE" class="dati-control">
				  			<h4>2. 承担国家级或省部级卒中继续教育项目</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TSRACE" type="radio" name="TSR_A_CE" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TSR_A_CE" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TSR_A_AF" class="dati-control">
				  			<h4>3. 建立卒中研究平台，配备专职的卒中研究协调员，员工应当参与随机对照研究并申请研究经费</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TSRAAF" type="radio" name="TSR_A_AF" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TSR_A_AF" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="TSR_A_EL" class="dati-control">
				  			<h4>4. 每年举办 4 次患者和（或）家属的卒中预防、诊断、治疗和康复等健康教育讲座。</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="TSRAEL" type="radio" name="TSR_A_EL" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="TSR_A_EL" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  		<div>
						<input style="margin-left: 40%;width: 130px" class="btn btn-success"   value="下一页" onclick="nextPage(this)" readonly="readonly"/>
					</div>
			  	</div>
			  </div>
			  <div role="tabpanel" class="tab-pane" id="cuzhong">
			  	<div class="dati-box">
			  		<fieldset>
			  			<legend>【Ｃ】</legend>
			  			<div class="dati-control">
				  			<h4>1. 掌握急性缺血性卒中KPI，具体指标见附件，指标分析结果由“中国卒中中心联盟数据反馈平台”提供</h4>
				  		</div>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ｂ】同【Ｃ】指标 </legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ａ】符合“Ｂ”，并 </legend>
			  			<div id="QA_A_CP" class="dati-control">
				  			<h4>1. 建立临床路径管理</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="QAACP" type="radio" name="QA_A_CP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="QA_A_CP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>	
				  		<div id="QA_A_CP_a" class="dati-control second">
				  			<h4>①根据目前临床指南编写的中心静脉溶栓干预预案</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="QAACPa" type="radio" name="QA_A_CP_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="QA_A_CP_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="QA_A_CP_b" class="dati-control second">
				  			<h4>②建立急诊相关临床标准流程</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="QAACPb" type="radio" name="QA_A_CP_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="QA_A_CP_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="QA_A_CP_c" class="dati-control second">
				  			<h4>③基于目前指南的血管内治疗标准临床路径及启动流程</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="QAACPc" type="radio" name="QA_A_CP_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="QA_A_CP_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="QA_A_CP_d" class="dati-control second">
				  			<h4>④多学科卒中血管内治疗术前、术后管理的标准流程</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="QAACPd" type="radio" name="QA_A_CP_d" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="QA_A_CP_d" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="QA_A_CP_e" class="dati-control second">
				  			<h4>⑤多学科卒中外科干预术前、术后管理的标准流程</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="QAACPe" type="radio" name="QA_A_CP_e" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="QA_A_CP_e" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="QA_A_CP_f" class="dati-control second">
				  			<h4>⑥急诊同时应对2例或2例以上复杂脑血管病患者的标准流程</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="QAACPf" type="radio" name="QA_A_CP_f" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="QA_A_CP_f" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div class="dati-control">
				  			<h4>2. 急性缺血性卒中接受血管内治疗KPIs（具体指标见附件）</h4>
				  			
				  		</div>
				  		<div class="dati-control">
				  			<h4>3. 颅内外血管诊断和治疗KPIs（具体指标见附件）</h4>
				  			
				  		</div>
				  		<div class="dati-control">
				  			<h4>4. 蛛网膜下腔出血（subarachnoid hemorrhage，SAH）和脑实质出血（intracranial hemorrhage，ICH）KPIs（具体指标见附件）</h4>
				  			
				  		</div>
				  		<div class="dati-control">
				  			<h4>5. 神经外科手术KPIs（具体指标见附件）</h4>
				  			
				  		</div>
				  		<div id="QA_A_INR" class="dati-control">
				  			<h4>6. 华法林相关的颅内出血从到院至给予逆转国际标准化比值（international
								normalized ratio，INR）措施（比如，新鲜冷冻血浆、重组Ⅶa因子、凝血复
								合物）的平均时间</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="QAAINR" type="radio" name="QA_A_INR" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="QA_A_INR" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  		<div>
						<input style="margin-left: 40%;width: 130px" class="btn btn-success"   value="下一页" onclick="nextPage(this)" readonly="readonly"/>
					</div>
			  	</div>
			  </div>
			  <div role="tabpanel" class="tab-pane" id="zuzhi">
			  	<div class="dati-box">
			  		<fieldset>
			  			<legend>【Ｃ】</legend>
			  			<div id="OM_C_MC" class="dati-control">
				  			<h4>1. 每周一次的多学科会议，讨论并书面记录每个卒中患者的具体情况</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMCMC" type="radio" name="OM_C_MC" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_C_MC" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_C_CT" class="dati-control">
				  			<h4>2. 为护士及非医疗员工提供卒中相关的课程培训的记录</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMCCT" type="radio" name="OM_C_CT" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_C_CT" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_C_SU" class="dati-control">
				  			<h4>3. 每年接收至少 400 例卒中及短暂性脑缺血发作（transient ischemic attack，TIA）患者至急性卒中单元</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMCSU" type="radio" name="OM_C_SU" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_C_SU" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_C_PA" class="dati-control">
				  			<h4>4. 每年至少有 20 例患者在发病 4.5 小时内行静脉溶栓治疗</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMCPA" type="radio" name="OM_C_PA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_C_PA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_C_STP" class="dati-control">
				  			<h4>5. 具有明确成文的急性卒中标准化救治流程、操作手册（针对性的紧急
								救治路径，包括稳定生命体征、首诊检查、用药）和静脉 rt-PA 溶栓方
								案（包含用 rt-PA 治疗急性卒中、预防和处理 rt-PA 相关并发症的关键流
								程与措施，及对流程的持续质量改进方案）等书面文件</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMCSTP" type="radio" name="OM_C_STP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_C_STP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_C_SPG" class="dati-control">
				  			<h4>6. 依据国家卒中急性期诊疗和二级预防指南，建立标准卒中管理的书面
								流程，包括院前处理、急诊管理、急性治疗、监测、早期神经康复、出
								院及随访计划</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMCSPG" type="radio" name="OM_C_SPG" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_C_SPG" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div class="dati-control">
				  			<h4>7. 能完成如下功能：</h4>
				  			
				  		</div>
				  		<div id="OM_C_DT" class="dati-control second">
				  			<h4>①对不具备卒中治疗资质的医疗机构转诊患者进行诊断和治疗</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMCDT" type="radio" name="OM_C_DT" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_C_DT" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_C_CSC" class="dati-control second">
				  			<h4>②将需要更复杂和更多医疗资源的患者转运至综合卒中中心</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMCCSC" type="radio" name="OM_C_CSC" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_C_CSC" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ｂ】同【Ｃ】指标</legend>
			  		</fieldset>
			  		<fieldset>
			  			<legend>【Ａ】符合“Ｂ”，并</legend>
			  			<div id="OM_A_ASU" class="dati-control">
				  			<h4>1. 平均每年接收 500 例卒中及 TIA 患者至急性卒中单元</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAASU" type="radio" name="OM_A_ASU" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_ASU" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_A_PA" class="dati-control">
				  			<h4>2. 每年至少有50例患者在发病4.5 h内行静脉溶栓治疗。</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAPA" type="radio" name="OM_A_PA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_PA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_A_DP" class="dati-control">
				  			<h4>3. 通过“中国卒中中心联盟数据管理云平台”及自建数据平台，收集患
								者人口学特征、入院时卒中严重程度评估、治疗过程、出院数据和出院
								后 1 个月、3 个月、6 个月、12 个月的随访（神经功能情况、二级预防
								药物依从性、卒中复发、其他血管性事件、死亡等）。应配备卒中登记
								或类似的资料收集管理数据专员或部门</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMADP" type="radio" name="OM_A_DP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_DP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_A_PDCA" class="dati-control">
				  			<h4>4. 基于质量管理循环（plan-do-check-action，PDCA）的持续质量改进理论开展持续质量评价和改进</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAPDCA" type="radio" name="OM_A_PDCA" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_PDCA" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_A_PCP" class="dati-control">
				  			<h4>5. 参加全国性的多中心医疗质量评价和持续质量改进项目</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAPCP" type="radio" name="OM_A_PCP" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_PCP" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_A_PCP_a" class="dati-control second">
				  			<h4>①有针对特定诊疗措施的改进措施</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAPCPa" type="radio" name="OM_A_PCP_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_PCP_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_A_PCP_b" class="dati-control second">
				  			<h4>②有预期的目标以显示质量改进措施起效</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAPCPb" type="radio" name="OM_A_PCP_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_PCP_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_A_PCP_c" class="dati-control second">
				  			<h4>③规定改进措施实施的时限和再次评价的时间</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAPCPc" type="radio" name="OM_A_PCP_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_PCP_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div  class="dati-control">
				  			<h4>6.能完成如下功能：</h4>
				  			
				  		</div>
				  		<div id="OM_A_EDT_a" class="dati-control second">
				  			<h4>①派出专家对特殊卒中病例进行诊治</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAEDTa" type="radio" name="OM_A_EDT_a" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_EDT_a" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_A_EDT_b" class="dati-control second">
				  			<h4>②对卒中中心转诊患者进行及时的诊断和治疗</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAEDTb" type="radio" name="OM_A_EDT_b" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_EDT_b" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
				  		<div id="OM_A_EDT_c" class="dati-control second">
				  			<h4>③对当地医疗机构及医务人员进行专业化继续教育</h4>
				  			<div class="sel-option">
				  				<label>
				  					<input id="OMAEDTc" type="radio" name="OM_A_EDT_c" value="1"/>是
				  				</label>
				  				<label>
				  					<input type="radio" name="OM_A_EDT_c" value="0"/>否
				  				</label>
				  			</div>
				  		</div>
			  		</fieldset>
			  	</div>
			  </div>
			</div>
			
		</div>
		<script src="../js/jquery-3.1.0.min.js"></script>
		<script src="../js/bootstrap/bootstrap.min.js"></script>
		<script src="../js/toastr/toastr.js"></script>
		<script src="../js/sweetalert.min.js"></script>
	</body>
<script type="text/javascript">
toastr.options.positionClass = 'toast-bottom-right';
 </script>
<script type="text/javascript">
var modular = [];
modular.push("jiegou");
modular.push("shebei");
modular.push("renli");
modular.push("zhiliao");
modular.push("jiance");
modular.push("jiaoxue");
modular.push("cuzhong");
modular.push("zuzhi");
$(function(){  
	 $.ajax({
	        type: "GET",
	        url: "select_Pcode",
	        dataType: "json",
	        success: function(data){
	        	var zValue = data.zv;
	        	$.ajax({
	    	        type: "GET",
	    	        url: "load_value",
	    	        dataType: "json",
	    	        success: function(res){
	    	        	var zlpgValue= res.zv;
    	        		for (var v = 0; v < zValue.length; v++) {
	    	        		var pcodeValue = zValue[v].pcode;
	    	        		/* console.info(pcodeValue); */
	    	        		if(zlpgValue[pcodeValue]=="true"){
	    	        			document.getElementsByName(pcodeValue)[0].checked=true;
	    	        			 document.getElementsByName(pcodeValue)[1].disabled=true;
	    	        		}else if(zlpgValue[pcodeValue]=="false"){
	    	        			document.getElementsByName(pcodeValue)[1].checked=true;
	    	        			 document.getElementsByName(pcodeValue)[0].disabled=true;
	    	        		}
	    				}
	    	        }
	    		 });
	        }
	 }); 
	}); 
function nextPage(obj) {
   	var pa = $(obj).parent().parent().parent().attr('id');
   	for ( var m = 0; m < modular.length; m++) {
   		if (pa == modular[m]) {
   			$('#myTab a[href="#'+modular[m+1]+'"]').tab('show');
   		}
   	}  
}
</script>
</html>
