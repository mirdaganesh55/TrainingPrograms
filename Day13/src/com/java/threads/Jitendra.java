package com.java.threads;

public class Jitendra implements Runnable {

	Data data;
	
	Jitendra(Data data) {
		this.data = data;
	}
	
	@Override
	public void run() {
		data.showMsg("Jitendra");
	}

}