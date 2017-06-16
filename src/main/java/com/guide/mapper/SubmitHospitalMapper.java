package com.guide.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.guide.pojo.SubmitHospital;
import com.guide.pojo.THunit;

public interface SubmitHospitalMapper {

	List<SubmitHospital> datatable_query(@Param("start") int start, @Param("HName") String HName,@Param("areaid") int areaid,@Param("order_t") String order_t,@Param("order_Column") String order_Column);

	int query_count(@Param("str")  String str,@Param("areaid") int areaid);
	
	List<THunit> nosubmit_datatable_query(@Param("start") int start, @Param("HName") String HName,@Param("areaid") int areaid,@Param("order_t") String order_t,@Param("order_Column") String order_Column);
	
	int nosubmit_query_count(@Param("str")  String str,@Param("areaid") int areaid);
	
}
