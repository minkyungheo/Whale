package com.example.demo.controller;

import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.bind.annotation.GetMapping;



@RestController
public class hello {

    @GetMapping("/hello")
    public String getMethodName() {
        return "HELLO3";
    }
    
}


