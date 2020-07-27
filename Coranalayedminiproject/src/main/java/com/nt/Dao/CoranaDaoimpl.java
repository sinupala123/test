package com.nt.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.nt.Bo.CoranaBo;

public final class CoranaDaoimpl implements CoranaDao
{
	public DataSource ds;
	
	public CoranaDaoimpl(DataSource ds) {
		super();
		this.ds = ds;
	}
	private static final String QUERY="insert into coranatable(cname,cadd,pamt,fbill) values(?,?,?,?)";
	@Override
	public int insert(CoranaBo bo) throws Exception 
	{
		int count=0;
		Connection con=null;
		PreparedStatement ps=null;
		con=ds.getConnection();
		ps=con.prepareStatement(QUERY);
		ps.setString(1, bo.getCname());
		ps.setString(2, bo.getCadd());
		ps.setFloat(3, bo.getPamt());
		ps.setFloat(4, bo.getFbill());
		ps.executeUpdate();
		ps.close();		
		return count;
	}

}
