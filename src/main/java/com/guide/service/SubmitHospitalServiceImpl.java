package com.guide.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.guide.mapper.SubmitHospitalMapper;
import com.guide.pojo.SubmitHospital;
import com.guide.pojo.THunit;

@Service("submitHospitalService")
public class SubmitHospitalServiceImpl implements SubmitHospitalService {
	@Autowired
	private SubmitHospitalMapper submitHospitalMapper;
	public List<SubmitHospital> datatable_query(int start, String HName,int areaid,String order_t,String order_Column) {
		return submitHospitalMapper.datatable_query(start, HName,areaid,order_t,order_Column);
	}

	public int query_count(String str,int areaid) {
		return submitHospitalMapper.query_count(str,areaid);
	}

	public List<THunit> nosubmit_datatable_query(int start, String HName, int areaid,String order_t,String order_Column) {
		return submitHospitalMapper.nosubmit_datatable_query(start, HName,areaid,order_t,order_Column);
	}
	
	public int nosubmit_query_count(String str,int areaid) {
		return submitHospitalMapper.nosubmit_query_count(str,areaid);
	}

}
