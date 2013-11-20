package com.appsnagar.MyReMind;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

public class TestHomeActivity extends Activity {
	private static final String TAG = TestHomeActivity.class.getSimpleName();
	private TheEvents events;
	public MyReMindApp MRM;

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		startService(new Intent(this, CheckerService.class));

		// loadTable();
		// setRooTime();
		deleteTheEvent("61");
	}

	public void loadTable() {
		MRM = (MyReMindApp) getApplication();
		MRM.setCurrentStamp();
		events = new TheEvents(this);
		ContentValues cv = new ContentValues();
		cv.put(TheEvents.C_EVENT_NAME, "HourTest");
		cv.put(TheEvents.C_FOR_EVERY, "hour");
		cv.put(TheEvents.C_EVENT_AT, "----------02--" + MRM.the5Mform(37));

		if (events.addEvent(cv))
			// if(events.editEvent("41",cv))
			Toast.makeText(this, "SUCCESS", Toast.LENGTH_SHORT).show();
		else
			Toast.makeText(this, "FAILED", Toast.LENGTH_SHORT).show();

	}

	public void setRooTime() {
		events = new TheEvents(this);
		ContentValues cv = new ContentValues();
		cv.put(TheEvents.C_ROO_TIME, MRM.getNextOcc(5, "m"));

		if (events.editEvent("44", cv))
			// if(events.editEvent("41",cv))
			Toast.makeText(this, "SUCCESS", Toast.LENGTH_SHORT).show();
		else
			Toast.makeText(this, "FAILED", Toast.LENGTH_SHORT).show();
	}

	public void eligibleList() {
		Cursor cursor = events.getAllEvents();
		startManagingCursor(cursor);
		cursor.moveToFirst();
		AnEvent anEvent;
		while (cursor.isAfterLast() == false) {
			anEvent = new AnEvent(cursor, getApplication());
			if (anEvent.isEligible(MRM.getCurrentStamp()))
				Log.i(TAG, cursor.getString(0) + " is eligible.");
			// else Log.i(TAG,cursor.getString(0)+"  is NOT eligible");
			cursor.moveToNext();
		}
	}

	private void deleteTheEvent(String id) {
		TheEvents events = new TheEvents(this);
		if (!events.deleteEvent(id))
			Toast.makeText(this, "Event should be deleted,but didnt",
					Toast.LENGTH_SHORT).show();
		else
			Toast.makeText(this, "Event deleted", Toast.LENGTH_SHORT).show();
	}
}
