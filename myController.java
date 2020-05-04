package com.ekrae.starter;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class myController {

	@RequestMapping("/hello")
	public String SayHi(){
		return "Hi Jallal";
		
	}
	
}
