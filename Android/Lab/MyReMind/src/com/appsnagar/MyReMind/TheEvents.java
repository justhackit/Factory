package com.appsnagar.MyReMind;


import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;
import android.util.Log;

public class TheEvents {

	private SQLiteDatabase      sqlDB;
    private DatabaseHelper      dbHelper;
    private static final String TAG="MyReMind:"+TheEvents.class.getSimpleName();
	static final int VERSION=1;
	static final String DATABASE="theevents.db";
	static final String TABLE="theevents";
	
	public static final String C_ID = BaseColumns._ID;
	public static final String C_CREATED_AT = "created_at";
	public static final String C_EVENT_NAME = "event_name";
	public static final String C_EVENT_DESC = "event_desc";
	public static final String C_EVENT_AT = "event_at";
	public static final String C_FOR_EVERY = "for_every";
	public static final String C_ACTION = "do_action";
	public static final String C_ROO_TIME = "roo_time";
	public static final String C_PRIORITY = "priority";
	public static final String C_RESERVE = "reserve";
	private static final String createStatement = "create table " + TABLE + "(" + C_ID + " integer primary key AUTOINCREMENT," +
		C_CREATED_AT + " TIMESTAMP DEFAULT (datetime('now')), " +	C_EVENT_NAME + " text NOT NULL," +
		C_EVENT_DESC + " text," + C_EVENT_AT + " text NOT NULL," + C_FOR_EVERY + " text NOT NULL," + C_ACTION + " text," +
		C_ROO_TIME + " text DEFAULT 'xxx'," +C_PRIORITY +" text DEFAULT 'low'," + C_RESERVE + " text DEFAULT 'x-x')";

	//Database Helper class
    private static class DatabaseHelper extends SQLiteOpenHelper {

        DatabaseHelper(Context context) {
            super(context, DATABASE, null, VERSION);
        }

        @Override
        public void onCreate(SQLiteDatabase db) {            
            db.execSQL(createStatement);
            Log.i(TAG,"DB Helper: Table Created");
        }

        @Override
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            db.execSQL("DROP TABLE IF EXISTS " + TABLE);
            onCreate(db);
        }
    }
	public TheEvents(Context context) {
		dbHelper = new DatabaseHelper(context);        
	}
	//Adding an event
	public boolean addEvent(ContentValues contentvalues) {
		boolean success=false;
        sqlDB = dbHelper.getWritableDatabase();
        try {
			sqlDB.insertWithOnConflict(TABLE, null, contentvalues, SQLiteDatabase.CONFLICT_FAIL);
			Log.i(TAG,"addEvent():Event added");
			success=true;
		} catch (Exception e) {
			Log.e(TAG, "addEvent():Event NOT added",e);
		} finally {
			sqlDB.close();
			Log.i(TAG,"DB closed after adding event.");
		}
		return success;
	}
	//delete an event
	public boolean deleteEvent(String id){
		boolean result=false;
        sqlDB = dbHelper.getWritableDatabase();
		try {
			sqlDB.delete(TABLE, C_ID+"="+id, null);
			result=true;
			Log.d(TAG,"deleteEvent(): Id "+id+" is deleted.");
		} catch (Exception e) {
			Log.e(TAG, "deleteEvent():Failed",e);			
		}
		finally{			
			sqlDB.close();
		}
		return result;
	}
	//Edit an event
	public boolean editEvent(String id,ContentValues values){
	boolean result=false;
	
	sqlDB=dbHelper.getWritableDatabase();
	try {
		sqlDB.update(TABLE, values,C_ID+"="+id, null);
		result=true;
		Log.d(TAG,"editEvent(): Success");
	} catch (Exception e) {
		Log.e(TAG, "editEvent():Failed",e);			
	}
	finally{			
		sqlDB.close();
	}
	return result;
	}
	//Returns the cursor for the database
	public Cursor getAllEvents(){
		Cursor cursor = null;
		try {
			sqlDB=dbHelper.getWritableDatabase();
			cursor= sqlDB.query(TABLE, null, null, null, null, null,null);		
			cursor.moveToFirst();
		} catch (Exception e) {
			Log.e(TAG, "editEvent():Failed",e);			
		}
		finally{			
			sqlDB.close();
		}
		return cursor;
		
	}
	public Cursor getAllEventsOn(String theDate){
		Cursor cursor = null;
		try {
			sqlDB=dbHelper.getWritableDatabase();
			String theQuery="Select * from "+TABLE+" where "+TheEvents.C_EVENT_AT+" like "+"'%"+theDate+"'%";
			//cursor= sqlDB.query(TABLE, null, null, null, null, null,null);
			cursor=sqlDB.rawQuery(theQuery, null);
			cursor.moveToFirst();
		} catch (Exception e) {
			Log.e(TAG, "editEvent():Failed",e);			
		}
		finally{			
			sqlDB.close();
		}
		while(cursor.isAfterLast()==false)
		{
			Log.d(TAG,"From getAllEventsOn: "+cursor.getString(cursor.getColumnIndex(this.C_EVENT_NAME)));
			cursor.moveToNext();
		}
		cursor.moveToFirst();
		return cursor;
		
	}
	public Cursor getAllEvents(String cEventName) {
		Cursor cursor = null;
		try {
			sqlDB=dbHelper.getWritableDatabase();
			cursor= sqlDB.query(TABLE, null, null, null, null, null,cEventName);	
			cursor.moveToFirst();
		} catch (Exception e) {
			Log.e(TAG, "editEvent():Failed",e);			
		}
		finally{			
			sqlDB.close();
		}
		return cursor;
	}	
	public Cursor getEvent(String id){
		Cursor cursor = null;
		try {
			sqlDB=dbHelper.getWritableDatabase();
			cursor= sqlDB.query(TABLE, null, BaseColumns._ID+"="+id, null, null, null, null);	
			cursor.moveToFirst();
		} catch (Exception e) {
			Log.e(TAG, "editEvent():Failed",e);			
		}
		finally{			
			sqlDB.close();
		}
		return cursor;		
	}
}

