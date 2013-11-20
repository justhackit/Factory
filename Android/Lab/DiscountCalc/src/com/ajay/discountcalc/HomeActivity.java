/*
 * the correspoding XML file layout is with errors
 * 
 */
package com.ajay.discountcalc;

import java.math.BigDecimal;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class HomeActivity extends Activity {
	public EditText amtEt,perEt;
	public Button calcBtn,thanksBtn,clearBt;
	private String msgToDisp; 
	private static final int RESULT_DIALOG=0;
	private static final int QUIT_DIALOG=1;
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        Log.v("Ajay", "On Create");
        amtEt=(EditText)this.findViewById(R.id.amtEt);
        perEt=(EditText)this.findViewById(R.id.discEt);
        
        Button calcBtn=(Button)this.findViewById(R.id.calcBt);
        calcBtn.setOnClickListener(new OnClickListener()
        {
        	public void onClick(View v)
        	{
        		calcAmount();
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
    			.setTitle("Final Amount:")
    			.setMessage(msgToDisp)
    			.setPositiveButton("OK", new EmptyOnClickListener());
    	  ad=bldrRes.create();
    	  break;
    	case QUIT_DIALOG :
    		AlertDialog.Builder bldrQit=new AlertDialog.Builder(this);
        	bldrQit.setCancelable(false)
        	.setTitle("Exit?")
        	.setMessage("The app is going to quit!")
        	.setPositiveButton("Ok", new DialogInterface.OnClickListener()
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
   
    public void calcAmount()
    {    	
    	try
    	{
    	Float amount=new Float(amtEt.getText().toString());		
		Float perc=new Float(perEt.getText().toString());
		float youPay=amount - ( (amount * perc)/100);
		BigDecimal toDisp=new BigDecimal(youPay);
		toDisp = toDisp.setScale(2, BigDecimal.ROUND_HALF_UP);
		youPay = (float) toDisp.doubleValue();
		msgToDisp="Amount :  "+amtEt.getText().toString()
		+"\n"+"Discount: "+perEt.getText().toString()+"%"
		+"\n"+"You Pay :  "+youPay+" bucks.";
		showDialog(RESULT_DIALOG);		
    	}catch (Exception e)
    	{
    		Toast.makeText(this, "Values you entered are invalid :-(", Toast.LENGTH_LONG).show();
    	}
    }
    public void handleClearBt()
    {
    	amtEt.setText("");
    	perEt.setText("");
    }
    public void byeBye()
    {       	
    	showDialog(QUIT_DIALOG);
     }
}