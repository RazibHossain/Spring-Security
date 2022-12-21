package com.razib.security.userdetailsservice.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
    @RequestMapping("/")
    public Object hello(){
        return "hello security";
    }
}
