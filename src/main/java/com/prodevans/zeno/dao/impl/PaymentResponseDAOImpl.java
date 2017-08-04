package com.prodevans.zeno.dao.impl;

import java.util.Vector;

import org.apache.xmlrpc.XmlRpcException;
import org.apache.xmlrpc.client.XmlRpcClient;
import org.springframework.beans.factory.annotation.Autowired;

import com.prodevans.zeno.dao.PaymentResponseDAO;
import com.prodevans.zeno.pojo.PaymentDetails;

public class PaymentResponseDAOImpl implements PaymentResponseDAO 
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
	public PaymentDetails getAllPaymentTransactionDetails(PaymentDetails paymentDetails) throws XmlRpcException 
	{
		Vector<Object> params = new Vector<>();
		params.add(paymentDetails.getActno());
		params.add(paymentDetails.getTrans_amount());
		params.add(paymentDetails.getTrans_type());
		params.add(paymentDetails.getTrans_date());
		params.add(paymentDetails.getCurrency());
		params.add(paymentDetails.getInstrumentid());
		params.add(paymentDetails.getInstrument_detail());
		params.add(paymentDetails.getTrans_descr());
		
		Object o=(Object) rpcClient.execute(unifyHandler+".addTransaction",params);
		int Transaction_id=(int)o;
		paymentDetails.setTransaction_id(Transaction_id);
		
		return paymentDetails;
	}

}
