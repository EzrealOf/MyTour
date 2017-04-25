package com.ezreal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * Created by Ezreal# on 2017/4/25.
 */

@SpringBootApplication
@EnableAsync
public class MyTourApplication {



        public static void main (String[] args) {
            SpringApplication.run(MyTourApplication.class, args);

    }
}

