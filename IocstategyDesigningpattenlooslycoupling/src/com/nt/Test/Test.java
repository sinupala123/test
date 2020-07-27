package com.nt.Test;

import com.nt.Comp.Flipkart;
import com.nt.factory.FactoryDesingning;

public class Test
{
	public static void main(String[] args) throws Exception 
	{
		Flipkart flipkart=null;
		flipkart=FactoryDesingning.getInstance();
		System.out.println(flipkart .shopping(new String[] {"raincort","umberlla" ,"flue"} , new float[] {2000,3000,599}
										)  
							);
		
	}

}
