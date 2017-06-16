package com.guide.service;

import java.util.List;

import com.guide.pojo.ZlpgTm;

public interface ZlpgTmService {
	
	List<ZlpgTm> selectByHunitId(String thunitId);
	
	List<ZlpgTm> selectModuleByProjrct(String mivd);
}
