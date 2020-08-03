package com.nt.Service;

import java.sql.SQLException;

import com.nt.Dto.EmployeeDto;

public interface EmployeeService 
{
	public String caculateGrosssalary(EmployeeDto dto) throws SQLException;

}
