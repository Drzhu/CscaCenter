package com.guide.controller;

//第三方登录平台，不同项目对应不同的视图
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.guide.util.PDFUtils;

@Controller
@RequestMapping("/other")
public class OtherController {
	private Logger logger;

	public OtherController() {
		this.logger = Logger.getLogger(OtherController.class);
	}

	@RequestMapping(value = "info", method = RequestMethod.GET)
	public String info(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String role_level = (String) session.getAttribute("views");
		logger.info("");
		request.setAttribute("model_name", role_level);
		return "test";
	}

	@RequestMapping(value = "uploadimg", method = RequestMethod.POST)
	@ResponseBody
	public String upload(@RequestParam("data") String data, HttpServletRequest request, HttpServletResponse response) {
		System.err.println(data);
		PDFUtils.getImgPath(data);
		return "success";
	}
}
