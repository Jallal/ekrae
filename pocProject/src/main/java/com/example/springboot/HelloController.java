package com.example.springboot;

import com.opencsv.CSVReader;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class HelloController {
    public List<com.example.springboot.PublisherInfo> data = new ArrayList<>();

    @RequestMapping("/index")
    public String  loginMessage() throws Exception {
        this.data = this.readTheDataFromVCS("static/css/coursesList.csv");
        return "index";
    }
    @RequestMapping("/account")
    public String sudentAccount() throws IOException {
        this.data = this.readTheDataFromVCS("static/css/coursesList.csv");
        return "account";
    }

    @RequestMapping("/payment")
    public String sudentAccountPayment() throws IOException {
        this.data = this.readTheDataFromVCS("static/css/coursesList.csv");
        return "payment";
    }

    @RequestMapping("/refund")
    public String sudentAccountRefund() throws IOException {
        this.data = this.readTheDataFromVCS("static/css/coursesList.csv");
        return "refund";
    }






    public List<PublisherInfo> searchByDegree(List<PublisherInfo> data, String filter) {

        return data.stream().filter(e -> e != null).filter(i -> i.subject.toLowerCase().contains(filter.toLowerCase())).collect(Collectors.toList());
    }
    public List<PublisherInfo> searchByTerm(List<PublisherInfo> data, String filter) {

        return data.stream().filter(e -> e != null).filter(i -> i.getTerm().toLowerCase().contains(filter.toLowerCase())).collect(Collectors.toList());
    }

    public List<PublisherInfo> searchByCourseNumber(List<PublisherInfo> data, String filter) {

        return data.stream().filter(e -> e != null).filter(i -> i.getCourseNumber().toLowerCase().contains(filter.toLowerCase())).collect(Collectors.toList());
    }
    public List<PublisherInfo> searchByCourseName(List<PublisherInfo> data, String filter) {

        return data.stream().filter(e -> e != null).filter(i -> i.getTitle().toLowerCase().contains(filter.toLowerCase())).collect(Collectors.toList());
    }

    public List<PublisherInfo> searchByProfessor(List<PublisherInfo> data, String filter) {

        return data.stream().filter(e -> e != null).filter(i -> i.getProfessor().toLowerCase().contains(filter.toLowerCase())).collect(Collectors.toList());
    }
    public List<PublisherInfo> searchMeetingTime(List<PublisherInfo> data, String filter) {

        return data.stream().filter(e -> e != null).filter(i -> i.getTime().toLowerCase().contains(filter.toLowerCase())).collect(Collectors.toList());
    }


    @PostMapping("/api/search")
    public ResponseEntity<?> getSearchResultViaAjax(@Valid @RequestBody com.example.springboot.SearchCriteria search, Errors errors) throws Exception {
       System.out.print("***********************TOP MESSAGES*******************************\n");
       System.out.print(search.toString());
       System.out.print("******************************************************\n");
        this.data = this.readTheDataFromVCS("static/css/coursesList.csv");
        if(search!=null &&null!=search.getCategory()&&search.getCategory().equalsIgnoreCase("Information Sys Engineering")){
            this.data= this.searchByDegree(this.data,"Information Sys Engineering");
        }else if(search!=null &&null!=search.getCategory()&&search.getCategory().equalsIgnoreCase("Indust & Manufac Sys Engin")){
            this.data= this.searchByDegree(this.data,"Indust & Manufac Sys Engin");
        }else if(search!=null &&null!=search.getCategory()&&search.getCategory().equalsIgnoreCase("Business Administration")){
            this.data= this.searchByDegree(this.data,"Business Administration");
        }else if(search!=null &&null!=search.getCategory()&&search.getCategory().equalsIgnoreCase("Accounting")){
            this.data= this.searchByDegree(this.data,"Accounting");
        }else if(search!=null &&null!=search.getCategory()&&search.getCategory().equalsIgnoreCase("Chemistry")){
            this.data= this.searchByDegree(this.data,"Chemistry");
        } else if(search!=null &&null!=search.getCategory()&&search.getCategory().equalsIgnoreCase("fall 2020")){
            this.data= this.searchByTerm(this.data,"fall 2020");
        }else if(search!=null &&null!=search.getCategory()&&search.getCategory().equalsIgnoreCase("winter 2020")){
            this.data= this.searchByTerm(this.data,"winter 2020");
        }else if(search!=null &&null!=search.getCategory()&&search.getCategory().equalsIgnoreCase("summer 2020")){
            this.data= this.searchByTerm(this.data,"summer 2020");
        }else if(search!=null &&search.getSearch().equalsIgnoreCase("Course number")){
            this.data= this.searchByCourseNumber(this.data,search.getAuthorName());
        }else if(search!=null &&search.getSearch().equalsIgnoreCase("Course name")){
            this.data= this.searchByCourseName(this.data,search.getAuthorName());
        }else if(search!=null &&search.getSearch().equalsIgnoreCase("professor")){
            this.data= this.searchByProfessor(this.data,search.getAuthorName());
        }else if(search!=null &&search.getSearch().equalsIgnoreCase("meeting time")){
            this.data= this.searchMeetingTime(this.data,search.getAuthorName());
        }

        com.example.springboot.AjaxResponseBody result = new com.example.springboot.AjaxResponseBody();
        result.setMsg("success");
        result.setResult(this.data);
        return ResponseEntity.ok(this.data);
    }

    public List<com.example.springboot.PublisherInfo> readTheDataFromVCS(String csvFile) throws IOException {

        ClassPathResource resource = new ClassPathResource("/"+csvFile);
        File file = resource.getFile();

        //File file = ResourceUtils.getFile("classpath:" + csvFile);
        CSVReader csvReader = new CSVReader(new InputStreamReader(new FileInputStream(file)));
        List<com.example.springboot.PublisherInfo> publishRecords = new ArrayList<>();
        String[] values = (csvReader.readNext());
        while (values != null) {
            List<String> recordsString = Arrays.asList(values);
            com.example.springboot.PublisherInfo publisherInfo = new com.example.springboot.PublisherInfo(
                    recordsString.get(0),
                    recordsString.get(1),
                    recordsString.get(2),
                    recordsString.get(3),
                    recordsString.get(4),
                    recordsString.get(5),
                    recordsString.get(6),
                    recordsString.get(7),
                    recordsString.get(8),
                    recordsString.get(9),
                    recordsString.get(10));
            publishRecords.add(publisherInfo);
            values = csvReader.readNext();
        }

        publishRecords.remove(0);
        return publishRecords;
    }
}
