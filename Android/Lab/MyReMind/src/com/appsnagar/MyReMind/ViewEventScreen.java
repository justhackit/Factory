package com.appsnagar.MyReMind;



import android.app.ListActivity;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import android.widget.SimpleCursorAdapter.ViewBinder;

public class ViewEventScreen extends ListActivity{
	private static final String TAG=ViewEventScreen.class.getSimpleName();
    private static MyReMindApp MRM;
	private TheEvents theEvents;	
	Cursor allEvents;
	ListAdapter adapter;
	final static String[] FROM = { TheEvents.C_EVENT_NAME, TheEvents.C_EVENT_AT,TheEvents.C_FOR_EVERY};
	final static int[] TO = { R.id.eventNameRow, R.id.eventAtRow, R.id.forEveryRow };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//setContentView(R.layout.view_event_screen);
		theEvents = new TheEvents(this);
	}

	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		MRM=(MyReMindApp)getApplicationContext();
		allEvents = theEvents.getAllEvents(TheEvents.C_EVENT_NAME);
		Log.i(TAG,"AllEvents: No.of rows retrieved = "+allEvents.getCount());
		startManagingCursor(allEvents);
		// setup Adapter
		//adapter = new SimpleCursorAdapter(this, R.layout.view_event_screen_row, allEvents, FROM, TO);
		adapter = new SimpleCursorAdapter(this, 
                // Use a template that displays a text view
				R.layout.view_event_screen_row, 
                // Give the cursor to the list adatper
                allEvents, 
                // Map the NAME column in the people database to...
                FROM ,
                // The "text1" view defined in the XML template
                TO); 
		((SimpleCursorAdapter) adapter).setViewBinder(VIEW_BINDER);

		//setListAdapter(adapter);
		setListAdapter(adapter);
	}
	static final ViewBinder VIEW_BINDER= new ViewBinder(){
		public boolean setViewValue(View view,Cursor cursor,int columnIndex){
			if(view.getId()!=R.id.eventAtRow)
				return false;
			String atTime=cursor.getString(columnIndex);
			atTime=atTime.substring(0, 10)+","+atTime.substring(11, 13)+":"+MRM.getMinutesIn(atTime);
			((TextView) view).setText(atTime);
			return true;
		}
	};
	
	protected void onListItemClick(ListView l, View v, int position, long id) {
		// TODO Auto-generated method stub
		super.onListItemClick(l, v, position, id);
		Cursor toDelete=theEvents.getAllEvents(TheEvents.C_EVENT_NAME);
		toDelete.moveToFirst();
		for(int i=0;i<position;i++) toDelete.moveToNext();
		String ID=toDelete.getString(toDelete.getColumnIndex(TheEvents.C_ID));
		Intent editEventScreen = new Intent(this,
				EditEventScreen.class);
 		editEventScreen.putExtra("id", ID);
 		//startActivity(editEventScreen);  <<-------Work in progress	
        
	}
}
