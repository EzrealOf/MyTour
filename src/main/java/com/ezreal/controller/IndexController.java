package com.ezreal.controller;

import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ezreal# on 2017/4/25.
 */
public class IndexController {

    @RequestMapping("toIndex")
    public String toIndex(){


        return "index";
    }
}
