package com.appsnagar.MyReMind;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class BootReceiver extends BroadcastReceiver {
	public void onReceive(Context context, Intent callingIntent) {
		MyReMindApp MRM = (MyReMindApp) context.getApplicationContext();
		Log.d("MyReMind", "Entered BootReceiver");
		if (!MRM.is_service_running) {
			MRM.startCheckerService();
		}
	}
}
