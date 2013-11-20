
package ajay.app.distancecalc;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

public class TheGeoCode {

	String theurl="http://maps.google.com/maps/geo?output=xml&oe=utf-8&q=";
	URL url;
	URLConnection conn;
	String thecontent;
	TheLocation finalLoc;
	public TheGeoCode(String place) throws Exception
	{				
		finalLoc=null;
		this.prepareUrl(place);
		this.setContent();
		this.mining();
	}
	
	public void calcFor(String place) throws Exception
	{
		finalLoc=null;
		this.prepareUrl(place);
		this.setContent();
		this.mining();
	}
	public TheLocation getLocation()
	{
		return finalLoc;
	}
	
	public void prepareUrl(String place)
	{
		try
		{
			url = new URL(theurl+place);
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
	
	public void mining()
	{
		if(thecontent.indexOf("<code>200</code>")==-1)
		{
			return;
		}
		String startString="<address>";
		String endString="</address>";
		int start=thecontent.indexOf(startString);
		int end=thecontent.indexOf(endString);
		String name="UNKNOWN";
		name=thecontent.substring(start+startString.length(), end);
		//System.out.println(name);
		String startString1="<coordinates>";
		String endString1="</coordinates>";
		int start1=thecontent.indexOf(startString1);
		int end1=thecontent.indexOf(endString1);
		String loc;//="UNKNOWN";
		loc=thecontent.substring(start1+startString1.length(), end1-2);
		String lat=loc.substring(0, loc.indexOf(",")-1);
		String lon=loc.substring(loc.indexOf(",")+1);
		//System.out.println("Place:"+name+"\nLatitude:"+lat+"\nLongitude:"+lon);
		finalLoc=new TheLocation();
		finalLoc.setName(name);
		finalLoc.setLatitude(lat);
		finalLoc.setLongitude(lon);
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
