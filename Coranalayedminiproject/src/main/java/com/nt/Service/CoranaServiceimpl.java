package com.nt.Service;

import com.nt.Bo.CoranaBo;
import com.nt.Dao.CoranaDao;
import com.nt.Dto.CoranaDto;

public final class CoranaServiceimpl implements CoranaService 
{
	public CoranaDao dao; 

	public CoranaServiceimpl(CoranaDao dao) {
		super();
		this.dao = dao;
	}

	@Override
	public String HospitalBillAmount(CoranaDto dto) throws Exception
	{
		CoranaBo bo=null;
		float billamount=0.0f;
		int count=0;
		bo=new CoranaBo();
		billamount=(dto.getDay()*dto.getPamt());
		bo.setCname(dto.getCname());
		bo.setCadd(dto.getCadd());
		bo.setPamt(dto.getPamt());
		bo.setFbill(billamount);
		count=dao.insert(bo);
		if (count==1)
		{
			return "not generated  amount"+dto.getPamt()  +"day"+dto.getDay() +"bill amounnt"+billamount;
		}
		else
		{
			return " generated  amount"+dto.getPamt() +"day"+dto.getDay() +"bill amounnt"+billamount;
		}
		
	}

}
