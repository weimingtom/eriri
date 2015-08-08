package com.example.mrubyjni;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

import com.iteye.weimingtom.mrubyjni.MRubyJNI;

public class MainActivity extends Activity {
	private static final String TAG = "MainActivity";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.main);
		MRubyJNI ruby = new MRubyJNI(this);
		Log.e(TAG, "mruby.exec return : " + ruby.exec("test_fib.rb"));
	}
}
