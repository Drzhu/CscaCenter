package com.guide.service;

import java.util.List;

import com.guide.pojo.ProHosDetail;
import com.guide.pojo.ProvinceEntity;

public interface ProvinceService {

	List<ProvinceEntity> selectAllHospital();

	List<ProvinceEntity> selectAllBingLi(String areaname, String start_time, String end_time);

	List<ProvinceEntity> selectStateAll(String begin_time, String end_time);

	List<ProvinceEntity> selectStateLevel(String level, String begin_time, String end_time);

	List<ProvinceEntity> datatable_query(String start_time, String end_time, String areaname, Integer start,
			String order_t, String order_Column);

	List<ProvinceEntity> datatable_query_all(String areaname);

	List<ProvinceEntity> selectCount(String start_time, String end_time, String areaname);

	List<ProvinceEntity> selectProvinceAll(String areaname, String start_time, String end_time);

	List<ProvinceEntity> selectProvinceLevel(String areaname, String level, String start_time, String end_time);

	List<ProvinceEntity> ConSelectPro(String areaname, String start_time, String end_time);

	List<ProvinceEntity> ConSelectProByLevel(String areaname, String string, String start_time, String end_time);

	List<ProvinceEntity> selectPro(String areaname, String start_time, String end_time);

	List<ProvinceEntity> selectProByLevel(String areaname, String string, String start_time, String end_time);

	List<ProvinceEntity> downExcelByProvince(String areaname, String start_time, String end_time);

	List<ProvinceEntity> datatable_query_local(String start_time, String end_time, String areaname);

	List<ProHosDetail> selectHosDetail();

	List<ProHosDetail> selectFuhe(String table_name, String start_time, String end_time);

	Double selectFuheState(String table_name, String start_time, String end_time);

}
