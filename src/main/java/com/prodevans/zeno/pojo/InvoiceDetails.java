package com.prodevans.zeno.pojo;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class InvoiceDetails
{
	private int invoiceno;
	private Date startdt;
	private Date enddt;
	private float openingBalance;
	private float amount;
	private String content;
	private Date duedt;
	private Date invoicedt;
	private float pendingamount;
	
	
	public int getInvoiceno() {
		return invoiceno;
	}
	public void setInvoiceno(int invoiceno) {
		this.invoiceno = invoiceno;
	}
	public String getStartdt() {
		return DateFormat.getDateInstance(DateFormat.LONG).format(startdt);
	}
	public void setStartdt(String startdt) throws ParseException
	{
		SimpleDateFormat formatter = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");
		Date date = formatter.parse(startdt);
		this.startdt = date;
	}
	public String getEnddt() {
		return DateFormat.getDateInstance(DateFormat.LONG).format(enddt);
	}
	public void setEnddt(String enddt) throws ParseException 
	{
		SimpleDateFormat formatter = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");
		Date date = formatter.parse(enddt);
		this.enddt = date;
	}
	public float getOpeningBalance() {
		return openingBalance;
	}
	public void setOpeningBalance(float openingBalance) {
		this.openingBalance = openingBalance;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDuedt() 
	{
		return DateFormat.getDateInstance(DateFormat.LONG).format(duedt);
	}
	public void setDuedt(String duedt) throws ParseException
	{
		SimpleDateFormat formatter = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");
		Date date = formatter.parse(duedt);
		this.duedt = date;
	}
	public String getInvoicedt() {
		return DateFormat.getDateInstance(DateFormat.LONG).format(invoicedt);
	}
	public void setInvoicedt(String invoicedt) throws ParseException 
	{
		SimpleDateFormat formatter = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");
		Date date = formatter.parse(invoicedt);
		this.invoicedt = date;
	}
	public float getPendingamount() {
		return pendingamount;
	}
	public void setPendingamount(float pendingamount) {
		this.pendingamount = pendingamount;
	}
	
	public String getRemainingDays() {
		long diff = (duedt.getTime() - new Date().getTime()) / (24 * 60 * 60 * 1000);
		return diff + "";
	}
	
	
}
