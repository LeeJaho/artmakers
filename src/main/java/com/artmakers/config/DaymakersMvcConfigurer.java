package com.artmakers.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class DaymakersMvcConfigurer implements WebMvcConfigurer {
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		/*<!-- ** 자식의 자식의 자식까지 찾는다 어디서 찾는다? -> location에서 찾는다 -->*/
		registry
		.addResourceHandler("/resources/**")
		.addResourceLocations("/resources/");
	}
}
