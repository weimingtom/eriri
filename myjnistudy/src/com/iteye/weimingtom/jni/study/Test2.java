package com.iteye.weimingtom.jni.study;

public class Test2 {
	public native String mycall();
	
	public native void print();
	
	private native int sumArray(int[] arr);
    public void testSumArray() {
        int arr[] = new int[10];
        for (int i = 0; i < 10; i++) {
            arr[i] = i;
        }
        int sum = this.sumArray(arr);
        System.out.println("sum = " + sum);
    }
	
    private static native int[][] initInt2DArray(int size);
    public static void testObjectArray() {
        int[][] i2arr = initInt2DArray(3);
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                 System.out.print(" " + i2arr[i][j]);
            }
            System.out.println();
        }
    }
    
    private native String getLine(String prompt);
    public void testPrompt() {
        String input = this.getLine("Type a line: ");
        System.out.println("User typed: " + input);
    }
    
    private native String getLine2(String prompt);
    public void testPrompt2() {
        String input = this.getLine2("Type a line: ");
        System.out.println("User typed: " + input);
    }
    
    private String s;
    private native void accessField();
    public void testInstanceFieldAccess() {
        this.s = "abc";
        this.accessField();
        System.out.println("In Java:");
        System.out.println("  c.s = \"" + this.s + "\"");
    }
    
    private native void accessField2();
    public void testInstanceFieldAccess2() {
        this.s = "abc";
        this.accessField2();
        System.out.println("In Java:");
        System.out.println("  c.s = \"" + this.s + "\"");
    }
    
    private native void nativeMethod();
    private void callback() {
        System.out.println("In Java");
    }
    public void testInstanceMethodCall() {
        this.nativeMethod();
    }
    
    private static native void initIDs();
    private native void nativeMethod2();
    public void testInstanceMethodCall2() {
    	initIDs();
    	this.nativeMethod();
    }
    
    private static native String nativeMethod3();
    public void testMyNewString() {
        System.out.println("Native method returns: " + nativeMethod3());
    }
    
    private static native String nativeMethod4();
    public void testMyNewString2() {
        System.out.println("Native method returns: " + nativeMethod4());
    }
    
    private static int si;
    private native void accessField5();
    public void testStaticFieldAccess() {
        si = 100;
        this.accessField5();
        System.out.println("In Java:");
        System.out.println("  StaticFieldAccess.si = " + si);
    }
    
    private native void nativeMethod6();
    private static void callback2() {
        System.out.println("In Java");
    }
    public void testStaticMethodCall() {
        this.nativeMethod6();
    }
    
    private static native String nativeMethod7();
    public void testMyNewString3() {
        System.out.println("Native method returns: " + nativeMethod7());
    }
}
