package com.nt.Service;

import com.nt.Dao.CustomerDao;
import com.nt.Dto.CustomerDto;
import com.nt.bo.Customerbo;

public final class Customerserviceimpl implements CustomerService 
{

	private CustomerDao dao;

	public Customerserviceimpl(CustomerDao dao) 
	{
		this.dao = dao;
	}

	@Override
	public String claculatesimpleinterest(CustomerDto dto) throws Exception {
		float sinterst=0.0f;
		Customerbo bo=null;
		int count=0;
		
		sinterst=(dto.getTime()*dto.getRate()*dto.getCamt())*100.0f;
		bo=new Customerbo();
		bo.setCname(dto.getCname());
		bo.setCadd(dto.getCadd());
		bo.setCamt(dto.getCamt());
		bo.setCintst(sinterst);
		count=dao.insert(bo);
		if(count==0)
		{
			return "customer registration failed amt"+dto.getCamt()+"rate"+sinterst;
		}
		else
		{
			return "customer registration successful amt"+dto.getCamt()+"rate"+sinterst;
		}
		
		
	}

}
