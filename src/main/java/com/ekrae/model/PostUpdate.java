package com.ekrae.model;

public class PostUpdate {
    private int publicationsCount;
    private String author;
    private String updated_date;

    public int getPublicationsCount() {
        return publicationsCount;
    }

    public void setPublicationsCount(int publicationsCount) {
        this.publicationsCount = publicationsCount;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getUpdated_date() {
        return updated_date;
    }

    public void setUpdated_date(String updated_date) {
        this.updated_date = updated_date;
    }
}
