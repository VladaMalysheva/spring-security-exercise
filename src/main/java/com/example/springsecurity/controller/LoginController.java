package com.example.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/showMyLoginPage")
    public String showLoginPage(){
        return "fancy-login";
    }

    @GetMapping("/access-denied")
    public String accessDeniedShowPage(){
        return "access-denied";
    }
}
