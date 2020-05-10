package com.ekrae.controller;

import com.ekrae.delegate.TopicsDelegate;
import com.ekrae.entity.TopicsEntity;
import com.ekrae.model.SearchCriteria;
import com.ekrae.model.Topic;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	@RequestMapping("/articles/{title}")
	public String getArticle(@PathVariable("title") String title){
		System.out.println("******HELLOOOOO"+title);
		System.out.println("******HELLOOOOO"+new StringBuilder().append("interviews/").append(title).toString());
		return new StringBuilder().append("interviews/").append(title).toString();
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
		return ResponseEntity.ok(allTopics);
	}
}
