package com.ekrae.model;

public class SearchCriteria {
    private int id;
    private String tag;
    private String title;
    private String level;
    private String desc;
    private String publish_time;

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

    public String getPublishDate() {
        return publish_time;
    }

    public void setPublishDate(String publishDate) {
        this.publish_time = publishDate;
    }

}
