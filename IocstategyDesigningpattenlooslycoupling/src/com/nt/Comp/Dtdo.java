package com.nt.Comp;

public final class Dtdo implements Courier 
{
	public Dtdo()
	{
		System.out.println("Dtdo.0-param constructor");
	}
	
	
	
	@Override
	public String delivery(int oid) {
		System.out.println("Dtdo.delivery()");
		
		return "Dtdc courier willbe delivery order id"+  oid  +"order producet";

	}

}
