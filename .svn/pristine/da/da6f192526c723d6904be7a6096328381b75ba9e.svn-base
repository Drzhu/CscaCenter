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
		<div class="main-content">
			<div class="row">
				
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
				     <!-- 控制按钮 -->
				   <!--  <div class="carousel-btn">
				        <span class="slide-one">1</span>
				        <span class="slide-two">2</span>           
				        <span class="slide-three">3</span>
				    </div> -->
				</div>
				
			</div>
		</div>
		
		<script>
			$('.carousel').carousel({
				interval: 3000
			});//轮播图
			// 循环轮播到某个特定的帧 
			$(".slide-one").click(function(){
				$("#myCarousel").carousel(0);
			});
			$(".slide-two").click(function(){
				$("#myCarousel").carousel(1);
			});
			$(".slide-three").click(function(){
				$("#myCarousel").carousel(2);
			});
		</script>
	</body>
</html>
