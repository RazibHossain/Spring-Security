package com.security.ldap.authentication.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WelcomeController {

    @RequestMapping(value = "/hello")
    @ResponseBody
    public Object hello(){
        return "Welcom to LDAP Authentication";
    }
}
