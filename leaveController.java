package com.example.edu_sys;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;

@Controller
public class leaveController {
    @Autowired
    JdbcTemplate jdbc;

    @PostMapping("change_password")
    public String changepassword(HttpSession session, @RequestParam("currentPassword") String cp,
            @RequestParam("newPassword") String np) {
        String name = (String) session.getAttribute("name");
        String sql = "update user_master set password=? where name=?";
        jdbc.update(sql, np, name);
        return "changepassword";
    }

    @GetMapping("/change")
    public String change() {
        return "changepassword";
    }

    @PostMapping("/leave_rqst")
    public String LeaveRequest(
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("leave-type") String leavetype,
            @RequestParam("start-date") String startdate,
            @RequestParam("end-date") String enddate,
            @RequestParam("reason") String reason) {
        String sql = "insert into leavemanage (name,email,leavetype,startdate,enddate,reason) values('" + name + "','"
                + email + "','" + leavetype + "','" + startdate + "','" + enddate + "','" + reason + "')";
        jdbc.execute(sql);
        return "leave";
    }

    @GetMapping("/manageleave")
    public String leave(Model model) {
        List<Map<String, Object>> leavedata = jdbc.queryForList("select * from leavemanage");
        model.addAttribute("leavedata", leavedata);
        return "leavemng";
    }

    @GetMapping("/leaveapply") 
    public String leaveapply(HttpSession session, Model model) {
        String name = (String) session.getAttribute("name");
        if (name != null) {
            String sql = "select name,email from user_master where name=?";
            Map<String, Object> leave = jdbc.queryForMap(sql, name);
            model.addAttribute("leave", leave);
        } else {
            return "error";
        }
        return "leave";
    }
}
