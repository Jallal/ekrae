package com.example.springboot;

import java.util.Objects;
import java.util.Optional;

public class PublisherInfo {

    public String courseNumber;
    public String courseName;
    public String title;
    public String description;
    public String professor;
    public String time;
    public String aSeats;
    public String subject;
    public String term;
    public String isadded;
    public String fulldetails;

    public String getFulldetails() {
        return fulldetails;
    }

    public void setFulldetails(String fulldetails) {
        this.fulldetails = fulldetails;
    }



    public String getCourseNumber() {
        return courseNumber;
    }

    public void setCourseNumber(String courseNumber) {
        this.courseNumber = courseNumber;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProfessor() {
        return professor;
    }

    public void setProfessor(String professor) {
        this.professor = professor;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getaSeats() {
        return aSeats;
    }

    public void setaSeats(String aSeats) {
        this.aSeats = aSeats;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getIsadded() {
        return isadded;
    }

    public void setIsadded(String isadded) {
        this.isadded = isadded;
    }



    public PublisherInfo(String courseNumber,String courseName, String title, String description, String professor, String time, String aSeats, String subject, String term, String isadded, String fulldetails) {

        this.courseNumber = courseNumber;
        this.courseName=courseName;
        this.title = title;
        this.description = description;
        this.professor = professor;
        this.time = time;
        this.aSeats = aSeats;
        this.subject=subject;
        this.term=term;
        this.isadded=isadded;
        this.fulldetails=fulldetails;
    }

}
