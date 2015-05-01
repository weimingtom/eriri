package com.iteye.weimingtom.jni.study;

import android.app.Activity;
import android.os.Bundle;

public class MyJNIStudyActivity extends Activity {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        int result = Test.mycall(0);  
        System.out.println("result is " + result); 
        
        System.out.println("result2 is " + new Test2().mycall());
        Test2 test2 = new Test2();
        test2.print();
        test2.testSumArray();
        Test2.testObjectArray();
        test2.testPrompt();
        test2.testPrompt2();
        
        test2.testInstanceFieldAccess();
        test2.testInstanceFieldAccess2();
        test2.testInstanceMethodCall();
        test2.testInstanceMethodCall2();
        test2.testMyNewString();
        test2.testMyNewString2();
        test2.testStaticFieldAccess();
        test2.testStaticMethodCall();
        test2.testMyNewString3();
    }
    
    static {  
        System.loadLibrary("jnistudy");  
    }
}

