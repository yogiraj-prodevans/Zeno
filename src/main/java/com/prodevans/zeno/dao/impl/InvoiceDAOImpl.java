package com.prodevans.zeno.dao.impl;

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
		Object o[]=(Object[]) rpcClient.execute(unifyHandler+".getInvoices",params);
		
		/*
		 setter code  
		 */
		
		return invoiceDetails;

	}

}
