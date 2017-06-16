<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String base = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+""+request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>province</title>
<link rel="stylesheet" type="text/css" href="<%=base %>/css/bootstrap/bootstrap.min.css" />
</head>

<body>
${model_name}
	<div class="container">
		<div id="pie" style="width: 800px; height: 500px; float: center;"></div>
	</div>
	<form action="uploadimg" method="post" id = "form">
				
				<input type="submit" value=""/>
	</form>
	<script src="//cdn.bootcss.com/html2canvas/0.5.0-beta4/html2canvas.js"></script>
	<script src="<%=base %>/js/echart/echarts3.js" type="text/javascript" charset="utf-8"></script>
	<script src="<%=base %>/js/echart/province.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		var Echart_01 = echarts.init(document.getElementById("pie"));
		var legend_data = [ '短暂性脑缺血发作', '脑梗死', '脑内出血', '蛛网膜下腔出血', '其他未能分类的卒中' ];
		var data = [ {value : 7,name : '脑梗死'}, {value : 4,	name : '短暂性脑缺血发作'}, {value : 35,	name : '脑内出血'}, {value : 53,name : '蛛网膜下腔出血'}, {value : 83,	name : '其他未能分类的卒中'} ];		
		var option = pie(legend_data, data);
		Echart_01.setOption(option);

		function convertCanvasToImage(canvas) {
			var image = new Image();
			image.src = canvas.toDataURL("image/jpeg");
			return image;
		}
		setTimeout(function() {
			html2canvas(document.getElementById('pie'), {
				onrendered : function(canvas) {
					setTimeout(function() {
						var img = convertCanvasToImage(canvas);
						var input1 = document.createElement('input');
						var formName = document.getElementById('form');
						console.log(formName);
						input1.setAttribute('type', 'hidden');
						input1.setAttribute('name', 'data');
						input1.setAttribute('value', img.src);
						formName.appendChild(input1);
						formName.submit();
						var src = img.src;
					}, 2000)
				}
			});
		}, 2000);
	</script>
</body>

</html>
