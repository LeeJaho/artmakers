package com.artmakers.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DaymakersDispatcherServletInitializer 
		extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {

		return new Class[] {
				DaymakersSecurityConfig.class,
				DaymakersHibernateConfig.class
		};
	}
	
	//servlet 관련된 것 넣기
	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		return new Class[] {
				ServletContextConfig.class,
				DaymakersMvcConfigurer.class,
				TilesConfig.class
		};
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[] {"/"};
	}
	
	private Filter characterEncodingFilter() {
		CharacterEncodingFilter filter = new CharacterEncodingFilter();
		filter.setEncoding("UTF-8");
		filter.setForceEncoding(true);
		
		return filter;
	}
	
	@Override
	protected Filter[] getServletFilters() {
		// TODO Auto-generated method stub
		return new Filter[] {
				characterEncodingFilter()
				
		};
	}

}
