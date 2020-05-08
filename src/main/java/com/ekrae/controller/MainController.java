package com.ekrae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/welcome")
	public String index(){
		return "welcome";
		
	}
	@RequestMapping("/article")
	public String getArticle(){
		return "article";

	}

	@RequestMapping("/Interviews")
	public String getInterviewsList(){
		return "interviewsList";

	}
	@RequestMapping("/Java")
	public String getJavaList(){
		return "JavaList";

	}

	@RequestMapping("/Springboot")
	public String getSpringbootList(){
		return "springbootList";

	}
	
}
