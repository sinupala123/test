package com.nt.Comp;

import java.util.Arrays;
import java.util.Random;

public  final class Flipkart 
{
	private Courier courier;
	
	public Flipkart()
	{
		System.out.println("Flipkart::0-param constructor");
	}

	public void setCourier(Courier courier)
	{
		System.out.println("Flipkart.setCourier()");
		this.courier = courier;
	}
	public String shopping(String[]items,float[] price)
	{
		System.out.println("Flipkart.shopping()");
		float billamt=0.0f;
		int oid=0;
		String msg=null;
		Random rm=null;
		
		for(float p:price)
		{
			billamt+=p;
			
		}
		rm=new Random();
		
		oid=rm.nextInt(1000);
		msg=courier.delivery(oid);
		return  Arrays.toString(items)+" are purchased  having prices "+Arrays.toString(price)+"  with bill amount"+billamt+ "----"+ msg;
		
		
	}
	

}
