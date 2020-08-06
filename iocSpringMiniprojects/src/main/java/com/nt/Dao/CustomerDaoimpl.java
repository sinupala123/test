package com.nt.Dao;

import com.nt.bo.Customerbo;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import com.nt.Dao.CustomerDao;

public final class CustomerDaoimpl implements CustomerDao
{
	private  static final  String QUERY="insert into product1(cname,cadd,camt,cintst) values(?,?,?,?)";
	private DataSource ds;

	public CustomerDaoimpl(DataSource ds) {
		super();
		this.ds = ds;
	}

	@Override
	public int insert(Customerbo bo) throws Exception {
		Connection con=null;
		int count=0;
		PreparedStatement ps=null;
		
		con=ds.getConnection();
		ps=con.prepareStatement(QUERY);
		ps.setString(1, bo.getCname());
		ps.setString(2, bo.getCadd());
		ps.setFloat(3, bo.getCamt());
		ps.setFloat(4, bo.getCintst());
		ps.executeUpdate();
		ps.close();
		return count;
	}

}
