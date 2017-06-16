package com.guide.pojo;

import java.io.Serializable;
import java.util.Date;

public class ZVAndZlpgVariable implements Serializable {
	
	  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * zlpg_value.id (主键)
     * @ibatorgenerated 2016-12-16 14:26:03
     */
    private Integer id;

	  /**
     * zlpg_variable.pcode (变量名)
     * @ibatorgenerated 2016-12-16 14:26:03
     */
    private String pcode;
    
    /**
     * pcode_value (变量值对应的值)
     * @ibatorgenerated 2016-12-21 14:26:03
     */
    private Boolean pcode_value;

    /**
     * zlpg_variable.cname (中文含义)
     * @ibatorgenerated 2016-12-16 14:26:03
     */
    private String cname;
  
    /**
     * zlpg_value.hunitid (医院id)
     * @ibatorgenerated 2016-12-16 14:26:03
     */
    private Integer hunitid;
  
    /**
     * zlpg_value.PUTime (创建时间)
     * @ibatorgenerated 2016-12-16 14:26:03
     */
    private Date pctime;
    
    /**
     * zlpg_value.PUTime (提交时间)
     * @ibatorgenerated 2016-12-16 14:26:03
     */
    private Date putime;

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getHunitid() {
		return hunitid;
	}

	public void setHunitid(Integer hunitid) {
		this.hunitid = hunitid;
	}

	public Date getPutime() {
		return putime;
	}

	public void setPutime(Date putime) {
		this.putime = putime;
	}

	public Date getPctime() {
		return pctime;
	}

	public void setPctime(Date pctime) {
		this.pctime = pctime;
	}

	public Boolean getPcode_value() {
		return pcode_value;
	}

	public void setPcode_value(Boolean pcode_value) {
		this.pcode_value = pcode_value;
	}
   
    
}