package com.iteye.weimingtom.mrubyjni;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import android.content.Context;
import android.util.Log;

public class MRubyJNI {
	private static final boolean D = true;
	private static final String TAG = "MRubyJNI";
	
	private static final String FIB_RUBY = 
			"# calculate Fibonacci(20)\n" + 
			"# for benchmark\n" + 
			"def fib(n)\n" +
			"  if n<2\n" + 
			"    n\n" + 
			"  else\n" + 
			"    fib(n-2)+fib(n-1)\n" + 
			"  end\n" + 
			"end\n" + 
			"print(fib(20), \"\\n\");\n" + 
			"print(\"Hello, world !\")";
	
	public native int exec(String filename);
	
	static {
		System.loadLibrary("application");
	}
	
	private Context mContext;
	
	public MRubyJNI(Context context) {
		this.mContext = context;
	}
	
	private void log(String str) {
		Log.d(TAG, str);
	}
	
	private String readfile(String filename) {
//		return FIB_RUBY;//"hello xxx";
		if (filename == null) {
			return "";
		}
		if (filename.startsWith("./") || filename.startsWith(".\\")) {
			filename = filename.substring(2);
		}
    	StringBuffer sb = new StringBuffer();
		InputStream istr = null;
		InputStreamReader reader = null;
		BufferedReader rbuf = null;
		try {
			istr = mContext.getAssets().open(filename);
			reader = new InputStreamReader(istr, "utf8");
			rbuf = new BufferedReader(reader);
			String line;
			while (null != (line = rbuf.readLine())) {
				sb.append(line);
				sb.append("\n");
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (rbuf != null) {
				try {
					rbuf.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (istr != null) {
				try {
					istr.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		if (D) {
			Log.e(TAG, "readfile " + filename + " return ====> " + sb.toString());
		}
		return sb.toString();
    }
	
	private int isfileexist(String filename) {
//		if (filename != null && filename.equals("fib.rb")) {
//			return 1;
//		} else {
//			return 0;
//		}
		if (filename == null) {
			return 0;
		}
		if (filename.startsWith("./") || filename.startsWith(".\\")) {
			filename = filename.substring(2);
		}
		InputStream istr = null;
		try {
			istr = mContext.getAssets().open(filename);
		} catch (IOException e) {
			//e.printStackTrace();
		} finally {
			if (istr != null) {
				try {
					istr.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				if (D) {
					Log.e(TAG, "isfileexist return 1 : " + filename);
				}
				return 1;
			}
		}
		if (D) {
			Log.e(TAG, "isfileexist return 0 : " + filename);
		}
		return 0;
	}
}
