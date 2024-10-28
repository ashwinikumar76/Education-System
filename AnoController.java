package com.example.edu_sys;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class AnoController {
    @Autowired
    JdbcTemplate jdbc;

    @GetMapping("/gallery")
    public String gallery() {
        return "gallery";
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/notice")
    public String notice() {
        return "notice";
    }

    @PostMapping("updateuser")
    public String updateuser(Model model, @RequestParam("name") String name, @RequestParam("mobile") String mobile,
            @RequestParam("status") String status, @RequestParam("email") String email) {
        // String 4sql="update user_master set name ='"+name+"',
        // mobile='"+mobile+"',status='"+status+"' where email='"+email+"'";
        String sql = "update user_master set name=?,mobile=?,status=? where email=?";
        jdbc.update(sql, name, mobile, status, email);

        return user(model);

    }

    @PostMapping("manageuser")
    public String manageuser(Model model, @RequestParam("email") String email, @RequestParam("btn") String btn) {
        if (btn.equalsIgnoreCase("delete")) {
            String sql = "delete from user_master where email=?";
            jdbc.update(sql, email);
            return user(model);
        } else {
            String sql = "select * from user_master where email='" + email + "' ";
            List<Map<String, Object>> usermaster = jdbc.queryForList(sql);
            model.addAttribute("usermaster", usermaster);
            return "editusers";
        }
    }

    @GetMapping("/user")
    public String user(Model model) {
        List<Map<String, Object>> li = jdbc.queryForList("select * from user_master");
        model.addAttribute("usermaster", li);
        return "user";
    }

    @PostMapping("/save")
    public String Save(Model model, @RequestParam("name") String name, @RequestParam("email") String email,
            @RequestParam("password") String password, @RequestParam("mobile") String mobile,
            @RequestParam("role") String role) {
        jdbc.execute("insert into user_master(name,email,password,mobile,role) values('" + name + "','" + email + "','"
                + password + "','" + mobile + "','" + role + "')");
        model.addAttribute("res", "success");
        return "signup";

    }

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    @PostMapping("/chk_login")
    public String chk_login(HttpSession session, Model model, @RequestParam("email") String email,
            @RequestParam("password") String password) {

        String sql = "select * from user_master where email='" + email + "' and password='" + password + "'";
        ArrayList<String> ali = new ArrayList<String>();
        jdbc.query(sql, new RowMapper<String>() {

            public String mapRow(ResultSet rs, int rowNum) throws SQLException {
                ali.add(rs.getString(1)); // name
                ali.add(rs.getString(2)); // user id / email
                ali.add(rs.getString(3)); // password
                ali.add(rs.getString(4)); // moblie
                ali.add(rs.getString(5)); // role
                ali.add(rs.getString(6)); // status
                return "";
            }
        });

        if (ali.isEmpty()) {
            model.addAttribute("res", "Invalid Details");
            return "login";
        } else {
            if ((ali.get(5)).equalsIgnoreCase("1")) {
                session.setAttribute("name", ali.get(0));
                session.setAttribute("email", ali.get(1));
                if ((ali.get(4)).equalsIgnoreCase("admin")) {
                    return "adminhome";
                } else if ((ali.get(4)).equalsIgnoreCase("faculty")) {
                    return "facultyhome";
                } else if ((ali.get(4)).equalsIgnoreCase("student")) {
                    return "studenthome";
                } else {

                    model.addAttribute("res", "some error ..");
                    return "login";
                }
            } else {
                model.addAttribute("res", "plz contact to admin");
                return "login";
            }
        }
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/education")
    public String home() {
        return "home";
    }

    @GetMapping("/faq")
    public String faq() {
        return "faq";
    }

    @GetMapping("/home")
    public String hm() {
        return "home";
    }

}
