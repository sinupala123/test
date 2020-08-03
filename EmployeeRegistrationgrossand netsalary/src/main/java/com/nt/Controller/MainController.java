package com.nt.Controller;

import java.sql.SQLException;

import com.nt.Dto.EmployeeDto;
import com.nt.Service.EmployeeService;
import com.nt.vo.EmployeeVo;

public final class MainController {
	public EmployeeService service;
	
	public MainController(EmployeeService service) {
		super();
		this.service = service;
	}

	public String process(EmployeeVo vo) throws SQLException
	{
		EmployeeDto dto=null;
		dto=new EmployeeDto();
		String result=null;
		dto.setEname(vo.getEname());
		dto.setEadd(vo.getEadd());
		dto.setBsalary(Float.parseFloat(vo.getBsalary()));
		dto.setHra(Float.parseFloat(vo.getHra()));
		dto.setDa(Float.parseFloat(vo.getDa()));
		dto.setMi(Float.parseFloat(vo.getMi()));
		dto.setIncometeax(Float.parseFloat(vo.getIncometax()));
		result=service.caculateGrosssalary(dto);
		return result;
		
		
		
		
	}

}
