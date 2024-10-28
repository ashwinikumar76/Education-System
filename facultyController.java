package com.example.edu_sys;

import java.io.IOException;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpSession;

@Controller
public class facultyController {
    @Autowired
    JdbcTemplate jdbc;

    @PostMapping("/save_chapter")
    public String save_chapter(Model model, @RequestParam("subject_id") String subject_id,
            @RequestParam("chapter_name") String chapter_name) {
        String sql = "insert into chapter(chapter_name,subject_id) values('" + chapter_name + "','" + subject_id + "')";
         jdbc.execute(sql);
        model.addAttribute("chapter"," chapter");
        return "addchapter";
    }

    @GetMapping("/addchapter")
    public String chapter(Model model) {
        String sql = "select * from subject";
        List<Map<String, Object>> subject = jdbc.queryForList(sql);
        model.addAttribute("subject", subject);
        return "addchapter";
    }

    @PostMapping("/manage_subject")
    public String manage_subject(Model model, @RequestParam("subject_id") String subject_id,
            @RequestParam("btn") String btn) {
        if (btn.equalsIgnoreCase("delete")) {
            String sql = "delete from subject where subject_id='" + subject_id + "'";
            jdbc.execute(sql);
            return subject(model);
        } else {
            String sql = "select * from subject where subject_id='" + subject_id + "'";
            List<Map<String, Object>> sub = jdbc.queryForList(sql);
            model.addAttribute("sub", sub);
            return "editsubject";
        }

    }

    @PostMapping("/add_subject")
    public String add_subject(Model model, @RequestParam("subject_name") String subject) {
        String sql = "insert into subject(subject_name) values('" + subject + "')";
        jdbc.execute(sql);
        return subject(model);
    }

    @GetMapping("/subject")
    public String subject(Model model) {
        String sql = "select * from subject";
        List<Map<String, Object>> sub = jdbc.queryForList(sql);
        model.addAttribute("subjects", sub);
        return "subject";
    }

    @GetMapping("/students")
    public String student(Model model) {
        String sql = "select name,email from user_master where role ='student'";
        List<Map<String, Object>> role = jdbc.queryForList(sql);
        model.addAttribute("role", role);
        return "student";
    }

    @GetMapping("/profile")
    public String profile(HttpSession session, Model model) {
        String email = (String) session.getAttribute("email");
        String sql = "select name,user_master.email,role,photo,age FROM user_master left join profile on user_master.email=profile.email where user_master.email='"
                + email + "'";
        List<Map<String, Object>> userprofile = jdbc.queryForList(sql);
        model.addAttribute("userprofile", userprofile);
        return "profile";
    }

    @PostMapping("/upload")
    public String uploaad(HttpSession session, Model model, @RequestParam("f") MultipartFile f)
            throws IOException {
        String email = (String) session.getAttribute("email");
        String sql1 = "delete from profile where email=?";
        jdbc.update(sql1, email);
        String sql2 = "INSERT INTO profile (email,photo,age) VALUES(?,?,?)";
        jdbc.update(sql2, email, f.getBytes(), 24);
        return profile(session, model);
    }

    @PostMapping("/modify_qstn")
    public String modify_qstn(Model model, @RequestParam("question") String question,
            @RequestParam("option1") String option1, @RequestParam("option2") String option2,
            @RequestParam("option3") String option3, @RequestParam("option4") String option4,
            @RequestParam("answer") String answer) {
        String sql = "update question set option1=?,option2=?,option3=?,option4=?,answer=? where question=?";
        jdbc.update(sql, option1, option2, option3, option4, answer, question);
        return manage(model);
    }

    @PostMapping("manage_question")
    public String manage_question(Model model, @RequestParam("question") String question,
            @RequestParam("btn") String btn) {
        if (btn.equalsIgnoreCase("delete")) {
            String sql = "delete from question where question=?";
            jdbc.update(sql, question);
            return manage(model);
        } else {
            String sql = "select * from question where question=?";
            List<Map<String, Object>> li = jdbc.queryForList(sql, question);
            model.addAttribute("question", li); // Changed from "question" to "questions"
            return "editqstn";
        }
    }

    @GetMapping("/manage")
    public String manage(Model model) {
        String sql = "select * from question";
        List<Map<String, Object>> question = jdbc.queryForList(sql);
        model.addAttribute("question", question);
        return "managequestion";
    }

    @PostMapping("/save_qstn")
    public String save_qstn(Model model, @RequestParam("question") String question,
            @RequestParam("option1") String option1, @RequestParam("option2") String option2,
            @RequestParam("option3") String option3, @RequestParam("option4") String option4,
            @RequestParam("answer") String answer) {
        String sql = "insert into question (question,option1,option2,option3,option4,answer) values('" + question
                + "','" + option1 + "','" + option2 + "','" + option3 + "','" + option4 + "','" + answer + "')";
        jdbc.execute(sql);
        return "addquestion";
    }

    @GetMapping("/addquestion")
    public String addquestion() {
        return "addquestion";
    }
}
