package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.TingMapper;
import com.pojo.Ting;

@Service
public class TingServiceImpl  implements TingService{
	
	@Autowired
	private TingMapper tingMapper;	

	@Override
	public Ting findTing(Ting ting) {
		
		return tingMapper.GetTing(ting);
		
	}

}
