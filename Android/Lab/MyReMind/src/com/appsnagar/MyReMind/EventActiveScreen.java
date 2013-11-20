package com.appsnagar.MyReMind;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.ContentValues;
import android.database.Cursor;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemSelectedListener;

public class EventActiveScreen extends Activity{
	static final String TAG = "EventActiveScreen";
	
	private TextView eventName;
	private Button doneThanks;
	
	private MyReMindApp MRM;
	private TheEvents theEvents;
	private Cursor thisEvent;
	private String ACTIVE_EVENT_ID;
	private String EVENT_NAME;
	private String FOR_EVERY;
	Spinner remind_after;
	int remind_after_spin_position=0;
	private NotificationManager nm;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);		
		setContentView(R.layout.event_active_screen);
		MRM=(MyReMindApp)getApplication();		
		this.nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
		//ACTIVE_EVENT_ID=savedInstanceState.getString("id");
		Bundle extras = getIntent().getExtras();
		ACTIVE_EVENT_ID = extras.getString("id");
		Log.d(TAG,">>>Got active event with ID: "+ACTIVE_EVENT_ID);
		theEvents = new TheEvents(this);
		thisEvent = theEvents.getEvent(ACTIVE_EVENT_ID);
		FOR_EVERY=thisEvent.getString(thisEvent.getColumnIndex(TheEvents.C_FOR_EVERY));
		EVENT_NAME=thisEvent.getString(thisEvent.getColumnIndex(TheEvents.C_EVENT_NAME));
		String atTime=thisEvent.getString(thisEvent.getColumnIndex(TheEvents.C_EVENT_AT));
		atTime=atTime.substring(11, 13)+":"+MRM.getMinutesIn(atTime);
		eventName=(TextView)findViewById(R.id.eventActiveName);
		eventName.setText(EVENT_NAME+" at "+atTime);
		doneThanks=(Button)findViewById(R.id.doneBtn);
		
		doneThanks.setOnClickListener(new OnClickListener()
		{
			public void onClick(View v){				
				eventDone();
				
			}
		}
		);
		//for spinner
		remind_after=(Spinner)findViewById(R.id.remind_after_spinner);
		ArrayAdapter<CharSequence> spinAdapter = ArrayAdapter.createFromResource(
                this, R.array.remind_after, android.R.layout.simple_spinner_item);
		spinAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		remind_after.setAdapter(spinAdapter);
		remind_after.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { 
			 
			 public void onItemSelected(AdapterView<?> arg0, View arg1, int position, long id) { 
				 
				 switch(position){
					case 1: remindAfter(5, "m");break;
					case 2: remindAfter(15,"m");break;
					case 3: remindAfter(30,"m");break;
					case 4: remindAfter(1,"h");break;
					case 5: remindAfter(2,"h");break;
					case 6: remindAfter(24,"h");break;
					
					}
				 


			 }

			 
			 public void onNothingSelected(AdapterView<?> arg0) {
			 }
			    });
	}
//	public class SpinnerOnItemSelectedListener implements OnItemSelectedListener {
//
//	    public void onItemSelected(AdapterView<?> parent,
//	        View view, int pos, long id) {
//	    	android.widget.Toast.makeText(EventActiveScreen.this, "List Item selected", android.widget.Toast.LENGTH_SHORT).show();
//			switch(pos){
//			case 0: remindAfter(5, "m");break;
//			case 1: remindAfter(15,"m");break;
//			case 2: remindAfter(30,"m");break;
//			case 3: remindAfter(1,"h");break;
//			case 4: remindAfter(2,"h");break;
//			case 5: remindAfter(24,"h");break;
//			
//			}
//
//	    }
//
//	    public void onNothingSelected(AdapterView parent) {
//	      // Do nothing.
//	    }
//	}
	private void eventDone(){
		if(FOR_EVERY.equalsIgnoreCase("once")){
			TheEvents events=new TheEvents(this);
			if(!events.deleteEvent(ACTIVE_EVENT_ID))
				Toast.makeText(this, "Event should be deleted,but didnt", Toast.LENGTH_SHORT).show();
			else Toast.makeText(this, "Event Deleted", Toast.LENGTH_SHORT).show();
		}
		else Toast.makeText(this, "You will be reminded again on next occurence of this event", Toast.LENGTH_SHORT).show();
		nm.cancel("MyReMind", Integer.parseInt(ACTIVE_EVENT_ID));
		finish();
	}
	private void remindAfter(int val,String unit){
		String msg;
		msg=MRM.getNextOcc(val, unit);
		//Toast.makeText(this, "You will be reminded again at "+msg, Toast.LENGTH_LONG).show();	
		ContentValues cv=new ContentValues();		
		cv.put(TheEvents.C_ROO_TIME,MRM.getNextOcc(val, unit));		
		if(!theEvents.editEvent(ACTIVE_EVENT_ID, cv))	
			Toast.makeText(this, "FAILED", Toast.LENGTH_SHORT).show();
		String dispMsg= val + (unit.equals("m")?" Minutes.":" Hours.");
		android.widget.Toast.makeText(EventActiveScreen.this,"You will be reminded after "+dispMsg, android.widget.Toast.LENGTH_SHORT).show();
		nm.cancel("MyReMind", Integer.parseInt(ACTIVE_EVENT_ID));
		finish();
	}
	
	
}
