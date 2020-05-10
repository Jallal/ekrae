package com.ekrae.controller;

import com.ekrae.delegate.TopicsDelegate;
import com.ekrae.entity.TopicsEntity;
import com.ekrae.model.SearchCriteria;
import com.ekrae.model.Topic;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class MainController {
	private TopicsDelegate topicsDelegate;


	public MainController(TopicsDelegate topicsDelegate){
		this.topicsDelegate=topicsDelegate;
	}

	@RequestMapping("/welcome")
	public String index(){
		return "welcome";
		
	}
	@RequestMapping("/article")
	public String getArticle(){
		return "interviews/article";

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

	@RequestMapping("/challenge")
	public String getArticleById(){
		return "challenge";

	}

	@PostMapping("/search/topics")
	public ResponseEntity<?> getTopicsByTag(@Valid @RequestBody SearchCriteria searchCriteria) throws Exception {
		System.out.println("***************************** "+searchCriteria.getTag());
		List<TopicsEntity> allTopics = new ArrayList<>();
		if(searchCriteria.getTag().equalsIgnoreCase("all")){
			 allTopics = this.topicsDelegate.getAllTopics();
		}else {
			Optional<List<TopicsEntity>> optionalTopics = this.topicsDelegate.getTopicByTag(searchCriteria.getTag());
			if (optionalTopics.isPresent()) {
				allTopics = optionalTopics.get();
			}
		}
		/*Optional<UserEntity> entity = this.service.getUser(user.username);
		AjaxResponseBody result = new AjaxResponseBody();
		if (!entity.isPresent()) {
			user.setRole("user");
		} else {
			user.setRole(entity.get().getRole());
		}
		result.setMsg("success");*/
		return ResponseEntity.ok(allTopics);
	}



	
}
