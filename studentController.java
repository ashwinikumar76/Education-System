package com.example.edu_sys;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class studentController {
    @Autowired
    JdbcTemplate jdbc;

    @GetMapping("/course")
    public String course() {
        return "courses";
    }

    @GetMapping("/exam")
    public String exam(Model model) {
        List<Map<String, Object>> li = jdbc.queryForList("select * from question");
        model.addAttribute("question", li);
        return "exam";
    }

    @PostMapping("/save_answer")
    public String saveanswer(@ModelAttribute examData ed, HttpSession session, Model model) {
        String email = (String) session.getAttribute("email");
        String sql = "select slno, answer from question";
        List<Map<String, Object>> db_ans = jdbc.queryForList(sql);
        String[] stu_ans = ed.getAnsArray();
        int total_mark = 0;

        for (Map<String, Object> roMap : db_ans) {
            int sl_no = Integer.parseInt(roMap.get("slno").toString());
            int ans = Integer.parseInt(roMap.get("answer").toString());
            Integer Stu_mark = Integer.parseInt(stu_ans[sl_no]);

            if (ans == Stu_mark) {
                total_mark++;
            }
        }

        String json_txt = ed.toString();
        String sql1 = "insert into answer(email, student_answer, student_mark) values (?, ?, ?)";
        jdbc.update(sql1, email, json_txt, total_mark);
        System.out.println(total_mark);
        model.addAttribute("mark", total_mark);
        return "result";
    }

    @GetMapping("/result")
    public String result() {
        return "result";
    }

}
