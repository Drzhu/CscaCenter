package com.guide.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guide.mapper.ProvinceMapper;
import com.guide.pojo.ProHosDetail;
import com.guide.pojo.ProvinceEntity;

@Service
public class ProvinceServiceImpl implements ProvinceService {

	@Autowired
	private ProvinceMapper provinceMapper;

	public List<ProvinceEntity> selectAllHospital() {
		return provinceMapper.selectAllHospital();
	}

	public List<ProvinceEntity> selectAllBingLi(String areaname, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.selectAllBingLi(areaname, start_time, end_time);
	}

	public List<ProvinceEntity> selectStateAll(String begin_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.selectStateAll(begin_time, end_time);
	}

	public List<ProvinceEntity> selectStateLevel(String level, String begin_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.selectStateLevel(level, begin_time, end_time);
	}

	public List<ProvinceEntity> datatable_query(String start_time, String end_time, String areaname, Integer start,
			String order_t, String order_Column) {
		// TODO Auto-generated method stub
		return provinceMapper.datatable_query(start_time, end_time, areaname, start, order_t, order_Column);
	}

	public List<ProvinceEntity> datatable_query_all(String areaname) {
		// TODO Auto-generated method stub
		return provinceMapper.datatable_query_all(areaname);
	}

	public List<ProvinceEntity> datatable_query_local(String start_time, String end_time, String areaname) {

		return provinceMapper.datatable_query_local(start_time, end_time, areaname);
	}

	public List<ProvinceEntity> selectCount(String start_time, String end_time, String areaname) {
		// TODO Auto-generated method stub
		return provinceMapper.selectCount(start_time, end_time, areaname);
	}

	public List<ProvinceEntity> selectProvinceAll(String areaname, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.selectProvinceAll(areaname, start_time, end_time);
	}

	public List<ProvinceEntity> selectProvinceLevel(String areaname, String level, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.selectProvinceLevel(areaname, level, start_time, end_time);
	}

	public List<ProvinceEntity> ConSelectPro(String areaname, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.ConSelectPro(areaname, start_time, end_time);
	}

	public List<ProvinceEntity> ConSelectProByLevel(String areaname, String level, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.ConSelectProByLevel(areaname, level, start_time, end_time);
	}

	public List<ProvinceEntity> selectPro(String areaname, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.selectPro(areaname, start_time, end_time);
	}

	public List<ProvinceEntity> selectProByLevel(String areaname, String level, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.selectProByLevel(areaname, level, start_time, end_time);
	}

	public List<ProvinceEntity> downExcelByProvince(String areaname, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.downExcelByProvince(areaname, start_time, end_time);
	}

	@Override
	public List<ProHosDetail> selectHosDetail() {
		// TODO Auto-generated method stub
		return provinceMapper.selectHosDetail();
	}

	@Override
	public List<ProHosDetail> selectFuhe(String table_name, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.selectFuhe(table_name, start_time, end_time);
	}

	@Override
	public Double selectFuheState(String table_name, String start_time, String end_time) {
		// TODO Auto-generated method stub
		return provinceMapper.selectFuheState(table_name,start_time,end_time);
	}

}
