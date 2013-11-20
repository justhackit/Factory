package com.appsnagar.MyReMind;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class HomeScreen extends Activity {

	public void onCreate(Bundle bundle) {
		super.onCreate(bundle);
		setContentView(R.layout.homescreen);
		Button addEvent = (Button) findViewById(R.id.addEvent_homescreen_btn);
		addEvent.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				Intent addScreen = new Intent(HomeScreen.this,
						AddEventScreen.class);
				startActivity(addScreen);
			}
		});
		Button viewEvent = (Button) findViewById(R.id.viewEvent_homescreen_btn);
		viewEvent.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				Intent viewScreen = new Intent(HomeScreen.this,
						ViewEventScreen.class);
				startActivity(viewScreen);
			}
		});
		Button deleteEvent = (Button) findViewById(R.id.DeleteEvent_homescreen_btn);
		deleteEvent.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				Intent deleteScreen = new Intent(HomeScreen.this,
						DeleteEventScreen.class);
				startActivity(deleteScreen);
			}
		});

	}
}
