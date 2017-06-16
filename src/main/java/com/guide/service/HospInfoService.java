package com.guide.service;

import java.util.List;

import com.guide.pojo.HospitalEdit;

public interface HospInfoService {

	void hospitalInfoInsert(HospitalEdit hospitalEdit);

	int existsHospital(String uname);

	HospitalEdit select_hInfo(String hunitid);

	String selectOldHosp(String hunitid);

	void hospitalInfoUpdate(HospitalEdit hospitalEdit);

	void applyEditInfo(String hunitid);

	int checkHospRepeat(HospitalEdit he);
}