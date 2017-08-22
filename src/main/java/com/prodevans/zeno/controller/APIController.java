package com.prodevans.zeno.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.prodevans.zeno.dao.impl.DashboardDAOImpl;
import com.prodevans.zeno.pojo.SessionDetails;
import com.prodevans.zeno.pojo.SessionHistory;
import com.prodevans.zeno.pojo.SubscriptionDetails;

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

			SubscriptionDetails details = DashboardImpl.getSubscriptionDetails(user.getActid());
			System.out.println("user subscription details : " + details.toString());

			List<SessionHistory> hs = DashboardImpl.getAllSession(details.getStartDate(), details.getExpiryDate(),
					user.getActid());
			hs = normalizeHistory(hs, details.getStartDate());

			System.out.println(hs.toString());

			Collections.sort(hs);
			System.out.println(hs.toString());

			System.out.println("Data progression added");
			hs = ProgressionHistory(hs);

			System.out.println(hs.toString());

			return getJson(hs);

		} catch (Exception ee) {
			ee.printStackTrace();
		}
		return null;
	}

	private List<SessionHistory> ProgressionHistory(List<SessionHistory> hs) {
		double total_bytes = 0;
		double download = 0;
		double upload = 0;
		List<SessionHistory> new_hs = new ArrayList<SessionHistory>();
		for (SessionHistory history : hs) {
			total_bytes = total_bytes + history.getTotalbytes();
			history.setTotalbytesMB((long) total_bytes);

			upload = upload + history.getBytesin();
			history.setBytesinMB((long) upload);

			download = download + history.getBytesout();
			history.setBytesoutMB((long) download);

			new_hs.add(history);

		}

		return new_hs;
	}

	private List<SessionHistory> normalizeHistory(List<SessionHistory> hs, Date StartDate) {
		Date check_date = StartDate;
		Date today = new Date();
		while (check_date.after(StartDate) && check_date.before(today)) {
			boolean res = hs.contains(check_date);
			if (res == false) {
				hs.add(new SessionHistory(check_date));
			}

			Calendar c = Calendar.getInstance();
			c.setTime(check_date);
			c.add(Calendar.DATE, 1);
			check_date = c.getTime();
		}

		return hs;
	}

	private String getJson(List<SessionHistory> hs) {
		JSONObject data = new JSONObject();

		JSONArray colomn = new JSONArray();

		JSONObject col1 = new JSONObject();
		col1.put("type", "number");
		col1.put("label", "Date");
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

		JSONObject row = new JSONObject();

		JSONArray jarr = new JSONArray();

		JSONObject element1 = new JSONObject();
		element1.put("v", 0);
		jarr.put(element1);

		JSONObject element2 = new JSONObject();
		element2.put("v", 0);
		jarr.put(element2);

		JSONObject element3 = new JSONObject();
		element3.put("v", 0);
		jarr.put(element3);

		JSONObject element4 = new JSONObject();
		element4.put("v", 0);
		jarr.put(element4);

		row.put("c", jarr);
		rows.put(row);

		int cnt = 1;
		for (SessionHistory history : hs) {

			row = new JSONObject();

			jarr = new JSONArray();

			element1 = new JSONObject();
			element1.put("v", cnt++);
			jarr.put(element1);

			element2 = new JSONObject();
			element2.put("v", history.getBytesin());
			jarr.put(element2);

			element3 = new JSONObject();
			element3.put("v", history.getBytesout());
			jarr.put(element3);

			element4 = new JSONObject();
			element4.put("v", history.getTotalbytes());
			jarr.put(element4);

			row.put("c", jarr);
			rows.put(row);
		}

		data.put("rows", rows);
		return data.toString();
	}

}
