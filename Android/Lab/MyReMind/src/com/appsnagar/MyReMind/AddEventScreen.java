package com.appsnagar.MyReMind;

import java.util.Calendar;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.PendingIntent;
import android.app.TimePickerDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TimePicker;
import android.widget.Toast;
import android.widget.ToggleButton;
import android.widget.AdapterView.OnItemSelectedListener;

public class AddEventScreen extends Activity {
	private static final String TAG = AddEventScreen.class.getSimpleName();

	// date and time
	private int mYear;
	private int mMonth;
	private int mDay;
	private int mHour;
	private int mMinute;

	static final int TIME_DIALOG_ID = 0;
	static final int DATE_DIALOG_ID = 1;

	private EditText eventNameET;
	private Button pickDateBtn;
	private Button pickTimeBtn;
	ToggleButton togglebutton;
	Spinner for_every;
	int for_every_spin_position = 0;
	private final String[] months = new String[] { "Jan", "Feb", "Mar", "Apr",
			"May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
	private MyReMindApp MRM;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.add_event);
		// just for now...........

		MRM = (MyReMindApp) getApplicationContext();
		if (!MRM.is_service_running) {
			MRM.startCheckerService();
		}
		else Log.i("AddEventScreen","CheckerService already running.");
		eventNameET = (EditText) findViewById(R.id.event_name);
		// for date...........
		pickDateBtn = (Button) findViewById(R.id.date_btn);
		pickDateBtn.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				showDialog(DATE_DIALOG_ID);
			}
		});
		// for time..........
		pickTimeBtn = (Button) findViewById(R.id.time_btn);
		pickTimeBtn.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				showDialog(TIME_DIALOG_ID);
			}
		});
		// for spinner
		for_every = (Spinner) findViewById(R.id.spinner);
		ArrayAdapter<CharSequence> spinAdapter = ArrayAdapter
				.createFromResource(this, R.array.recurrence,
						android.R.layout.simple_spinner_item);
		spinAdapter
				.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		for_every.setAdapter(spinAdapter);
		for_every.setOnItemSelectedListener(new OnItemSelectedListener() {

			public void onItemSelected(AdapterView<?> parent, View view,
					int position, long id) {
				for_every_spin_position = position;
			}

			public void onNothingSelected(AdapterView<?> parent) {
				// TODO Auto-generated method stub

			}
		});
		// for priority toggle button
		togglebutton = (ToggleButton) findViewById(R.id.togglebutton);
		togglebutton.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				String yesMsg = "You will be keep on notified untill you attend the notification, "
						+ "just like you got a phone call";
				String noMsg = "You will be notified once, just like you got a SMS";
				if (togglebutton.isChecked()) {
					Toast.makeText(getBaseContext(), yesMsg, Toast.LENGTH_LONG)
							.show();
				} else {
					Toast.makeText(getBaseContext(), noMsg, Toast.LENGTH_LONG)
							.show();
				}
			}
		});
		final Calendar c = Calendar.getInstance();
		mYear = c.get(Calendar.YEAR);
		mMonth = c.get(Calendar.MONTH);
		mDay = c.get(Calendar.DAY_OF_MONTH);
		mHour = c.get(Calendar.HOUR_OF_DAY);
		mMinute = c.get(Calendar.MINUTE);
		// Add Event- button
		Button addEventBtn = (Button) findViewById(R.id.add_btn);
		addEventBtn.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				addTheEvent();
			}
		});

	}

	protected Dialog onCreateDialog(int id) {
		switch (id) {
		case TIME_DIALOG_ID:
			return new TimePickerDialog(this, mTimeSetListener, mHour, mMinute,
					false);
		case DATE_DIALOG_ID:
			return new DatePickerDialog(this, mDateSetListener, mYear, mMonth,
					mDay);
		}
		return null;
	}

	@Override
	protected void onPrepareDialog(int id, Dialog dialog) {
		switch (id) {
		case TIME_DIALOG_ID:
			((TimePickerDialog) dialog).updateTime(mHour, mMinute);
			break;
		case DATE_DIALOG_ID:
			((DatePickerDialog) dialog).updateDate(mYear, mMonth, mDay);
			break;
		}
	}

	@Override
	protected void onStart() {
		super.onStart();
	}

	private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() {

		public void onDateSet(DatePicker view, int year, int monthOfYear,
				int dayOfMonth) {
			mYear = year;
			mMonth = monthOfYear;
			mDay = dayOfMonth;
			pickDateBtn.setText(months[mMonth] + ", " + mDay + ", " + mYear);
		}
	};

	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		final Calendar c = Calendar.getInstance();
		mYear = c.get(Calendar.YEAR);
		mMonth = c.get(Calendar.MONTH);
		mDay = c.get(Calendar.DAY_OF_MONTH);
		mHour = c.get(Calendar.HOUR_OF_DAY);
		mMinute = c.get(Calendar.MINUTE);
		pickDateBtn.setText(months[mMonth] + ", " + mDay + ", " + mYear);

	}

	private TimePickerDialog.OnTimeSetListener mTimeSetListener = new TimePickerDialog.OnTimeSetListener() {

		public void onTimeSet(TimePicker view, int hourOfDay, int minute) {
			mHour = hourOfDay;
			mMinute = minute;
			int tmpHour = mHour;
			String AmPm = (mHour >= 12 ? "PM" : "AM");
			if (AmPm.equals("AM")) {
				if (mHour == 0)
					tmpHour = 12;
			} else {
				if (mHour != 12)
					tmpHour = mHour - 12;
			}
			// String temp;
			// temp= (mHour > 1)
			pickTimeBtn.setText(pad(tmpHour) + " : " + pad(mMinute) + " "
					+ AmPm);
			// pickTimeBtn.setText(mHour+" : "+mMinute);
		}
	};

	private void addTheEvent() {
		if (eventNameET.getText().toString().length() == 0) {
			alertUser("Event NOT Added", "Please enter event name.");
			return;
		}
		if (pickDateBtn.getText().equals("Date")) {
			alertUser("Event NOT Added",
					"Please enter the start date of the event.");
			return;
		}
		if (pickTimeBtn.getText().equals("Time")) {
			alertUser("Event NOT Added",
					"Please enter the start time to remind.");
			return;
		}
		MRM = (MyReMindApp) getApplication();
		String event_at;
		event_at = pad(mDay) + "-" + pad(mMonth + 1) + "-" + mYear + "-"
				+ pad(mHour) + "-" + MRM.the5Mform(mMinute);
		String[] recurrence = getResources().getStringArray(R.array.recurrence);
		String priority = (togglebutton.isChecked() ? "high" : "low");
		ContentValues cv = new ContentValues();
		cv.put(TheEvents.C_EVENT_NAME, eventNameET.getText().toString());
		cv.put(TheEvents.C_FOR_EVERY, recurrence[for_every_spin_position]);
		cv.put(TheEvents.C_EVENT_AT, event_at);
		cv.put(TheEvents.C_PRIORITY, priority);
		String theMsg = "Remind me about "
				+ cv.getAsString(TheEvents.C_EVENT_NAME) + " starting at "
				+ cv.getAsString(TheEvents.C_EVENT_AT) + " for every "
				+ cv.getAsString(TheEvents.C_FOR_EVERY);
		Log.i(TAG, "EVENT: " + theMsg);
		// get connection with the database
		TheEvents events = new TheEvents(this);
		if (events.addEvent(cv)) {
			Toast.makeText(this, "Event added", Toast.LENGTH_SHORT).show();
		} else
			Toast.makeText(this, "Event NOT added", Toast.LENGTH_SHORT).show();
		finish(); // killing the activity once the event is added
	}

	public void alertUser(String title, String msg) {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle(title);
		builder.setMessage(msg);
		builder.setPositiveButton("Ok", null);
		AlertDialog ad = builder.create();
		ad.show();
	}

	private static String pad(int c) {
		if (c >= 10)
			return String.valueOf(c);
		else
			return "0" + String.valueOf(c);
	}

}
