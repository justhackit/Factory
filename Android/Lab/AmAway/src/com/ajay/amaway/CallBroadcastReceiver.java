package com.ajay.amaway;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.PhoneStateListener;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.util.Log;

public class CallBroadcastReceiver extends BroadcastReceiver{
    private static final String TAG="CallBroadcastRecievier";

	boolean active=false;
	String awayMsgTxt;
    private String DATABASE="cache";
    
	public void onReceive(Context context, Intent intent) {
		  //Log.d("AmAway", "Getting a call...");
	      TelephonyManager telephony = (TelephonyManager)context.getSystemService(Context.TELEPHONY_SERVICE);
	      MyPhoneStateListener customPhoneListener = new MyPhoneStateListener();
	      telephony.listen(customPhoneListener, PhoneStateListener.LISTEN_CALL_STATE);
	      Bundle bundle = intent.getExtras();
	      String phone_number = bundle.getString("incoming_number");
	      Log.d("AmAway","Phone Number : " + phone_number);
	      readTheStatus(context);
	      if(phone_number!=null){
	      if(active && phone_number.startsWith("+91") && phone_number.length() > 8)
	      {
			SmsManager sm=SmsManager.getDefault();
			sm.sendTextMessage(phone_number, null, awayMsgTxt, null, null);
	      }
	      }else Log.e(TAG,"the phone number is null");
	  }
    private void readTheStatus(Context context)
    {
        File curDir = new File(context.getFilesDir().getAbsolutePath());
        try {
			BufferedReader br = new BufferedReader(new FileReader(curDir + DATABASE));
			try {
				String tempActive=br.readLine();
				Log.d(TAG,"Text read from file: "+tempActive);
				if(tempActive.equalsIgnoreCase("true"))
					active=true;
				else active=false;
				awayMsgTxt=br.readLine();
				Log.d(TAG,"Text read from file: "+awayMsgTxt);
				br.close();
			} catch (IOException e) {
				
			}
		} catch (FileNotFoundException e) {
			Log.d("TAG","File not found. So, creating...");
			FileWriter fw;
			try {				
				active=false;
				fw = new FileWriter(curDir + DATABASE);
			    fw.write("false\n");
			    fw.write("Hi!I am busy right now. I will call you later.\n");
			    fw.close();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}
    }
}
