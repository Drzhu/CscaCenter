package com.guide.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.guide.pojo.ZlpgValue;
import com.guide.service.THunitService;
import com.guide.util.JsonUtil;

@Controller
@RequestMapping("/3")
public class StateController {
	private Logger logger;
	@Autowired
	private THunitService tHunitService;
	
	public StateController() {
		this.logger = Logger.getLogger(StateController.class);
	}
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(HttpServletRequest request) {
		logger.info("");
		return "state/index";
	}

	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String h_main(HttpServletRequest request) {
		return "state/main";
	}

	@RequestMapping(value = "load_value", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String load_value(HttpServletRequest request, HttpSession session) {
		HashMap<String, ZlpgValue> map = new HashMap<String, ZlpgValue>();
		ZlpgValue zv = null;
		try {
			String hunitid = session.getAttribute("hunitid").toString();
			zv = tHunitService.load_value(hunitid);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		map.put("zv", zv);
		return JsonUtil.map2json(map);
	}
}
