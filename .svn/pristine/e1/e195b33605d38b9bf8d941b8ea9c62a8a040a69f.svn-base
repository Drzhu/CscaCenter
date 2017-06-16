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
			<div class="row path-nav">
				<ol class="breadcrumb">
				  <li><i class="fa fa-home"></i> 评估表单审核</li>
				</ol>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4>评估列表</h4>
						</div>
						<div class="panel-body">
							<div class="pull-right">
								<div class="btn-group">
								  <button type="button" class="btn btn-sm btn-success dropdown-toggle" data-toggle="dropdown">
								    已填表格下载 <span class="caret"></span>
								  </button>
								  <ul class="dropdown-menu" role="menu">
								    <li><a id="excel_download" title="excel_download?areaid=${areaid}">excel下载</a></li>
								    <%-- <li><a href="txt_submit?areaid=${areaid}">txt下载</a></li> --%>
								  </ul>
								</div>
								<div class="btn-group">
								  <button type="button" class="btn btn-sm btn-warning dropdown-toggle" data-toggle="dropdown">
								    未填表格下载 <span class="caret"></span>
								  </button>
								  <ul class="dropdown-menu" role="menu">
								    <li><a id="excel_NotFilled" title="excel_NotFilled?areaid=${areaid}">excel下载</a></li>
								    <%-- <li><a href="txt_nosubmit?areaid=${areaid}">txt下载</a></li> --%>
								  </ul>
								</div>
							</div>
							<ul class="info-list">
								<li><a href="hospital?areaid=${areaid }">2017 年卒中中心建设和医疗质量现状评估表</a></li>
							</ul>	
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		$(function(){
			$("#main").addClass("active");
		});
		</script>
		<script>
		  var bForcepc = query("dv") == "pc";   

		   function fBrowserRedirect(){   

		       var sUserAgent = navigator.userAgent.toLowerCase();  

		       var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";    

		       var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";  

		       var bIsMidp = sUserAgent.match(/midp/i) == "midp";  

		       var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";  

		       var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";  

		       var bIsAndroid = sUserAgent.match(/android/i) == "android";  

		       var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";  

		       var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";   

		       if(bIsIpad){   

		           if(!bForcepc){   
		              alert("请去电脑端下载文件");
		              return false;
		           }   
		       }else if(bIsIphoneOs || bIsAndroid){   
		           if(!bForcepc){   
		                 //alert("手机");
		                 alert("请去电脑端下载文件");
		                 return false;
		           }   
		       }else if(bIsMidp||bIsUc7||bIsUc||bIsCE||bIsWM){   
		           if(!bForcepc){   
		               alert("请去电脑端下载文件");
		               return false;
		           }   
		         } else{
		              return true;
		        }
		       }
		     //获取参数值   

		      function query(name){
		      var sUrl = window.location.search.substr(1);  
		      var r = sUrl.match(new RegExp("(^|&)" + name + "=([^&]*)(&|$)"));  
		      return (r == null ? null : (r[2]));  
		      }  
		     
		     $("#excel_download").on("click",function(){
		    	 if(fBrowserRedirect()){
		    		  window.location.href="excel_download?areaid=${areaid}";
		    	 }
		     });
		     $("#excel_NotFilled").on("click",function(){
		    	 if(fBrowserRedirect()){
		    		  window.location.href="excel_NotFilled?areaid=${areaid}";
		    	 } 
		     }); 
		</script>
	</body>
</html>
