<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%
String base = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+""+request.getContextPath();
String name="";  
String psw="";  
String checked="";  
Cookie[] cookies=request.getCookies();  
if(cookies!=null&&cookies.length>0){   
    //遍历Cookie  
    for(int i=0;i<cookies.length;i++){  
        Cookie cookie=cookies[i];  
        //此处类似与Map有name和value两个字段,name相等才赋值,并处理编码问题   
        if("name".equals(cookie.getName())){  
            name=java.net.URLDecoder.decode(cookie.getValue(),"utf-8");  
            //将"记住我"设置为勾选   
            checked="checked";  
        }  
        if("psw".equals(cookie.getName())){  
            psw=cookie.getValue();  
        }  
    }  
} 
%>
<html style="height:100%;">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1,maxinum-scale=1,user-scalable=no">
    	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    	<meta name="renderer" content="webkit">
    	<link rel="stylesheet" type="text/css" href="<%=base %>/font-awesome-4.6.3/css/font-awesome.css" />
    	<link rel="stylesheet" type="text/css" href="<%=base %>/css/bootstrap/bootstrap.min.css" />
    	<link rel="stylesheet" type="text/css" href="<%=base %>/css/csca-css.css" />
    	<link rel = "Shortcut Icon" href="<%=base %>/img/czh.ico">
		<title>中国卒中中心联盟数据管理平台</title>
	</head>
	<body class="login-body">
		<div class="login-box">
			<p style="text-align:center; padding-top:5%;"><img src="img/czlogo1.png"/></p>
			<div class="login-logo">卒中中心管理平台</div>
			<div class="login-box-body">
					<p>用户登录</p>
					<div class="form-group">
						<i class="fa fa-user onlyicon"></i>
						<input id="username" type="text" name="username" placeholder="用户名" class="form-control" value="<%=name %>"/>
					</div>
					<div class="form-group">
						<i class="fa fa-lock onlyicon"></i>
						<input id="password" type="password" name="password" placeholder="密码" class="form-control" value="<%=psw %>"/>
					</div>
					<div class="checkbox">
						<label style="color:#fff;">
							<input id="remberInput" type="checkbox" name="remberInput" <%=checked %> />记住我
						</label>
					</div>
					<button id="loginBtn"  class="btn btn-block btn-success btn-login">登  录</button>
			</div>
		</div>
		<script src="<%=base %>/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript">
		$(function(){
			$("#loginBtn").on("click",function(){
				  var reqData = {
                          mobile: $('#username').val(),
                          password: $('#password').val()
                      };
				  
				  var mobile = $('#username').val();
                  var password = $('#password').val();
                  var rember = false;
				    $.ajax({
                        type: "POST",
                        url: "Validate_b",
                        data: {
                            username: mobile,
                            password: password,
                            rember: rember
                        },
                        success: function (res) {
                            var obj = eval('(' + res + ')');
                            for (var i in obj) {
                                if (i == "17") {
                                    window.location.href = "1/index";
                                }
                                if (i == "199") {
                                	window.location.href = "2/index";
                                }
                                if(i=="9999"){
                                	window.location.href = "3/index";
                                }
                                if(i=="other"){
                                	window.location.href = "other/info";
                                }
                                if (i == "error") {
                                    alert("用户名或密码错误");
                                }
                            }
                        },
                        contentType: "application/x-www-form-urlencoded;charset=UTF-8"
                    });
			})
		})
		</script>
	</body>
</html>
