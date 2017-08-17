
package com.prodevans.zeno.pojo;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SubscriptionDetails {
	private String ratePlan;
	private String startDate;
	private int status;
	private Date expirydt;
	private String svctype;
	private int subsno;

	/**
	 * 
	 */
	public SubscriptionDetails() {
		this.ratePlan = "N.A.";
		this.startDate = "N.A.";
		this.status = 0;
		this.expirydt = new Date();
		this.svctype = "N.A.";
		this.subsno = 0;
	}

	/**
	 * @param ratePlan
	 * @param startDate
	 * @param status
	 * @param expirydt
	 * @param svctype
	 * @param subsno
	 * @param planno
	 */
	public SubscriptionDetails(String ratePlan, String startDate, int status, Date expirydt, String svctype,
			int subsno) {
		this.ratePlan = ratePlan;
		this.startDate = startDate;
		this.status = status;
		this.expirydt = expirydt;
		this.svctype = svctype;
		this.subsno = subsno;

	}

	/**
	 * @return the ratePlan
	 */
	public String getRatePlan() {
		return ratePlan;
	}

	/**
	 * @param ratePlan
	 *            the ratePlan to set
	 */
	public void setRatePlan(String ratePlan) {
		this.ratePlan = ratePlan;
	}

	/**
	 * @return the startDate
	 */
	public String getStartDate() {
		return startDate;
	}

	/**
	 * @param startDate
	 *            the startDate to set
	 */
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	/**
	 * @return the status
	 */
	public int getStatus() {
		return status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(int status) {

		this.status = status;
	}

	/**
	 * @return the expirydt
	 */
	public String getExpirydt() {

		return DateFormat.getDateInstance(DateFormat.LONG).format(expirydt);
	}

	public String getRemainingDays() {
		long diff = (expirydt.getTime() - new Date().getTime()) / (24 * 60 * 60 * 1000);
		return diff + "";
	}

	/**
	 * @param expirydt
	 *            the expirydt to set
	 * @throws ParseException
	 */
	public void setExpirydt(String expirydt) throws ParseException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date date = formatter.parse(expirydt);
		// this.expirydt = formatter.format(date);
		// this.expirydt = DateFormat.getDateInstance(DateFormat.LONG).format(date);

		this.expirydt = date;
		// System.out.println("expiry Date : " + expirydt);
	}

	/**
	 * @return the svctype
	 */
	public String getSvctype() {
		return svctype;
	}

	/**
	 * @param svctype
	 *            the svctype to set
	 */
	public void setSvctype(String svctype) {
		this.svctype = svctype;
	}

	/**
	 * @return the subsno
	 */
	public int getSubsno() {
		return subsno;
	}

	/**
	 * @param subsno
	 *            the subsno to set
	 */
	public void setSubsno(int subsno) {
		this.subsno = subsno;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "SubscriptionDetails [ratePlan=" + ratePlan + ", startDate=" + startDate + ", status=" + status
				+ ", expirydt=" + expirydt + ", svctype=" + svctype + ", subsno=" + subsno + "]";
	}

}
