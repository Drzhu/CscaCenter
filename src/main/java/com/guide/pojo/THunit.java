package com.guide.pojo;

import java.io.Serializable;
import java.util.Date;

public class THunit implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * t_hunit.HUnitID (医院ID)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private Integer hunitid;

    /**
     * t_hunit.HName (医院名)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String hname;

    /**
     * t_hunit.Code (医院唯一编码)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String code;

    /**
     * t_hunit.lid (医院分级id)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private Integer lid;

    /**
     * t_hunit.Hlevel (医院分级)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String hlevel;

    /**
     * t_hunit.Owner (创建者uid)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private Integer owner;

    /**
     * t_hunit.Oname (创建者urname)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String oname;

    /**
     * t_hunit.AreaID (所属省份id)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private Integer areaid;

    /**
     * t_hunit.AreaName (所属省份)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String areaname;

    /**
     * t_hunit.City (城市)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String city;

    /**
     * t_hunit.Address (地址)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String address;

    /**
     * t_hunit.Telephone (医院电话)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String telephone;

    /**
     * t_hunit.Corporation (法人)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String corporation;

    /**
     * t_hunit.Bed (床位)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String bed;

    /**
     * t_hunit.Employee (职工人数)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String employee;

    /**
     * t_hunit.SQTime (申请时间)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String sqtime;

    /**
     * t_hunit.Runtime (卒中中心运行时间)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String runtime;

    /**
     * t_hunit.JudgeMan (评价负责人)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String judgeman;

    /**
     * t_hunit.JMJob (评价负责人职务)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String jmjob;

    /**
     * t_hunit.JMTel (联系电话)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String jmtel;

    /**
     * t_hunit.JMMail (评价负责人邮箱)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String jmmail;

    /**
     * t_hunit.LinkMan (联络员姓名)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String linkman;

    /**
     * t_hunit.LMJob (联络员职务)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String lmjob;

    /**
     * t_hunit.Ctime (创建时间)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private Date ctime;

    /**
     * t_hunit.Utype (中心类型)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String utype;

    /**
     * t_hunit.Latitude (纬度)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String latitude;

    /**
     * t_hunit.Longitude (经度)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String longitude;

    /**
     * t_hunit.FormInfo (Word申请表填写的内容)
     * @ibatorgenerated 2016-11-24 15:30:16
     */
    private String forminfo;

    public Integer getHunitid() {
        return hunitid;
    }

    public void setHunitid(Integer hunitid) {
        this.hunitid = hunitid;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    public String getHlevel() {
        return hlevel;
    }

    public void setHlevel(String hlevel) {
        this.hlevel = hlevel;
    }

    public Integer getOwner() {
        return owner;
    }

    public void setOwner(Integer owner) {
        this.owner = owner;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public String getAreaname() {
        return areaname;
    }

    public void setAreaname(String areaname) {
        this.areaname = areaname;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getCorporation() {
        return corporation;
    }

    public void setCorporation(String corporation) {
        this.corporation = corporation;
    }

    public String getBed() {
        return bed;
    }

    public void setBed(String bed) {
        this.bed = bed;
    }

    public String getEmployee() {
        return employee;
    }

    public void setEmployee(String employee) {
        this.employee = employee;
    }

    public String getSqtime() {
        return sqtime;
    }

    public void setSqtime(String sqtime) {
        this.sqtime = sqtime;
    }

    public String getRuntime() {
        return runtime;
    }

    public void setRuntime(String runtime) {
        this.runtime = runtime;
    }

    public String getJudgeman() {
        return judgeman;
    }

    public void setJudgeman(String judgeman) {
        this.judgeman = judgeman;
    }

    public String getJmjob() {
        return jmjob;
    }

    public void setJmjob(String jmjob) {
        this.jmjob = jmjob;
    }

    public String getJmtel() {
        return jmtel;
    }

    public void setJmtel(String jmtel) {
        this.jmtel = jmtel;
    }

    public String getJmmail() {
        return jmmail;
    }

    public void setJmmail(String jmmail) {
        this.jmmail = jmmail;
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }

    public String getLmjob() {
        return lmjob;
    }

    public void setLmjob(String lmjob) {
        this.lmjob = lmjob;
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public String getUtype() {
        return utype;
    }

    public void setUtype(String utype) {
        this.utype = utype;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getForminfo() {
        return forminfo;
    }

    public void setForminfo(String forminfo) {
        this.forminfo = forminfo;
    }

	@Override
	public String toString() {
		return "THunit [hunitid=" + hunitid + ", hname=" + hname + ", code=" + code + ", lid=" + lid + ", hlevel="
				+ hlevel + ", owner=" + owner + ", oname=" + oname + ", areaid=" + areaid + ", areaname=" + areaname
				+ ", city=" + city + ", address=" + address + ", telephone=" + telephone + ", corporation="
				+ corporation + ", bed=" + bed + ", employee=" + employee + ", sqtime=" + sqtime + ", runtime="
				+ runtime + ", judgeman=" + judgeman + ", jmjob=" + jmjob + ", jmtel=" + jmtel + ", jmmail=" + jmmail
				+ ", linkman=" + linkman + ", lmjob=" + lmjob + ", ctime=" + ctime + ", utype=" + utype + ", latitude="
				+ latitude + ", longitude=" + longitude + ", forminfo=" + forminfo + "]";
	}
    
}