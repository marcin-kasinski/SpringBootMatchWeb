package mk.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import mk.db.UserService;



//@Configuration
//@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)

//@Configuration
//@EnableJpaRepositories(basePackageClasses = mk.db.UserRepository.class)
//@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	private DataSource dataSource;
	
	@Value("${spring.queries.users-query}")
	private String usersQuery;
	
	@Value("${spring.queries.roles-query}")
	private String rolesQuery;

	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		auth.
			jdbcAuthentication()
				.usersByUsernameQuery(usersQuery)
				.authoritiesByUsernameQuery(rolesQuery)
				.dataSource(dataSource)
				.passwordEncoder(bCryptPasswordEncoder);
		


		
	}


  @Override
  protected void configure(HttpSecurity http) throws Exception {

/*
  //@formatter:off
      http
      .csrf().disable()
          .formLogin()
              //.loginProcessingUrl("/auth/login")
              .loginProcessingUrl("/")
              .successHandler(loginSuccessfulHandler)
              .failureHandler(loginFailureHandler)
          .and()
              .logout()
              .deleteCookies("JSESSIONID")
              .logoutUrl("/auth/logout")
              .logoutSuccessHandler(logoutSuccessfulHandler)
          .and()
            .authorizeRequests()
            .antMatchers("/auth/login").permitAll()
            .antMatchers("/secure/admin").access("hasRole('ADMIN')")//.access("hasAuthority('ROLE_ADMIN')")            
            .antMatchers("/tab").access("hasRole('ADMIN')")//.access("hasAuthority('ROLE_ADMIN')")            
            .anyRequest().authenticated()
           .and()
             .exceptionHandling().accessDeniedHandler(customAccessDeniedHandler)
             .authenticationEntryPoint(customAuthenticationEntryPoint)
          .and()
            .anonymous()
              .disable();
  // @formatter:on
*/
/*
	  http
      .authorizeRequests()
		.antMatchers("/").permitAll() 
		.antMatchers("/login").permitAll()
      	.and()
      	.formLogin()                      
         .and()
         .httpBasic();  
	*/  


	  http.
		authorizeRequests()
			.antMatchers("/").permitAll() 
			.antMatchers("/login").permitAll()
			.antMatchers("/registration").permitAll()
			.antMatchers("/admin/**").hasAuthority("ADMIN").anyRequest()
			.authenticated().and().csrf().disable().formLogin()
			.loginPage("/login")
			//.failureUrl("/login?error=true")
			.defaultSuccessUrl("/admin/home")
			.usernameParameter("email")
			.passwordParameter("password")
			.and().logout()
			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
			.logoutSuccessUrl("/").and().exceptionHandling()
.accessDeniedPage("/access-denied");


  }
  
  @Override
	public void configure(WebSecurity web) throws Exception {
	    web
	       .ignoring()
	       .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
}
  
}
