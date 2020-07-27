package com.nt.Comp;

public class flishLight implements Courier {


	
	public flishLight()
	{
		System.out.println("flishLight::0-paramconstructor");
	}
	public String delivery(int oid) {
		return "flishLight order will be"+  oid+ "producet"  ;
	}

}
