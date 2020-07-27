package com.nt.Controller;

import com.nt.Dto.CoranaDto;
import com.nt.Service.CoranaService;
import com.nt.Vo.CoranaVo;

public class MainController 
{
	public CoranaService service;

	public MainController(CoranaService service) {
		super();
		this.service = service;
	}
	public String process(CoranaVo vo) throws Exception
	{
		CoranaDto dto=null;
		String result;
		dto=new CoranaDto();
		dto.setCname(vo.getCname());
		dto.setCadd(vo.getCadd());
		dto.setDay(Integer.parseInt(vo.getDay()));
		dto.setPamt(Float.parseFloat(vo.getPamt()));
		dto.setFbill(dto.getFbill());
		result=service.HospitalBillAmount(dto);
		return result;
		
		
		
		
	}
	

}
