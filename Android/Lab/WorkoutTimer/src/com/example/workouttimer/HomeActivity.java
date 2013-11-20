package com.example.workouttimer;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Toast;
import android.widget.ToggleButton;

public class HomeActivity extends Activity {

	private RadioGroup radioGroup;
	private RadioButton radioButton;
	private Spinner theValues;
	private ToggleButton onOffButton;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_home);
		radioGroup=(RadioGroup)findViewById(R.id.radioGroup1);
		theValues=(Spinner)findViewById(R.id.spinner1);
		onOffButton=(ToggleButton)findViewById(R.id.toggleButton1);
		//onOffButton.setOnClickListener(new onOffButtonListener());
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.home, menu);
		return true;
	}
	
	public void onOffClicked(View view){
	    // Is the toggle on?
	    boolean on = ((ToggleButton) view).isChecked();
	    int selectedId = radioGroup.getCheckedRadioButtonId();
	    radioButton = (RadioButton) findViewById(selectedId);
	    String valueStr=String.valueOf(theValues.getSelectedItem());
	    int value=Integer.parseInt(valueStr);
	    int totalSeconds=value * (radioButton.getText().toString().equalsIgnoreCase("Seconds")?1:60);
	    Toast.makeText(getBaseContext(), "Interval:"+totalSeconds+" secs", Toast.LENGTH_LONG)
        .show();
	    /*
	    if (on) {
	    	Toast.makeText(getBaseContext(), "Timer started", Toast.LENGTH_LONG)
            .show();
	    } else {
	        Toast.makeText(getBaseContext(), "Timer stopped", Toast.LENGTH_LONG)
            .show();
            
	    }
	    */
	    
	}

}
