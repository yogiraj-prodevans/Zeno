package com.prodevans.zeno.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.prodevans.zeno.dao.impl.DashboardDAOImpl;
import com.prodevans.zeno.pojo.SessionDetails;
import com.prodevans.zeno.pojo.SessionHistory;
import com.prodevans.zeno.pojo.SubscriptionDetails;
import com.prodevans.zeno.pojo.UserDetails;

@Controller
public class APIController {

	@Autowired
	private DashboardDAOImpl DashboardImpl;

	public void setDashboardImpl(DashboardDAOImpl dashboardImpl) {
		DashboardImpl = dashboardImpl;
	}

	@RequestMapping(value = "/user-session", method = RequestMethod.GET)
	@ResponseBody
	public String getSessionHistory(HttpSession session) {

		try {
			SessionDetails user = (SessionDetails) session.getAttribute("user");
			System.out.println(user.toString());
			UserDetails userdetails = DashboardImpl.getUserDetails(user.getActid());

			SubscriptionDetails details = DashboardImpl.getSubscriptionDetails(user.getActid());
			System.out.println("user subscription details : " + details.toString());

			List<SessionHistory> hs = DashboardImpl.getAllSession(details.getStartDate(), details.getExpiryDate(),
					user.getActid());
			Gson gson = new Gson();

			return getJson(hs);
			// return "{ \"cols\":[ {\"type\":\"string\"}, {\"type\":\"number\"}],
			// \"rows\":[ {\"c\":[{\"v\":\"20-01-13\"}, {\"v\":22}]},
			// {\"c\":[{\"v\":\"21-01-13\"}, {\"v\":24}]}, {\"c\":[{\"v\":\"22-01-13\"},
			// {\"v\":27}]} ]}";
		} catch (Exception ee) {
			ee.printStackTrace();
		}
		return null;
	}

	private String getJson(List<SessionHistory> hs) {
		JSONObject data = new JSONObject();

		JSONArray colomn = new JSONArray();

		JSONObject col1 = new JSONObject();
		col1.put("type", "string");
		col1.put("label", "Duration");
		colomn.put(col1);

		JSONObject col2 = new JSONObject();
		col2.put("type", "number");
		col2.put("label", "Upload");
		colomn.put(col2);

		JSONObject col3 = new JSONObject();
		col3.put("type", "number");
		col3.put("label", "Download");
		colomn.put(col3);

		JSONObject col4 = new JSONObject();
		col4.put("type", "number");
		col4.put("label", "Total Data");
		colomn.put(col4);

		data.put("cols", colomn);

		JSONArray rows = new JSONArray();

		for (SessionHistory history : hs) {
			JSONObject row = new JSONObject();

			JSONArray jarr = new JSONArray();

			JSONObject element1 = new JSONObject();
			element1.put("v", history.getDuration() + "");
			jarr.put(element1);

			JSONObject element2 = new JSONObject();
			element2.put("v", history.getBytesin());
			jarr.put(element2);

			JSONObject element3 = new JSONObject();
			element3.put("v", history.getBytesout());
			jarr.put(element3);

			JSONObject element4 = new JSONObject();
			element4.put("v", history.getTotalbytes());
			jarr.put(element4);

			row.put("c", jarr);
			rows.put(row);
		}

		data.put("rows", rows);
		return data.toString();
	}

}
