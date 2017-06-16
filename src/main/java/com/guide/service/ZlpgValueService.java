package com.guide.service;

import java.util.List;

import com.guide.pojo.SubmitHospital;
import com.guide.pojo.THunit;
import com.guide.pojo.TXTDownload;
import com.guide.pojo.ZlpgValue;
import com.guide.pojo.ZlpgVariable;

public interface ZlpgValueService {
	
	List<TXTDownload> submit_txt(String areaid);
	
	List<THunit> nosubmit_txt(String areaid);

	List<SubmitHospital> downloadExcel(String areaid);

	List<SubmitHospital> excel_NotFilled(String areaid);

	List<ZlpgVariable> excelColList();
}
