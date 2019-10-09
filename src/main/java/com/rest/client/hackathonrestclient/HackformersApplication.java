package com.rest.client.hackathonrestclient;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class HackformersApplication extends ServletInitializer {
	
	private static final org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(HackformersApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(HackformersApplication.class, args);
	}
	
	//@Override
	//protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	//	return application.sources(HackformersApplication.class);
	//}

}
