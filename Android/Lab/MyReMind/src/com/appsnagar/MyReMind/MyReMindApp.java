package com.appsnagar.MyReMind;

///stoped at: 	datePicker button abending in EditEventScreen
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
//Time stamp format: 
//3  0  -  1  1  -  2  0  1  1  -  0  5  -  D
//0  1  2  3  4  5  6  7  8  9  10 11 12 13 14 

public class MyReMindApp extends Application {
	private static final String TAG = MyReMindApp.class.getSimpleName();

	public final int C_ID = 0;
	public final int C_CREATED_AT = 1;
	public final int C_EVENT_NAME = 2;
	public final int C_EVENT_DESC = 3;
	public final int C_EVENT_AT = 4;
	public final int C_FOR_EVERY = 5;
	public final int C_ACTION = 6;
	public final int C_ROO_TIME = 7;
	public final int C_PRIORITY = 8;
	public final int C_RESERVE = 9;
	public final int DELAY = 5; // minutes
	public boolean is_service_running = false;

	public GregorianCalendar cal;

	@Override
	public void onCreate() {
		super.onCreate();
		setCurrentStamp();
		this.startCheckerService();
	}

	@Override
	public void onTerminate() {
		// TODO Auto-generated method stub
		super.onTerminate();
	}

	public String[] anEvent;
	char[] the5Marray = new char[] { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
			'I', 'J', 'K', 'L' };
	public String currentStamp;

	// Returns the 5M character representation for a passed minutes
	public char the5Mform(int min) {
		if (min >= 0 && min <= 59) {
			int i = min / 5;
			return the5Marray[i];
		} else
			return '?';
	}

	// Returns the minutes equivalent for a passed stamp
	public int getMinutesIn(String stamp) {
		char[] stampArr = stamp.toCharArray();
		String temp = String.copyValueOf(the5Marray);
		return 5 * (temp.indexOf(stampArr[14]));
	}

	// To get the 5M character in a passed time stamp
	public char get5MinChar(String stamp) {
		char[] stampArr = stamp.toCharArray();
		return stampArr[14];
	}

	// To get the current week
	public String getTodayWeek() {
		int curWeek = cal.get(Calendar.DAY_OF_WEEK);
		String week3 = "?";
		switch (curWeek) {
		case Calendar.SUNDAY:
			week3 = "sun";
			break;
		case Calendar.MONDAY:
			week3 = "mon";
			break;
		case Calendar.TUESDAY:
			week3 = "tue";
			break;
		case Calendar.WEDNESDAY:
			week3 = "wed";
			break;
		case Calendar.THURSDAY:
			week3 = "thu";
			break;
		case Calendar.FRIDAY:
			week3 = "fri";
			break;
		case Calendar.SATURDAY:
			week3 = "sat";
			break;
		}
		return week3;
	}

	public void setCurrentStamp() {
		cal = new GregorianCalendar();
		currentStamp = "";
		currentStamp = (cal.get(Calendar.DATE) < 10 ? "0"
				+ cal.get(Calendar.DATE) : cal.get(Calendar.DATE))
				+ "-"
				+ (cal.get(Calendar.MONTH) < 9 ? "0"
						+ (cal.get(Calendar.MONTH) + 1) : (cal
						.get(Calendar.MONTH) + 1))
				+ "-"
				+ String.valueOf(cal.get(Calendar.YEAR))
				+ "-"
				+ (cal.get(Calendar.HOUR_OF_DAY) < 10 ? "0"
						+ cal.get(Calendar.HOUR_OF_DAY) : cal
						.get(Calendar.HOUR_OF_DAY))
				+ "-"
				+ this.the5Mform(cal.get(Calendar.MINUTE));
		;
		Log.i(TAG, "Now it is: " + currentStamp + "-" + getTodayWeek());

	}

	public String getCurrentStamp() {
		return currentStamp;
	}

	// tells the timestamp right now
	public String getRealCurrentStamp() {
		GregorianCalendar calR = new GregorianCalendar();
		return (calR.get(Calendar.DATE) < 10 ? "0" + calR.get(Calendar.DATE)
				: calR.get(Calendar.DATE))
				+ "-"
				+ (calR.get(Calendar.MONTH) < 9 ? "0"
						+ (calR.get(Calendar.MONTH) + 1) : (calR
						.get(Calendar.MONTH) + 1))
				+ "-"
				+ String.valueOf(calR.get(Calendar.YEAR))
				+ "-"
				+ (calR.get(Calendar.HOUR_OF_DAY) < 10 ? "0"
						+ calR.get(Calendar.HOUR_OF_DAY) : calR
						.get(Calendar.HOUR_OF_DAY))
				+ "-"
				+ this.the5Mform(calR.get(Calendar.MINUTE));

	}

	// tells the next time stamp for the given time offset, from NOW
	public String getNextOcc(int val, String unit) {
		int minOff = val * (unit.equalsIgnoreCase("m") ? 1 : 60);
		Calendar calNow = GregorianCalendar.getInstance();
		calNow.add(Calendar.MINUTE, minOff);
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy-HH:mm");// yyyy-MM-dd
																		// HH:mm:ss");
		String nextStr = sdf.format(calNow.getTime());
		String nextTime = nextStr.substring(0, 13) + "-"
				+ this.the5Mform(Integer.parseInt(nextStr.substring(14, 16)));
		return nextTime;
	}

	public long getTimeMillis(String timeStamp) {
		Calendar calcCalc = Calendar.getInstance();
		// Log.i(TAG,"getTimeMillis: "+timeStamp);
		calcCalc.set(Calendar.DATE, Integer.parseInt(timeStamp.substring(0, 2)));
		calcCalc.set(Calendar.MONTH,
				Integer.parseInt(timeStamp.substring(3, 5)));
		calcCalc.set(Calendar.YEAR,
				Integer.parseInt(timeStamp.substring(6, 10)));
		calcCalc.set(Calendar.HOUR_OF_DAY,
				Integer.parseInt(timeStamp.substring(11, 13)));
		calcCalc.set(Calendar.MINUTE, getMinutesIn(timeStamp));
		return calcCalc.getTimeInMillis();
	}

	public void startCheckerService() {
		if (!this.is_service_running) {
			Log.i("AddEventScreen", "starting the CheckerService");
			Intent intent = new Intent(this, CheckerService.class);
			long firstTime = SystemClock.elapsedRealtime();
			PendingIntent pendingIntent = PendingIntent.getService(this, -1,
					intent, PendingIntent.FLAG_UPDATE_CURRENT);
			AlarmManager alarmManager = (AlarmManager) this
					.getSystemService(Context.ALARM_SERVICE);
			alarmManager.setRepeating(AlarmManager.ELAPSED_REALTIME_WAKEUP,
					firstTime, this.DELAY * 60 * 1000, pendingIntent);
			startService(intent); // ******* Start the Service
			this.is_service_running = true;
		}
	}
}
