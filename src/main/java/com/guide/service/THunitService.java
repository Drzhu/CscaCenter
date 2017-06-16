package com.guide.service;

import java.util.List;

import com.guide.pojo.HospitalEdit;
import com.guide.pojo.THunit;
import com.guide.pojo.ZVAndZlpgVariable;
import com.guide.pojo.ZlpgValue;
import com.guide.pojo.ZlpgVariable;

public interface THunitService {
	List<THunit> selectByTHunitWithHospital(THunit thunit);

	List<ZlpgVariable> select_Pcode();

	void update_Pcode(ZVAndZlpgVariable zazv);

	void update_PState(ZlpgValue zv);

	void insert_hospital(ZlpgValue zv);

	int select_hospital(int hunitid);

	ZlpgValue load_value(String hunitid);

}
