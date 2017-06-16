package com.guide.init;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

import com.alibaba.druid.support.http.StatViewServlet;

/**
 * druid数据源状态监控.
 * 
 * @author Administrator
 *
 */

@WebServlet(urlPatterns = "/zhutong/*", initParams = { @WebInitParam(name = "allow", value = "172.16.14.20,127.0.0.1"), // IP白名单
		@WebInitParam(name = "deny", value = ""), // IP黑名单
													// (存在共同时，deny优先于allow)
		@WebInitParam(name = "loginUsername", value = "guide"), // 用户名
		@WebInitParam(name = "loginPassword", value = "guide"), // 密码
		@WebInitParam(name = "resetEnable", value = "false")// 禁用HTML页面上的“Reset
															// All”功能
})
public class DruidStatViewServlet extends StatViewServlet {
	private static final long serialVersionUID = 1L;

}