package ajay.app.distancecalc;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

public class CalcDistance {

	String theurl="http://maps.google.com/maps/nav?key=ABQIAAAA7j_Q-rshuWkc8HyFI4V2HxQYPm-xtd00hTQOC0OXpAMO40FHAxT29dNBGfxqMPq5zwdeiDSHEPL89A&output=js&doflg=j&dirflg=d&mapclient=jsapi&q=";
	URL url;
	URLConnection conn;
	String thecontent;
	TheLocation location1,location2;
	public CalcDistance(TheLocation loc1,TheLocation loc2) throws Exception
	{				
		this.location1=loc1;
		this.location2=loc2;
		this.prepareUrl();
		this.setContent();
		
	}
	
	public void prepareUrl()
	{
		try
		{
			url = new URL(theurl+URLEncoder.encode("from:"+location1.getName()+" to:"+location2.getName()));
			conn =  url.openConnection();
		}catch (Exception e){
			System.out.println(":-( "+e);	
			}
		
	}
	
	public void setContent()
	throws Exception{
		BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		thecontent="";
		String str;
		while ((str= in.readLine()) != null)
		{
			thecontent+=str;
		}
		in.close();		
	}
	
	public String calcDrivingDistance()
	{
		if(thecontent.indexOf("Status\":{\"code\":200")==-1)
		{
			System.out.println("Didnt see the code status 200 in CalcDistance");
			return "statuscode<>200";
		}
		String startString="{\"meters\":";		
		int start=thecontent.indexOf(startString);		
		String meters="UNKNOWN";
		meters=thecontent.substring(start+startString.length(),start+startString.length()+15);
		meters=meters.substring(0, meters.indexOf(","));		
		return meters;
	}
	
	public void dispContent()
	{
		System.out.println(thecontent);
	}
	
	
	public static void main(String[] args) throws Exception {
		
		TheGeoCode tgc=new TheGeoCode(args[0]);
		tgc.prepareUrl("flsdfjlsajflsjl");
		
		tgc.setContent();
		//tgc.dispContent();
		tgc.mining();
		
	}

}
