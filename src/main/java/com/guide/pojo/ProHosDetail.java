package com.guide.pojo;

import java.io.Serializable;

public class ProHosDetail implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String AreaName;
	private int count_2015;
	private int twoLevel_2015 ;
	private int threeLevel_2015;
	private int count;
	private int twoLevel;
	private int threeLevel;
	private int noLevel;
	private double fuhe_avg;
	private double fuhe_state_avg;
	
	public double getFuhe_state_avg() {
		return fuhe_state_avg;
	}
	public void setFuhe_state_avg(double fuhe_state_avg) {
		this.fuhe_state_avg = fuhe_state_avg;
	}
	public double getFuhe_avg() {
		return fuhe_avg;
	}
	public void setFuhe_avg(double fuhe_avg) {
		this.fuhe_avg = fuhe_avg;
	}
	public int getNoLevel() {
		return noLevel;
	}
	public void setNoLevel(int noLevel) {
		this.noLevel = noLevel;
	}
	public String getAreaName() {
		return AreaName;
	}
	public void setAreaName(String areaName) {
		AreaName = areaName;
	}
	public int getCount_2015() {
		return count_2015;
	}
	public void setCount_2015(int count_2015) {
		this.count_2015 = count_2015;
	}
	public int getTwoLevel_2015() {
		return twoLevel_2015;
	}
	public void setTwoLevel_2015(int twoLevel_2015) {
		this.twoLevel_2015 = twoLevel_2015;
	}
	public int getThreeLevel_2015() {
		return threeLevel_2015;
	}
	public void setThreeLevel_2015(int threeLevel_2015) {
		this.threeLevel_2015 = threeLevel_2015;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTwoLevel() {
		return twoLevel;
	}
	public void setTwoLevel(int twoLevel) {
		this.twoLevel = twoLevel;
	}
	public int getThreeLevel() {
		return threeLevel;
	}
	public void setThreeLevel(int threeLevel) {
		this.threeLevel = threeLevel;
	}
	@Override
	public String toString() {
		return "ProHosDetail [AreaName=" + AreaName + ", count_2015=" + count_2015 + ", twoLevel_2015=" + twoLevel_2015
				+ ", threeLevel_2015=" + threeLevel_2015 + ", count=" + count + ", twoLevel=" + twoLevel
				+ ", threeLevel=" + threeLevel + ", noLevel=" + noLevel + ", fuhe_avg=" + fuhe_avg + ", fuhe_state_avg="
				+ fuhe_state_avg + "]";
	}

}
