//This is develop
package com.appsnagar.MyReMind;

import java.util.Calendar;


import android.database.Cursor;
import android.app.Application;
import android.util.Log;

public class AnEvent {
	private static final String TAG=AnEvent.class.getSimpleName();
	public String[] theEvent = new String[10];
	MyReMindApp MRM;
	public AnEvent(Cursor cursor,Application app){
		for(int i=0;i<=9;i++)
		theEvent[i]=cursor.getString(i);
		MRM=(MyReMindApp) app; 
	}
	public void setEvent(Cursor cursor){
		for(int i=0;i<=9;i++)
			theEvent[i]=cursor.getString(i);		
		
	}
	public boolean isEligible(String curTime){
		boolean eligibility=false;
		//Log.i("AnEvent:",theEvent[4]+"="+curTime);//
		//after all, event_at must be atleast old than the curTime 
		//if((MRM.getTimeMillis(curTime)-MRM.getTimeMillis(theEvent[MRM.C_EVENT_AT])) >= 00){
		if(MRM.getTimeMillis(theEvent[MRM.C_EVENT_AT]) > MRM.getTimeMillis(curTime))
		{
			//Log.d(TAG,theEvent[MRM.C_EVENT_NAME]+" is Yet to come");
			return false;
		}		
		if(!theEvent[MRM.C_ROO_TIME].equals("xxx")){
			//Log.i(TAG,"For Every: once");
			if(curTime.equals(theEvent[MRM.C_ROO_TIME]))			
				eligibility = true;
		}
		else if(theEvent[MRM.C_FOR_EVERY].equals("Once")){
			//Log.i(TAG,"For Every: once");
			if(curTime.equals(theEvent[MRM.C_EVENT_AT]))
			{
				eligibility = true;
				
			}
			
		}
		else if(theEvent[MRM.C_FOR_EVERY].equals("Hour")){
			//Log.i(TAG,"For Every: hour");
			if ( MRM.get5MinChar(curTime) == MRM.get5MinChar(theEvent[MRM.C_EVENT_AT]))
				eligibility = true;
		}
		else if(theEvent[MRM.C_FOR_EVERY].equals("Day")){
			//Log.i(TAG,"For Every: day");
			if(curTime.substring(11, 15).equals(theEvent[MRM.C_EVENT_AT].substring(11, 15))){
				eligibility = true;
			}
		}
		else if(theEvent[MRM.C_FOR_EVERY].equals("Week")){
			//Log.i(TAG,"For Every: week");
			int year=Integer.parseInt((String) theEvent[MRM.C_EVENT_AT].subSequence(6, 10));
			int month=Integer.parseInt((String) theEvent[MRM.C_EVENT_AT].subSequence(3, 5));
			int day=Integer.parseInt((String) theEvent[MRM.C_EVENT_AT].subSequence(0, 2));
			Calendar calendar = Calendar.getInstance();
			calendar.set(Calendar.YEAR, year);
			calendar.set(Calendar.MONTH, (month-1));
			calendar.set(Calendar.DATE, day);
			int curWeek=calendar.get(Calendar.DAY_OF_WEEK);
			String week3="?";
			switch(curWeek){
			case Calendar.SUNDAY : week3="sun";break;
			case Calendar.MONDAY : week3="mon";break;
			case Calendar.TUESDAY : week3="tue";break;
			case Calendar.WEDNESDAY : week3="wed";break;
			case Calendar.THURSDAY : week3="thu";break;
			case Calendar.FRIDAY : week3="fri";break;
			case Calendar.SATURDAY : week3="sat";break;		
			}
			Log.d(TAG,"Comparing with "+MRM.getTodayWeek()+" and "+week3);
			String todayWeek=MRM.getTodayWeek();
			String eventWeek=curTime.substring(11, 15);
			if(MRM.getTodayWeek().equalsIgnoreCase(week3) &&				
					curTime.substring(11, 15).equals(theEvent[MRM.C_EVENT_AT].substring(11, 15)))			
				eligibility=true;
			//}					
		}
		else if(theEvent[MRM.C_FOR_EVERY].equals("Month")){
			//Log.i(TAG,"For Every: month");
//			//Log.i(TAG,theEvent[MRM.C_EVENT_AT].substring(11,15)+"="+curTime.substring(11,15));
			if(theEvent[MRM.C_EVENT_AT].substring(0, 2).equals(curTime.substring(0,2))&&
					theEvent[MRM.C_EVENT_AT].substring(11, 15).equals(curTime.substring(11,15)))
				eligibility=true;
		}
		else if(theEvent[MRM.C_FOR_EVERY].equals("Year")){
			//Log.i(TAG,"For Every: year");
			if(theEvent[MRM.C_EVENT_AT].substring(0, 2).equals(curTime.substring(0, 2)) &&
					theEvent[MRM.C_EVENT_AT].substring(3, 5).equals(curTime.substring(3, 5))&&
					theEvent[MRM.C_EVENT_AT].substring(11, 15).equals(curTime.substring(11, 15))){
				eligibility=true;
			}
		}
		if(theEvent[MRM.C_PRIORITY].equals("null")){
			Log.i(TAG,theEvent[MRM.C_ID]+"is a HOAX Event");
			return true;
		}
			
	//	}
	//	else Log.i(TAG,theEvent[MRM.C_ID]+" starts at future.");
		return eligibility;
	}
	//tells when the event will happen next.
	public String getNextOccurenceTimestamp(){
		return "men at work!";
	}

}
