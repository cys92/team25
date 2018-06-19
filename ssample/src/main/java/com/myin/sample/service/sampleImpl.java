package com.myin.sample.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myin.sample.domain.sampleVo;
import com.myin.sample.persistence.sampleservice_mapper;



@Service("sampleImpl")
public class sampleImpl implements sampleservice{
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public ArrayList<sampleVo> samplememberall() {
		
		sampleservice_mapper sm = sqlsession.getMapper(com.myin.sample.persistence.sampleservice_mapper.class);
		ArrayList<sampleVo> slist = sm.samplememberall();
		
		return slist;
	}

}
