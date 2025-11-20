package com.rohan.courseApp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StudentController {
    @GetMapping("studentzone")
    public String student() {
        return "studentzone";
    }
}
