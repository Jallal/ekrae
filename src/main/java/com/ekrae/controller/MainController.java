package com.ekrae.controller;

import com.ekrae.delegate.TopicsDelegate;
import com.ekrae.entity.TopicsEntity;
import com.ekrae.model.PostUpdate;
import com.ekrae.model.SearchCriteria;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class MainController {
    private TopicsDelegate topicsDelegate;
    private String searchString = null;

    public MainController(TopicsDelegate topicsDelegate) {
        this.topicsDelegate = topicsDelegate;
    }

    @RequestMapping("/welcome")
    public String index() {

        return new StringBuilder().append("welcome").toString();
    }

    @RequestMapping("/interviews/{title}")
    public String getInterviewQuestions(@PathVariable("title") String title) {

        return new StringBuilder().append("interviews/").append(title).toString();
    }

    @RequestMapping("/java/{title}")
    public String getJavaArticle(@PathVariable("title") String title) {

        return new StringBuilder().append("java/").append(title).toString();
    }

    @RequestMapping("/springboot/{title}")
    public String getSpringbootArticle(@PathVariable("title") String title) {

        return new StringBuilder().append("springboot/").append(title).toString();
    }


    @PostMapping("/update/article")
    public ResponseEntity<?> updateArticle(@Valid @RequestBody PostUpdate postUpdate) {

        List<TopicsEntity> allTopics = this.topicsDelegate.getAllTopics();
        postUpdate.setPublicationsCount(allTopics.size());
        return ResponseEntity.ok(postUpdate);
    }


    @PostMapping("/search/topics")
    public ResponseEntity<?> getTopicsByTag(@Valid @RequestBody SearchCriteria searchCriteria) {

        List<TopicsEntity> allTopics = new ArrayList<>();
        if (null != searchString) {
            Optional<List<TopicsEntity>> allTopicsFromSearch = this.topicsDelegate.getTopicsFromSearch(searchString.toLowerCase());
            if (allTopicsFromSearch.isPresent()) {
                allTopics = allTopicsFromSearch.get();
            }
        } else if (null != searchCriteria.getTag() && searchCriteria.getTag().equalsIgnoreCase("all")) {
            allTopics = this.topicsDelegate.getAllTopics();
        } else {
            Optional<List<TopicsEntity>> optionalTopics = this.topicsDelegate.getTopicByTag(searchCriteria.getTag());
            if (optionalTopics.isPresent()) {
                allTopics = optionalTopics.get();
            }
        }
        this.searchString = null;
        allTopics.sort((e1, e2) -> e2.getPublishDate().compareTo(e1.getPublishDate()));
        return ResponseEntity.ok(allTopics);
    }


    @PostMapping("/search/articles")
    public ResponseEntity<?> getTopicsBykeyword(@Valid @RequestBody SearchCriteria searchCriteria) {
        this.searchString = null;
        List<TopicsEntity> allTopics = new ArrayList<>();
        if (null != searchCriteria.getSearch()) {
            Optional<List<TopicsEntity>> allTopicsFromSearch = this.topicsDelegate.getTopicsFromSearch(searchCriteria.getSearch());
            if (allTopicsFromSearch.isPresent()) {
                allTopics = allTopicsFromSearch.get();
            }
        }
        allTopics.sort((e1, e2) -> e2.getPublishDate().compareTo(e1.getPublishDate()));
        return ResponseEntity.ok(allTopics);
    }



    @RequestMapping("/welcome/{searchString}")
    public ModelAndView getTopicsBykeywordFromArticles(@PathVariable("searchString") String searchString) {

        this.searchString = searchString.toLowerCase();
        return new ModelAndView("redirect:/welcome");
    }

}
