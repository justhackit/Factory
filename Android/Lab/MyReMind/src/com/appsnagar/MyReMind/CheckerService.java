package com.appsnagar.MyReMind;

import java.text.SimpleDateFormat;
import java.util.Date;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;

public class CheckerService extends IntentService {
	static final String TAG = "CheckerService";
	private TheEvents events;
	private MyReMindApp MRM;	
	private NotificationManager nm;
	private Notification ntf;

	public CheckerService() {
		super(TAG);	
		//Log.d(TAG, "CheckerService constructed");
	}

	protected void onHandleIntent(Intent intent) {
		
//		notifyStautsBar();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd-HH-mm-EEE");
		MRM=(MyReMindApp)getApplication();
		Log.d(TAG,"Checking at <"+sdf.format(new Date())+"> which is "+MRM.getCurrentStamp()+"-"+MRM.getTodayWeek());
		events=new TheEvents(this);
		boolean anyEligible = false;
		MRM.setCurrentStamp();		
		Cursor cursor=events.getAllEvents();
		cursor.moveToFirst();
		if (cursor.getCount() != 0) {
			AnEvent anEvent;
			while (cursor.isAfterLast() == false) {
				anEvent = new AnEvent(cursor, getApplication());
				// Log.d(TAG,cursor.getString(cursor.getColumnIndex(TheEvents.
				// C_EVENT_AT)));
				if (anEvent.isEligible(MRM.getCurrentStamp())) {					
					notifyStautsbar(cursor);
//					Intent eventActiveScreen = new Intent(this,
//							EventActiveScreen.class);
//					String id = cursor.getString(cursor
//							.getColumnIndex(TheEvents.C_ID));
//					eventActiveScreen.putExtra("id", id);
//					eventActiveScreen.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
//					startActivity(eventActiveScreen);
					anyEligible = true;
					Log.i(TAG, cursor.getString(0) + " is eligible.");
				}
				cursor.moveToNext();
			}
			cursor.close();
			if (!anyEligible)
				Log.i(TAG, "No events are eligible right now");
		}

	}

	private void notifyStautsbar(Cursor cursor) {
		int eventId = Integer.parseInt(cursor.getString(0));
		String eventName = cursor.getString(cursor
				.getColumnIndex(TheEvents.C_EVENT_NAME));
		String priority = cursor.getString(cursor
				.getColumnIndex(TheEvents.C_PRIORITY));
		this.nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE); //
		this.ntf = new Notification(android.R.drawable.ic_popup_reminder, "", 0);
		ntf.when = System.currentTimeMillis();
		 //ntf.flags |= Notification.DEFAULT_LIGHTS;
		// ntf.flags |= Notification.DEFAULT_SOUND;
		// ntf.flags |= Notification.FLAG_AUTO_CANCEL;
		// ntf.flags |= Notification.FLAG_INSISTENT;
		// ntf.flags |= Notification.FLAG_SHOW_LIGHTS;
		// ntf.flags |= Notification.DEFAULT_VIBRATE;
		ntf.defaults = ntf.DEFAULT_SOUND | ntf.DEFAULT_VIBRATE
				| ntf.DEFAULT_LIGHTS;
		ntf.ledARGB = 0xff00ff00;
		ntf.ledOnMS = 300;
		ntf.ledOffMS = 1000;
		ntf.flags |= Notification.FLAG_SHOW_LIGHTS;
		ntf.flags |= Notification.FLAG_ONGOING_EVENT;// |
													// Notification.FLAG_INSISTENT
													// ;
		if (priority.equals("high"))
			ntf.flags |= Notification.FLAG_INSISTENT;
		//Intent intent = new Intent(this, ShowEventScreen.class);
 		Intent eventActiveScreen = new Intent(this,
		EventActiveScreen.class);
 		String id = cursor.getString(cursor
		.getColumnIndex(TheEvents.C_ID));
 		eventActiveScreen.putExtra("id", id);
 		eventActiveScreen.setData((Uri.parse("foobar://"+SystemClock.elapsedRealtime())));
 		Log.d(TAG,">>>The active events id is: "+eventId);
 		eventActiveScreen.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		
		PendingIntent pendingIntent = PendingIntent.getActivity(this, -1,
				eventActiveScreen, PendingIntent.FLAG_UPDATE_CURRENT);
		ntf.setLatestEventInfo(this, "MyReMind", eventName, pendingIntent);
		nm.notify("MyReMind", Integer.parseInt(id), ntf);
	}

//	public void notifyStautsBar() {
//		this.nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE); //
//		this.ntf = new Notification(android.R.drawable.stat_notify_chat, "", 0);
//		ntf.when = System.currentTimeMillis();
//		// ntf.flags |= Notification.DEFAULT_LIGHTS;
//		// ntf.flags |= Notification.DEFAULT_SOUND;
//		// ntf.flags |= Notification.FLAG_AUTO_CANCEL;
//		// ntf.flags |= Notification.FLAG_INSISTENT;
//		// ntf.flags |= Notification.FLAG_SHOW_LIGHTS;
//		// ntf.flags |= Notification.DEFAULT_VIBRATE;
//		ntf.defaults = ntf.DEFAULT_SOUND //| ntf.DEFAULT_VIBRATE
//				| ntf.DEFAULT_LIGHTS;
//		ntf.flags = Notification.FLAG_AUTO_CANCEL;// |
//													// Notification.FLAG_INSISTENT
//													// ;
//		Intent intent = new Intent(this, ShowEventScreen.class);
//		PendingIntent pendingIntent = PendingIntent.getActivity(this, -1,
//				intent, PendingIntent.FLAG_UPDATE_CURRENT);
//		ntf.setLatestEventInfo(this, "CHECKER", "Checking now...",
//				pendingIntent);
//		nm.notify("MyReMind", 1234, ntf);
//	}

}
