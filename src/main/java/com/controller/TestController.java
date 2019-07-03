package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Ting;
import com.service.TingService;

@Controller
@RequestMapping("/ti")
public class TestController {
	

	@Autowired
	private TingService tingService;
	
	
	@RequestMapping(value="/test",method=RequestMethod.POST)
	@ResponseBody
	public Ting Test(Ting ting ){
		
		Ting tin=tingService.findTing(ting);
		
		return tin;
		
	}
}
