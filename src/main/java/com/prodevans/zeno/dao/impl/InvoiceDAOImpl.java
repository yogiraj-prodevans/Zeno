package com.prodevans.zeno.dao.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Vector;

import org.apache.xmlrpc.XmlRpcException;
import org.apache.xmlrpc.client.XmlRpcClient;
import org.springframework.beans.factory.annotation.Autowired;

import com.prodevans.zeno.dao.InvoiceDAO;
import com.prodevans.zeno.pojo.InvoiceDetails;

public class InvoiceDAOImpl implements InvoiceDAO 
{
	@Autowired
	private String unifyHandler;
	@Autowired
	private XmlRpcClient rpcClient;
	
	public void setUnifyHandler(String unifyHandler) {
		this.unifyHandler = unifyHandler;
	}
	public void setRpcClient(XmlRpcClient rpcClient) {
		this.rpcClient = rpcClient;
	}

	@Override
	public InvoiceDetails getInvoice(int actno) throws XmlRpcException
	{
		InvoiceDetails invoiceDetails=new InvoiceDetails();

		Vector<Object> params = new Vector<>();
		params.add(actno);
		System.out.println("Actno : "+actno);
		Object token[]=(Object[]) rpcClient.execute(unifyHandler+".getInvoices",params);
		
		for (Object ob : token) 
		{
			HashMap<String, Object> hs = (HashMap<String, Object>) ob;
			
			invoiceDetails.setAmount(Float.parseFloat(hs.get("amount").toString()));
			invoiceDetails.setContent(hs.get("content").toString());
			invoiceDetails.setInvoiceno(Integer.parseInt(hs.get("invoiceno").toString()));
			invoiceDetails.setOpeningBalance(Float.parseFloat(hs.get("openingBalance").toString()));
			invoiceDetails.setPendingamount(Float.parseFloat(hs.get("pendingamount").toString()));
			
			//invoiceDetails.setDuedt((Date) hs.get("duedt"));
			invoiceDetails.setEnddt((Date)hs.get("enddt"));
			invoiceDetails.setInvoicedt((Date)hs.get("invoicedt"));
			invoiceDetails.setStartdt((Date)hs.get("startdt"));
			
		}
		
		return invoiceDetails;

	}

}
