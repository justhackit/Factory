package ajay.app.distancecalc;

public class TheLocation {
	
	String name;
	String latitude;
	String longitude;
	
	public void TheLocation()
	{
		name="UNKNOWN";
		latitude="UNKNOWN";
		longitude="UNKNOWN";
	}
	public void setName(String nam)
	{
		this.name=nam;
	}
	public void setLatitude(String lat)
	{
		this.latitude=lat;
	}
	public void setLongitude(String lon)
	{
		this.longitude=lon;
	}
	public String getName()
	{
		return name;
	}
	public String getLatitude()
	{
		return latitude;
	}
	public String getLongitude()
	{
		return longitude;
	}
	public void printAll()
	{
		System.out.println("Place Name:"+this.getName()+"\nLatitude:"+this.getLatitude()+"\nLongitude:"+this.getLongitude());
	}

}
