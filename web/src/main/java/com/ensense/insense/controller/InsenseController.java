package com.ensense.insense.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/app")
public class InsenseController {

    @RequestMapping(method = RequestMethod.GET)
    public String showDashboard(){
        return "insense/dashboard";
    }

}
