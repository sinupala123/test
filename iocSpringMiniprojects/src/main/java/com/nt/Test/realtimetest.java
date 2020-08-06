package com.nt.Test;

import java.util.Scanner;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;

import com.nt.Controller.MainController;
import com.nt.vo.CustomerVo;

public class realtimetest {

	public static void main(String[] args) 
	{
		Scanner sc=null;
		String name=null,add=null,amt=null,rate=null,time=null;
		CustomerVo vo=null;
		DefaultListableBeanFactory factory=null;
		XmlBeanDefinitionReader reader=null;
		MainController controller=null;
		String result=null;
		sc=new Scanner(System.in);
		System.out.println("enter a customername");
		name=sc.next();
		System.out.println("enter a address");
		add=sc.next();
		System.out.println("enter a princple amount");
		amt=sc.next();
		System.out.println("enter a rate");
		rate=sc.next();
		System.out.println("enter a time");
		time=sc.next();
		vo=new CustomerVo();
		vo.setCadd(add);
		vo.setCname(name);
		vo.setRate(rate);
		vo.setTime(time);
		vo.setCamt(amt);
		factory=new DefaultListableBeanFactory();
		reader=new XmlBeanDefinitionReader(factory);
		reader.loadBeanDefinitions("com/nt/Cfgs/ApllicationContext.xml");
		controller=factory.getBean("controller",MainController.class);
		try {
			result=controller.processCustomer(vo);
			System.out.println(result);
		}
		catch(Exception e)
		{
			System.out.println("internal problem");
			e.printStackTrace();
			
		}
		
		

	}

}
