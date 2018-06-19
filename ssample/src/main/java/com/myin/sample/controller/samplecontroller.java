package com.myin.sample.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myin.sample.domain.sampleVo;
import com.myin.sample.service.sampleservice;

@Controller
public class samplecontroller {
	
	@Autowired(required=false)
	sampleservice ss;
	
	@RequestMapping (value="/sampleController")
	public String samplememberall(Model model){
		
		ArrayList<sampleVo> slist = ss.samplememberall();
		
		model.addAttribute("slist", slist);
		
		return "sample/samplelist";
	}
	

}
