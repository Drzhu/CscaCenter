package com.guide.mapper;

import java.util.List;

import com.guide.pojo.THunit;
import com.guide.pojo.ZVAndZlpgVariable;
import com.guide.pojo.ZlpgValue;
import com.guide.pojo.ZlpgVariable;

public interface THunitMapper {
	
	List<THunit> selectByTHunitWithHospital(THunit thunit);
	/**
	 * 
	 * @author WANGZHENYUE
	 * @return 查询variable表的pcodeList
	 * @date 2016年12月21日
	 */
	List<ZlpgVariable> select_Pcode();

	/**
	 * 
	 * update_Pcode:(这里用一句话描述这个方法的作用)
	 * 
	 * @author wzy
	 * @param pcode
	 * @param pcode_value
	 * @since JDK 1.7
	 */
	void update_Pcode(ZVAndZlpgVariable zazv);

	void update_PState(ZlpgValue zv);

	/**
	 * 在zlpg_value表里插入新的医院信息
	 * 
	 * @author WANGZHENYUE
	 * @param zv
	 * @date 2016年12月23日
	 */
	void insert_hospital(ZlpgValue zv);

	int select_hospital(int hunitid);

	ZlpgValue load_value(String hunitid);

}