package com.nt.factory;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.nt.Comp.Courier;
import com.nt.Comp.Dtdo;
import com.nt.Comp.Flipkart;
import com.nt.Comp.flishLight;
import com.nt.comp.BlueDart;

public final class FactoryDesingning 
{
	private static Properties prop;
	static InputStream input=null;
	
	static {
		try {
			 input=new FileInputStream("src/com/nt/commones/info.properties");
			 prop=new Properties();
			prop.load(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static Flipkart getInstance()throws Exception
	{
		Courier courier=null;
		Flipkart flipkart=null;
		Class c1=null;
		//courier=(Courier)Class.forName(prop.getProperty("psd.depend")).newInstance();
		c1=Class.forName(prop.getProperty("psd.depend"));
		courier=(Courier)c1.newInstance();
		
		
		 flipkart=new Flipkart();
		  //assign depedent class object to taget class object
		  flipkart.setCourier(courier);
		return  flipkart ;
		
	}

	
}
