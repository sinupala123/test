package com.nt.Test;

import java.util.Scanner;

import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;

import com.nt.Controller.MainController;
import com.nt.Vo.CoranaVo;

public class Coranatest {

	public static void main(String[] args) 
	{
		Scanner sc=null;
		String name=null,add=null,day=null,amount=null;
		CoranaVo vo=null;
		String result;
		DefaultListableBeanFactory factory=null;
		XmlBeanDefinitionReader reader=null;
		MainController controller=null;
		sc=new Scanner(System.in);
		System.out.println("enter a name");
		name=sc.next();
		System.out.println("enter your address");
		add=sc.next();
		System.out.println("enter how many day you stay in hospital");
		day=sc.next();
		System.out.println("enter a bill amount day wise");
		amount=sc.next();
		vo=new CoranaVo();
		vo.setCadd(add);
		vo.setCname(name);
		vo.setDay(day);
		vo.setPamt(amount);
		factory=new DefaultListableBeanFactory();
		reader=new XmlBeanDefinitionReader(factory);
		reader.loadBeanDefinitions("com/nt/Cfgs/Applicationcontext.xml");
		controller=factory.getBean("controller",MainController.class);
		try{
		result=controller.process(vo);
			System.out.println(result);
		}
		catch(Exception e)
		{
			System.out.println("internal error");
			e.printStackTrace();
		}
		
		
		
		

	}

}
