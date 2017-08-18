package com.prodevans.zeno.dao;

import org.apache.xmlrpc.XmlRpcException;

import com.prodevans.zeno.pojo.InvoiceDetails;

public interface InvoiceDAO 
{
	public InvoiceDetails getInvoice(int actno) throws XmlRpcException;
}
