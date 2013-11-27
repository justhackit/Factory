package org.aj.http;

import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

import com.aj.http.HttpRequest;

public class PNRStatus {

	private String pnr;

	public PNRStatus(String pnr) {
		this.pnr = pnr;
		Map<String, String> form_parms = new HashMap<String, String>();
		form_parms.put("lccp_pnrno1", pnr);
		form_parms.put("submit", "Get Status");
		form_parms.put("Submit2", "Clear");

//		String response = HttpRequest
//				.post("http://www.indianrail.gov.in/cgi_bin/inet_pnrstat_cgi.cgi")
//				.form(form_parms).body();
		String resp_msg=HttpRequest.post("http://www.indianrail.gov.in/cgi_bin/inet_pnrstat_cgi.cgi").form(form_parms).codeInEnglish();
		System.out.println(resp_msg);
	}

	public static void main(String args[]) {
		new PNRStatus("6124563911");
	}
}
