package com.prodevans.zeno.pojo;

import java.util.ArrayList;
import java.util.List;

public class ServiceRequest {
	private String name;
	private String mobile;
	private String account_id;
	private String email_id;
	private int account_no;
	private String subject;
	private String message;
	private String time_slot;
	private ArrayList<String> request;
	private ArrayList<String> complaint;
	@Override
	public String toString() {
		return "ServiceRequest [name=" + name + ", mobile=" + mobile + ", account_id=" + account_id + ", email_id="
				+ email_id + ", account_no=" + account_no + ", subject=" + subject + ", message=" + message
				+ ", time_slot=" + time_slot + ", request=" + request + ", complaint=" + complaint + "]";
	}
	public String getTime_slot() {
		return time_slot;
	}
	public void setTime_slot(String time_slot) {
		this.time_slot = time_slot;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAccount_id() {
		return account_id;
	}
	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public int getAccount_no() {
		return account_no;
	}
	public void setAccount_no(int account_no) {
		this.account_no = account_no;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public ArrayList<String> getRequest() {
		return request;
	}
	public void setRequest(ArrayList<String> request) {
		this.request = request;
	}
	public ArrayList<String> getComplaint() {
		return complaint;
	}
	public void setComplaint(ArrayList<String> complaint) {
		this.complaint = complaint;
	}
	
	public ServiceRequest(String name, String mobile, String account_id, String email_id, int account_no,
			String subject, String message, String time_slot, ArrayList<String> request, ArrayList<String> complaint) {
		super();
		this.name = name;
		this.mobile = mobile;
		this.account_id = account_id;
		this.email_id = email_id;
		this.account_no = account_no;
		this.subject = subject;
		this.message = message;
		this.time_slot = time_slot;
		this.request = request;
		this.complaint = complaint;
	}
	public ServiceRequest() {
		this.name = "";
		this.mobile = "";
		this.account_id = "";
		this.email_id = "";
		this.account_no = 0;
		this.subject = "";
		this.message = "";
		this.time_slot = "";
	}
	
}
