package com.ekrae.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import java.time.Instant;
import java.util.Date;


@Entity(name = "topic")
public class TopicsEntity {
    @NotNull
    @Column(unique = true)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tag;
    private String title;
    private String level;
    private String desc;
    private Instant publish_time;

    public String getArticle_Info() {
        return article_Info;
    }

    public void setArticle_Info(String article_Info) {
        this.article_Info = article_Info;
    }

    private String article_Info;


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