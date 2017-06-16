package com.guide.service;

import java.util.List;

import com.guide.pojo.SubmitHospital;
import com.guide.pojo.THunit;

public interface SubmitHospitalService {
	List<SubmitHospital> datatable_query(int start, String HName, int areaid,String order_t,String order_Column);

	int nosubmit_query_count(String str, int areaid);

	List<THunit> nosubmit_datatable_query(int start, String HName, int areaid,String order_t,String order_Column);

	int query_count(String str, int areaid);
}
