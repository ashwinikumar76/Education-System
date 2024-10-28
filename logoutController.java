package com.example.edu_sys;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class logoutController {

    @GetMapping("/logout")
    public String logout(HttpServletRequest request,RedirectAttributes attribute) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        attribute.addFlashAttribute("msg", "you have been logout successfully");
        return "redirect:/login";

    }
}
