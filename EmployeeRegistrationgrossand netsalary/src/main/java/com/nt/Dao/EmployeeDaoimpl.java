package com.nt.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.nt.Bo.EmployeeBo;

public final class EmployeeDaoimpl implements EmployeeDao {
	private static final String sql="insert into employee4(enaame,eadd,Bsalary,Gsalary,Nsalary) values(?,?,?,?,?)";
	 public DataSource ds;
	 

	public EmployeeDaoimpl(DataSource ds) {
		super();
		this.ds = ds;
	}


	@Override
	public int insert(EmployeeBo bo) throws SQLException {		
	Connection con=null;
	PreparedStatement ps=null;
	int count=0;
	con=ds.getConnection();
	ps=con.prepareStatement(sql);
	ps.setString(1, bo.getEname());
	ps.setString(2, bo.getEadd());
	ps.setFloat(3, bo.getBsalary());
	ps.setFloat(4, bo.getGsalary());
	ps.setFloat(5, bo.getNsalary());
	count=ps.executeUpdate();
	ps.close();
	
		return count;
	}

}
