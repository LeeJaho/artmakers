package com.artmakers.config;

import javax.servlet.Filter;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;


@Configuration
@ComponentScan(basePackages="com.artmakers.controller")
public class ServletContextConfig {
	
	@Bean
	public InternalResourceViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		
		return resolver;
		
	}
	
	@Bean
	public Filter characterEncodingFilter() {
		CharacterEncodingFilter filter = new CharacterEncodingFilter();
		filter.setEncoding("UTF-8");
		filter.setForceEncoding(true);
		
		return filter;
	}
	
   @Bean(name = "multipartResolver") /*멀티파트*/
   public CommonsMultipartResolver multipartResolver() {
       CommonsMultipartResolver resolver=new CommonsMultipartResolver();
       resolver.setDefaultEncoding("utf-8");
       resolver.setMaxUploadSize(10485760);
       resolver.setMaxInMemorySize(10485760);
       return resolver;
   }
	
}
