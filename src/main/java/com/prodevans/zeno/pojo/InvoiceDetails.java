package com.prodevans.zeno.pojo;

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
	public Date getStartdt() {
		return startdt;
	}
	public void setStartdt(Date startdt) {
		this.startdt = startdt;
	}
	public Date getEnddt() {
		return enddt;
	}
	public void setEnddt(Date enddt) {
		this.enddt = enddt;
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
	public Date getDuedt() {
		return duedt;
	}
	public void setDuedt(Date duedt) {
		this.duedt = duedt;
	}
	public Date getInvoicedt() {
		return invoicedt;
	}
	public void setInvoicedt(Date invoicedt) {
		this.invoicedt = invoicedt;
	}
	public float getPendingamount() {
		return pendingamount;
	}
	public void setPendingamount(float pendingamount) {
		this.pendingamount = pendingamount;
	}
	
	
	
	
}
