package com.guide.mapper;

import java.util.List;

import com.guide.pojo.ZlpgTm;

public interface ZlpgTmMapper {

	List<ZlpgTm> selectByHunitId(String thunitId);

	/* 根据项目id查询对应的所有模块名称 */
	List<ZlpgTm> selectModuleByProjrct(String mivd);
}
