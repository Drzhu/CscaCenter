package com.guide.pojo;

import java.io.Serializable;
import java.util.Date;

public class ProvinceEntity implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String HUnitId;
	private String AreaName;
	private int AreaName_Count;
	private String A_Diag_Name;
	private int A_DIAG_Count;
	private Date PUTime;
	private String HName;
	private String Hlevel;
	private String province;
	private String City;
	private String JudgeMan;
	private String JMTel;
	private String JMMail;
	private String czlevel;
	private String LinkMail;
	private String LinkTel;
	private Date Ctime;
	private String bingli_count;
	private String kpi_name; //kpi指标名称（NIHSS等）
	private float score; //不考虑禁忌百分比
	private float con_score; //考虑禁忌百分比

	public String getHUnitId() {
		return HUnitId;
	}

	public void setHUnitId(String hUnitId) {
		HUnitId = hUnitId;
	}

	public String getJudgeMan() {
		return JudgeMan;
	}

	public void setJudgeMan(String judgeMan) {
		JudgeMan = judgeMan;
	}

	public String getKpi_name() {
		return kpi_name;
	}

	public void setKpi_name(String kpi_name) {
		this.kpi_name = kpi_name;
	}

	public float getScore() {
		return score;
	}

	public void setScore(float score) {
		this.score = score;
	}

	public float getCon_score() {
		return con_score;
	}

	public void setCon_score(float con_score) {
		this.con_score = con_score;
	}

	public String getCzlevel() {
		return czlevel;
	}

	public void setCzlevel(String czlevel) {
		this.czlevel = czlevel;
	}

	public String getLinkMail() {
		return LinkMail;
	}

	public void setLinkMail(String linkMail) {
		LinkMail = linkMail;
	}

	public String getLinkTel() {
		return LinkTel;
	}

	public void setLinkTel(String linkTel) {
		LinkTel = linkTel;
	}

	public String getJMTel() {
		return JMTel;
	}

	public void setJMTel(String jMTel) {
		JMTel = jMTel;
	}

	public String getAreaName() {
		return AreaName;
	}

	public void setAreaName(String areaName) {
		AreaName = areaName;
	}

	public int getAreaName_Count() {
		return AreaName_Count;
	}

	public void setAreaName_Count(int areaName_Count) {
		AreaName_Count = areaName_Count;
	}

	public String getA_Diag_Name() {
		return A_Diag_Name;
	}

	public void setA_Diag_Name(String a_Diag_Name) {
		A_Diag_Name = a_Diag_Name;
	}

	public int getA_DIAG_Count() {
		return A_DIAG_Count;
	}

	public void setA_DIAG_Count(int a_DIAG_Count) {
		A_DIAG_Count = a_DIAG_Count;
	}

	public Date getPUTime() {
		return PUTime;
	}

	public void setPUTime(Date pUTime) {
		PUTime = pUTime;
	}

	public String getHName() {
		return HName;
	}

	public void setHName(String hName) {
		HName = hName;
	}

	public String getHlevel() {
		return Hlevel;
	}

	public void setHlevel(String hlevel) {
		Hlevel = hlevel;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getJMMail() {
		return JMMail;
	}

	public void setJMMail(String jMMail) {
		JMMail = jMMail;
	}


	public Date getCtime() {
		return Ctime;
	}

	public void setCtime(Date ctime) {
		Ctime = ctime;
	}

	public String getBingli_count() {
		return bingli_count;
	}

	public void setBingli_count(String bingli_count) {
		this.bingli_count = bingli_count;
	}

	@Override
	public String toString() {
		return "ProvinceEntity [HUnitId=" + HUnitId + ", AreaName=" + AreaName + ", AreaName_Count=" + AreaName_Count
				+ ", A_Diag_Name=" + A_Diag_Name + ", A_DIAG_Count=" + A_DIAG_Count + ", PUTime=" + PUTime + ", HName="
				+ HName + ", Hlevel=" + Hlevel + ", province=" + province + ", City=" + City + ", JudgeMan=" + JudgeMan
				+ ", JMTel=" + JMTel + ", JMMail=" + JMMail + ", czlevel=" + czlevel + ", LinkMail=" + LinkMail
				+ ", LinkTel=" + LinkTel + ", Ctime=" + Ctime + ", bingli_count=" + bingli_count + ", kpi_name="
				+ kpi_name + ", score=" + score + ", con_score=" + con_score + "]";
	}

}
