package com.ajay.amaway;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

public class HomeActivity extends Activity implements TextWatcher{
    private static final String TAG="HomeActivity";
    private EditText awayMsg;
    private ToggleButton activateButton;
    private Button clearTxt;
    private String awayMsgTxt="Hi!I am busy right now. I will call you later.\n";
    private String DATABASE="cache";
    private boolean active=false;
    TextView textCount;
    
	private NotificationManager nm;
	private Notification ntf;
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d("AmAway","Testing.....");
        setContentView(R.layout.awaymessage);
        readTheStatus();
        textCount=(TextView)findViewById(R.id.textCount);
        textCount.setText(String.valueOf(awayMsgTxt.length()));
        textCount.setTextColor(Color.GREEN);         
        Log.d(TAG,"Active: "+active);
        Log.d(TAG,"Away Message: "+awayMsgTxt);
        awayMsg=(EditText)findViewById(R.id.editText);
        awayMsg.setText(awayMsgTxt);
        if(active) awayMsg.setEnabled(false);
        awayMsg.addTextChangedListener(this); 
        clearTxt=(Button)findViewById(R.id.clearText_btn);
        clearTxt.setOnClickListener(new OnClickListener() {
        	public void onClick(View v){
        		if(awayMsg.isEnabled())
        		awayMsg.setText("");
        	}
        });
		activateButton=(ToggleButton)findViewById(R.id.togglebutton);
		activateButton.setChecked(active);
		activateButton.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
			awayMsgTxt=awayMsg.getText().toString();
				if (activateButton.isChecked()) {
					if(awayMsgTxt.length()!=0)
					{				
						editNotificationBar(true);
					String msg="Away status Activated";
					Toast.makeText(getBaseContext(), msg, Toast.LENGTH_LONG)
							.show();
					writeTheStatus();
					finish();
					}
					else Toast.makeText(getBaseContext(), "Away message cannot be empty", Toast.LENGTH_LONG).show();
					activateButton.setChecked(false);
				} else {
					editNotificationBar(false);
					Toast.makeText(getBaseContext(), "Away status De-Actiaved", Toast.LENGTH_LONG)
							.show();
					writeTheStatus();
					finish();
				}
				

			}
		});
        }
    private void writeTheStatus()
    {
        File curDir = new File(getFilesDir().getAbsolutePath());
			FileWriter fw;
			try {
				fw = new FileWriter(curDir + DATABASE);
				if(activateButton.isChecked())
			    fw.write("true\n");
				else fw.write("false\n");
			    fw.write(awayMsgTxt.replace("\n", "--"));
			    fw.close();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}
 
    private void readTheStatus()
    {
        File curDir = new File(getFilesDir().getAbsolutePath());
        try {
			BufferedReader br = new BufferedReader(new FileReader(curDir + DATABASE));
			try {
				String tempActive=br.readLine();
				Log.d(TAG,"Text read from file: "+tempActive);
				if(tempActive.equalsIgnoreCase("true"))
					active=true;
				else active=false;
				awayMsgTxt=br.readLine();
				if(awayMsgTxt==null)
					awayMsgTxt="Hi!I am busy right now. I will call you later.\n";
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
	public void afterTextChanged(Editable statusText)
	{
		int count=statusText.length();
		textCount.setText(Integer.toString(count));
		if(count <=130)
			textCount.setTextColor(Color.GREEN);
		else if(count > 130 && count<140)
			textCount.setTextColor(Color.YELLOW);
		else textCount.setTextColor(Color.RED);
	}
	public void beforeTextChanged(CharSequence s, int start, int count,
			int after) {
		// TODO Auto-generated method stub
		
	}
	public void onTextChanged(CharSequence s, int start, int before, int count) {
		// TODO Auto-generated method stub
		
	}
	private void editNotificationBar(boolean flag){
		this.nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE); //
		if(flag){
		this.ntf = new Notification(android.R.drawable.stat_sys_warning, "", 0);
		ntf.when = System.currentTimeMillis();
		ntf.flags |= Notification.FLAG_ONGOING_EVENT;
		//ntf.flags |= Notification.FLAG_AUTO_CANCEL;
 		Intent HomeActivityScreen = new Intent(this,
 				HomeActivity.class);
		PendingIntent pendingIntent = PendingIntent.getActivity(this, -1,
				HomeActivityScreen, PendingIntent.FLAG_UPDATE_CURRENT);
		ntf.setLatestEventInfo(this, "I Am Away", "Away status activated. Tap on to De-Activate.", pendingIntent);
		nm.notify(TAG, 2562, ntf);
		}
		else
		{
			nm.cancel(TAG,2562);
		}
		}
	}
