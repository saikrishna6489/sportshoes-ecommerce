package com.sportshoes.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.sportshoes.demo")
public class SportShoesApplication {

	public static void main(String[] args) {
		SpringApplication.run(SportShoesApplication.class, args);
	}

}
