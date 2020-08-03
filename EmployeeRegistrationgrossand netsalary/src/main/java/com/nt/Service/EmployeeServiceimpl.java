package com.nt.Service;

import java.sql.SQLException;

import com.nt.Bo.EmployeeBo;
import com.nt.Dao.EmployeeDao;
import com.nt.Dto.EmployeeDto;

public final class EmployeeServiceimpl implements EmployeeService {
	public EmployeeDao dao;

	public EmployeeServiceimpl(EmployeeDao dao) {
		super();
		this.dao = dao;
	}

	@Override
	public String caculateGrosssalary(EmployeeDto dto) throws SQLException 
	{
		EmployeeBo bo=null;
		bo=new EmployeeBo();
		float grosssalary=0.0f;
		float netsalary=0.0f;
		int count=0;
		
		bo.setEname(dto.getEname());
		bo.setDa(dto.getDa());
		bo.setEadd(dto.getEadd());
		bo.setHra(dto.getHra());
		bo.setMi(dto.getMi());
		bo.setBsalary(dto.getBsalary());	
		grosssalary=dto.getHra()+dto.getMi()+dto.getDa()+dto.getBsalary();
		netsalary=grosssalary-dto.getIncometeax();
		bo.setGsalary(grosssalary);
		bo.setNsalary(netsalary);
		count=dao.insert(bo);
		if(count==0)
		{
		return  "record  not founded" ;
		}
		else
		{
		
		return "record found basic salary"+dto.getBsalary()+"gross salary"+grosssalary+"net salary"+netsalary;
		}
		

	}

}
