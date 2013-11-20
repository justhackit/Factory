package ajay.app.distancecalc;


import java.math.BigDecimal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class HomeActivity extends Activity {
	public EditText fromEt,toEt;
	private String from,to;
	public Button calcBtn,thanksBtn,clearBt;
	private String msgToDisp;
	private static final int RESULT_DIALOG=0;
	private static final int QUIT_DIALOG=1;
	private ProgressDialog progressDia=null;
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        Log.v("Ajay", "On Create");
        fromEt=(EditText)this.findViewById(R.id.fromEt);
        toEt=(EditText)this.findViewById(R.id.toEt);        
        Button calcBtn=(Button)this.findViewById(R.id.calcBt);
        calcBtn.setOnClickListener(new OnClickListener()
        {
        	public void onClick(View v)
        	{
        		from=fromEt.getText().toString();
        		to=toEt.getText().toString();
        		from=from.replace(" ", ",");
        		to=to.replace(" ", ",");     
        		progressDia=ProgressDialog.show(HomeActivity.this,"Please wait...","Calculating............",true);
        		calcDrivingDistance();
        	}
        }
        		
        );
      Button thanksBtn=(Button)this.findViewById(R.id.thanksBt);
      thanksBtn.setOnClickListener(new OnClickListener()
      {
    	  public void onClick(View v)
    	  {    		  
    		  byeBye();
    	  }
      }
      );
      Button clearBtn=(Button)this.findViewById(R.id.clearBt);
      clearBtn.setOnClickListener(new OnClickListener()
      {
    	  public void onClick(View v)
    	  {    		  
    		  handleClearBt();
    	  }
      }
      );
    }
    
    protected Dialog onCreateDialog(int id,Bundle state)
    {
    	AlertDialog ad = null;
    	switch(id)
    	{
    	case RESULT_DIALOG : 
    		AlertDialog.Builder bldrRes=new AlertDialog.Builder(this);
    		bldrRes.setCancelable(false)
    			.setTitle("Distance:")
    			.setMessage(msgToDisp)
    			.setPositiveButton("OK", new EmptyOnClickListener());
    	  ad=bldrRes.create();
    	  break;
    	case QUIT_DIALOG :
    		AlertDialog.Builder bldrQit=new AlertDialog.Builder(this);
        	bldrQit.setCancelable(false)
        	.setTitle("Developed by ........@j@!")
        	.setMessage("The app is going to quit!")
        	.setPositiveButton("OK", new DialogInterface.OnClickListener()
        	{
        		public void onClick(DialogInterface v,int btnId)
        		{
        			HomeActivity.this.finish();
        		}
        	}
        	)
        	.setNegativeButton("No, no", new EmptyOnClickListener());
        	ad=bldrQit.create();
        	break;
    	}
    	return ad;
    }
    protected void onPrepareDialog(int id,Dialog dg)
    {
    	switch(id)
    	{
    	case RESULT_DIALOG :
    		AlertDialog ad=(AlertDialog)dg;
    		ad.setMessage(msgToDisp);
    		break;
    	}
    }
    public class EmptyOnClickListener implements android.content.DialogInterface.OnClickListener
    {
    	public void onClick(DialogInterface v,int btnId)
    	{
    		//do nothing
    	}
    }
   
    public void calcDrivingDistance()
    {   
    	
        Thread thred=new Thread(){	
        	public void run()
        	{
        
    	try
    	{
    	TheGeoCode locCalc1=new TheGeoCode(from);
    	TheLocation loc1=locCalc1.getLocation();
    	TheGeoCode locCalc2=new TheGeoCode(to);
    	TheLocation loc2=locCalc2.getLocation();
    	CalcDistance calc=new CalcDistance(loc1,loc2);    	
    	float meters=Float.parseFloat(calc.calcDrivingDistance())/1000;
    	    	
    	//double meters=distance(Double.parseDouble(loc1.getLatitude()), Double.parseDouble(loc1.getLongitude()),Double.parseDouble(loc2.getLatitude()), Double.parseDouble(loc2.getLongitude()));
    	
    	msgToDisp="The distance between "+
    		loc1.getName()+" and "+
    		loc2.getName()+" is "+
    		String.valueOf(meters)+" Kms.";
    	uiCallback.sendEmptyMessage(0);	
		
    	}catch (Exception e)
    	{
    		//Toast.makeText(HomeActivity.this, "Unknown"+e, Toast.LENGTH_LONG).show();
    		if(e.toString().toLowerCase().startsWith("java.net.unknownhost"))
    		Toast.makeText(HomeActivity.this, "ERROR:Make sure the Mobile Internet is ON", Toast.LENGTH_LONG).show();
    		else if(e.toString().toLowerCase().startsWith("java.lang.nullpointer")||
    				e.toString().toLowerCase().startsWith("java.lang.numberformat"))
    		Toast.makeText(HomeActivity.this, "Sorry, but I don't know those places.", Toast.LENGTH_LONG).show();
    		else if(e.toString().toLowerCase().startsWith("java.io.filenotfound"))
    			Toast.makeText(HomeActivity.this,"Bad Input!!  "+e, Toast.LENGTH_LONG).show();
    		else 
    			Toast.makeText(HomeActivity.this,"Unknown Error:  "+e, Toast.LENGTH_LONG).show();
    	}
    	
    }
        };
        thred.start();
    }
    private Handler uiCallback=new Handler()
    {
    	public void handleMessage(Message msg)
    	{
    		progressDia.dismiss();    		
    		showDialog(RESULT_DIALOG);    		
    	}
    };
    public void handleClearBt()
    {
    	fromEt.setText("");
    	toEt.setText("");
    }
    public void byeBye()
    {       	
    	showDialog(QUIT_DIALOG);
     }
    private double distance(double lat1, double lon1, double lat2, double lon2) {
    	double earthRadius = 3958.75;
        double dLat = Math.toRadians(lat2-lat1);
        double dLng = Math.toRadians(lon2-lon1);
        double a = Math.sin(dLat/2) * Math.sin(dLat/2) +
                   Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) *
                   Math.sin(dLng/2) * Math.sin(dLng/2);
        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
        double dist = earthRadius * c;

        return dist;
    	}
    /*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
    /*::  This function converts decimal degrees to radians             :*/
    /*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
    private double deg2rad(double deg) {
      return (deg * Math.PI / 180.0);
    }

    /*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
    /*::  This function converts radians to decimal degrees             :*/
    /*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
    private double rad2deg(double rad) {
      return (rad * 180.0 / Math.PI);
    }
}