package com.pet.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@org.springframework.stereotype.Controller
public class InitController  {

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView handleRequest() throws Exception {
		List modules=new ArrayList();
		modules.add("首页");
		modules.add("资讯");
		modules.add("专题");
		modules.add("杂志");
		modules.add("知道");
		// TODO Auto-generated method stub
		return new ModelAndView("/welcome","modules",modules);
	}

}
