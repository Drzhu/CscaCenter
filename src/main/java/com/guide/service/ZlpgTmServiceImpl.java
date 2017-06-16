package com.guide.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guide.mapper.ZlpgTmMapper;
import com.guide.pojo.ZlpgTm;

@Service("zlpgTmService")
public class ZlpgTmServiceImpl implements ZlpgTmService {
	@Autowired
	private ZlpgTmMapper zlpgTmMapper;

	public List<ZlpgTm> selectByHunitId(String thunitId) {
		return zlpgTmMapper.selectByHunitId(thunitId);
	}

	public List<ZlpgTm> selectModuleByProjrct(String mivd) {
		return zlpgTmMapper.selectModuleByProjrct(mivd);
	}

}
