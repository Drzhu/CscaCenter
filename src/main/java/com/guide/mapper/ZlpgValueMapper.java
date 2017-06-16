package com.guide.mapper;

import java.util.List;

import com.guide.pojo.SubmitHospital;
import com.guide.pojo.THunit;
import com.guide.pojo.TXTDownload;
import com.guide.pojo.ZVAndZlpgVariable;
import com.guide.pojo.ZlpgValue;
import com.guide.pojo.ZlpgVariable;

public interface ZlpgValueMapper {
	/*TXT下载
	 * 查询已经填表的医院信息
	 * 参数：省id
	 * */
 	List<TXTDownload> submit_txt(String areaid);
 	
	/*TXT下载
	 * 查询没有填表的医院信息
	 * 参数：省id
	 * */
 	List<THunit> nosubmit_txt(String areaid);
 	/*
 	 * WANGZHENYUE
 	 * Excel下载
 	 * 查询已填表的List
 	 * 参数：省id
 	 * 2016年12月20日 09:03:40
 	 */
	List<SubmitHospital> downloadExcel(String areaid);
	/*
 	 * WANGZHENYUE
 	 * Excel下载
 	 * 查询未填表的List
 	 * 参数：省id
 	 * 2016年12月20日 09:06:20
 	 */
	List<SubmitHospital> excel_NotFilled(String areaid);

	List<ZlpgVariable> excelColList();
}
