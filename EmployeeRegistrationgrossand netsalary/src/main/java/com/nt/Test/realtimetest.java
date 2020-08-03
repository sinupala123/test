package com.nt.Test;

import java.util.Scanner;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;

import com.nt.Controller.MainController;
import com.nt.vo.EmployeeVo;

public class realtimetest {

	public static void main(String[] args) 
	{
		Scanner sc=null;
		String name=null,add=null,basic=null,da=null,mi=null,hra=null,tax=null;
		EmployeeVo vo=null;
		DefaultListableBeanFactory factory=null;
		XmlBeanDefinitionReader reader=null;
		MainController controller=null;
		String result=null;
		sc=new Scanner(System.in);
		System.out.println("enter a customername");
		name=sc.next();
		System.out.println("enter a address");
		add=sc.next();
		System.out.println("enter a basic salary");
		basic=sc.next();
		System.out.println("enter a house rent allowance");
		hra=sc.next();
		System.out.println("enter a da");
		da=sc.next();
		System.out.println("enter a medical insurance");
		mi=sc.next();
		System.out.println("enter a incometx");
		tax=sc.next();
		vo=new EmployeeVo();
		vo.setEname(name);
		vo.setEadd(add);
		vo.setHra(hra);
		vo.setIncometax(tax);
		vo.setDa(da);
		vo.setMi(mi);
		vo.setBsalary(basic);
		
		factory=new DefaultListableBeanFactory();
		reader=new XmlBeanDefinitionReader(factory);
		reader.loadBeanDefinitions("com/nt/cfgs/ApllicationContext.xml");
		controller=factory.getBean("controller1",MainController.class);
		try {
			result=controller.process(vo);
			System.out.println(result);
		}
		catch(Exception e)
		{
			System.out.println("internal problem");
			e.printStackTrace();
			
		}
		
		

	}

}
