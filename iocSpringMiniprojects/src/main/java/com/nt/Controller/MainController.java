package com.nt.Controller;

import com.nt.Dto.CustomerDto;
import com.nt.Service.CustomerService;
import com.nt.vo.CustomerVo;

public class MainController
{
	private CustomerService service;

	public MainController(CustomerService service) {

		this.service = service;
	}
	
	public String processCustomer(CustomerVo vo) throws Exception
	{
		CustomerDto dto=null;
		
		dto=new CustomerDto();
		String result;
		dto.setCadd(vo.getCadd());
		dto.setCname(vo.getCname());
		dto.setRate(Float.parseFloat(vo.getRate()));
		dto.setCamt(Float.parseFloat(vo.getCamt()));
		dto.setTime(Float.parseFloat(vo.getTime()));
		result=service.claculatesimpleinterest(dto);
		return result;
	}
	
	
	
	
	
}
