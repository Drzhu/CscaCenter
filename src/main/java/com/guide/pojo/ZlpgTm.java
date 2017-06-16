package com.guide.pojo;

public class ZlpgTm {
    private Integer id;

    private Integer hunitid;

    private String ttname;

    private String tname;

    private String mname;

    private String mid;

    private String mivd;

    private Integer tvalue;

    private String abc;

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

    public String getTtname() {
        return ttname;
    }

    public void setTtname(String ttname) {
        this.ttname = ttname == null ? null : ttname.trim();
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid == null ? null : mid.trim();
    }

    public String getMivd() {
        return mivd;
    }

    public void setMivd(String mivd) {
        this.mivd = mivd == null ? null : mivd.trim();
    }

    public Integer getTvalue() {
        return tvalue;
    }

    public void setTvalue(Integer tvalue) {
        this.tvalue = tvalue;
    }

    public String getAbc() {
        return abc;
    }

    public void setAbc(String abc) {
        this.abc = abc == null ? null : abc.trim();
    }

	@Override
	public String toString() {
		return "ZlpgTm [id=" + id + ", hunitid=" + hunitid + ", ttname=" + ttname + ", tname=" + tname + ", mname="
				+ mname + ", mid=" + mid + ", mivd=" + mivd + ", tvalue=" + tvalue + ", abc=" + abc + "]";
	}
    
}