package com.artmakers.config;

import java.beans.PropertyVetoException;
import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableTransactionManagement
@ComponentScans(value= {
		@ComponentScan("com.artmakers.dao.hb"),
		@ComponentScan("com.artmakers.service"),
		/*@ComponentScan("com.artmakers.service.member")*/
})

//spring을 이용해 Hibernate를 얹은거
public class DaymakersHibernateConfig {
	
	@Bean(destroyMethod="close")
	public ComboPooledDataSource dataSource() throws PropertyVetoException {
		
		ComboPooledDataSource dataSource = new ComboPooledDataSource();
		dataSource.setDriverClass("com.mysql.jdbc.Driver");
		dataSource.setJdbcUrl("jdbc:mysql://211.238.142.78:3306/daymakersdb?serverTimezone=UTC&autoReconnect=true&useSSL=false&useUnicode=true&characterEncoding=utf8");
		dataSource.setUser("daymakers");
		dataSource.setPassword("111");
		dataSource.setMinPoolSize(5); 
		dataSource.setMaxPoolSize(20);
		dataSource.setMaxIdleTime(3000);
		
		return dataSource;
	}
	
	//Hibernate 설정 sessionFactory 쓸려고
	@Bean
	public LocalSessionFactoryBean sessionFactory() throws PropertyVetoException {
		Properties pros = new Properties();
		pros.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		pros.put("hibernate.show_sql", "true");
		
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		
		//DI 하는 법
		sessionFactory.setDataSource(dataSource());
		sessionFactory.setPackagesToScan("com.artmakers.entity");
		sessionFactory.setHibernateProperties(pros);
		
		return sessionFactory;
	}
	
	@Bean
	public HibernateTransactionManager transactionManager() throws PropertyVetoException {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		
		//getObject -> 부모? 클래스로 뭐시기	
		transactionManager.setSessionFactory(sessionFactory().getObject());
		
		return transactionManager;
		
	}
}
