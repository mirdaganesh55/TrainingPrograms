package com.java.ejb;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="insurance_details")

public class Insurance implements Serializable{
	
	 @Id
	 @GeneratedValue
	 @Column(name="Insurance_id")
	 private int insuranceId;
	 
	 @Column(name="Insurance_Name")
	 private String insuranceName;
	 
	 @Column(name="Type")
	 private String type;
	 
	 @Column(name="PremiumStart")
	 private Date preminumStart; 
	 
	 @Column(name="PremiumEnd")
	 private Date preminumEnd; 
	 
	 @Column(name="MinPeriod")
	 private int minPeriod;
	 

	 @Column(name="MaxPeriod")
	 private int maxPeriod;
	 

	 @Column(name="LaunchDate")
	 private Date lauchDate;
	 
	 @Column(name="Status")
	 private String status;

	public int getInsuranceId() {
		return insuranceId;
	}

	public void setInsuranceId(int insuranceId) {
		this.insuranceId = insuranceId;
	}

	public String getInsuranceName() {
		return insuranceName;
	}

	public void setInsuranceName(String insuranceName) {
		this.insuranceName = insuranceName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getPreminumStart() {
		return preminumStart;
	}

	public void setPreminumStart(Date preminumStart) {
		this.preminumStart = preminumStart;
	}

	public Date getPreminumEnd() {
		return preminumEnd;
	}

	public void setPreminumEnd(Date preminumEnd) {
		this.preminumEnd = preminumEnd;
	}

	public int getMinPeriod() {
		return minPeriod;
	}

	public void setMinPeriod(int minPeriod) {
		this.minPeriod = minPeriod;
	}

	public int getMaxPeriod() {
		return maxPeriod;
	}

	public void setMaxPeriod(int maxPeriod) {
		this.maxPeriod = maxPeriod;
	}

	public Date getLauchDate() {
		return lauchDate;
	}

	public void setLauchDate(Date lauchDate) {
		this.lauchDate = lauchDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Insurance(int insuranceId, String insuranceName, String type, Date preminumStart, Date preminumEnd,
			int minPeriod, int maxPeriod, Date lauchDate, String status) {
		super();
		this.insuranceId = insuranceId;
		this.insuranceName = insuranceName;
		this.type = type;
		this.preminumStart = preminumStart;
		this.preminumEnd = preminumEnd;
		this.minPeriod = minPeriod;
		this.maxPeriod = maxPeriod;
		this.lauchDate = lauchDate;
		this.status = status;
	}

	public Insurance() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Insurance [insuranceId=" + insuranceId + ", insuranceName=" + insuranceName + ", type=" + type
				+ ", preminumStart=" + preminumStart + ", preminumEnd=" + preminumEnd + ", minPeriod=" + minPeriod
				+ ", maxPeriod=" + maxPeriod + ", lauchDate=" + lauchDate + ", status=" + status + "]";
	}	
}
