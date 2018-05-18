package com.artmakers.config;



import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
@ComponentScan(basePackages="com.artmakers.config")
public class DaymakersSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private AuthenticationSuccessHandler successHandler;
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable()
		.authorizeRequests()
			.antMatchers("/member/join").anonymous()
			.antMatchers("/member/login").anonymous()
			.antMatchers("/member/**").hasRole("MEMBER")
			.and()
		.formLogin()
			.loginPage("/member/login")//get
			.successHandler(successHandler)
			.loginProcessingUrl("/member/login")//post
			.permitAll()
			.and()
		.logout()
			.logoutSuccessUrl("/home/index")
			.invalidateHttpSession(true);
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		//UserBuilder users = User.withDefaultPasswordEncoder();
				//UserBuilder users = User.builder();
				
				
				auth
				.jdbcAuthentication()
				.dataSource(dataSource)
				.usersByUsernameQuery("select id, pwd password, 1 enabled from Member where id=?")
				.authoritiesByUsernameQuery("select id, role authority from Member where id=?")
				.passwordEncoder(new BCryptPasswordEncoder());
				
				/*auth.inMemoryAuthentication()
					.withUser(users.username("jaho").password("{noop}111").roles("MEMBER"))
					.withUser(users.username("jungsoo").password("{noop}111").roles("MEMBER"));*/
	}
}
