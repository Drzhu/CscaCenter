package com.guide.pojo;

import java.io.Serializable;

public class ZlpgVariable implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * zlpg_variable.id (变量id)
     * @ibatorgenerated 2016-12-16 14:26:03
     */
    private Integer id;

    /**
     * zlpg_variable.pcode (变量名)
     * @ibatorgenerated 2016-12-16 14:26:03
     */
    private String pcode;

    /**
     * zlpg_variable.cname (中文含义)
     * @ibatorgenerated 2016-12-16 14:36:02
     */
    private String cname;
    
    /**
     * mvid 变量对应的模块
     * @ibatorgenerated 2016-12-22 14:16:23
     */
    private String mvid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

	public String getMvid() {
		return mvid;
	}

	public void setMvid(String mvid) {
		this.mvid = mvid;
	}
    
}