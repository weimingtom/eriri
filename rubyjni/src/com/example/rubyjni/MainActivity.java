package com.example.rubyjni;

import com.iteye.weimingtom.rubyjni.RubyJNI;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class MainActivity extends Activity {
	private static final String TAG = "MainActivity";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.main);
		RubyJNI ruby = new RubyJNI(this);
		Log.e(TAG, "mycall : " + ruby.exec(0));
	}
}
