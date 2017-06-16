package com.guide.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.guide.pojo.HospitalEdit;
import com.guide.pojo.THunit;
import com.guide.pojo.ZVAndZlpgVariable;
import com.guide.pojo.ZlpgValue;
import com.guide.pojo.ZlpgVariable;

public interface HospInfoMapper {

	void hospitalInfoInsert(HospitalEdit hospitalEdit);

	HospitalEdit select_hInfo(String hunitid);

	int existsHospital(String uname);

	String selectOldHosp(String hunitid);

	void hospitalInfoUpdate(@Param("hospitalEdit") HospitalEdit hospitalEdit);

	void applyEditInfo(String hunitid);

	int checkHospRepeat(HospitalEdit hospitalEdit);
  

}