package com.guide.interceptors;

import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		HttpSession session = request.getSession();
		Enumeration<String> e = session.getAttributeNames();
		HashMap< String, String> map = new HashMap<String, String>();
		while(e.hasMoreElements()){
			map.put(e.nextElement(),"");
		}
		if (map.containsKey("isLogin")) {
			if (session.getAttribute("isLogin").equals(true)) {
				return true;
			}else{
				response.sendError(501, "你还没有登录呢！");
				return false;
			}
		}else{
			response.sendError(502, "这里有点问题，请访问登录页面！");
			return false;
		}
		
	}

}
