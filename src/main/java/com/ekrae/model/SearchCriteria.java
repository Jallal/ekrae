package com.ekrae.model;

import java.time.Instant;

public class SearchCriteria {
    private int id;
    private String tag;
    private String title;
    private String level;
    private String desc;
    private Instant publish_time;
    private String article_Info;
    private String search;


    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }


    public String getArticleInfo() {
        return article_Info;
    }

    public void setArticleInfo(String articleInfo) {
        this.article_Info = articleInfo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Instant getPublishDate() {
        return publish_time;
    }

    public void setPublishDate(Instant publishDate) {
        this.publish_time = publishDate;
    }

}
