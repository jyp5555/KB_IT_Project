package multicampus.kb03.IPOwer.security;

import javax.servlet.AsyncContext;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import static org.springframework.security.config.Customizer.withDefaults;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableMethodSecurity
public class SpringSecurityConfig {

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

		http.csrf().disable().cors().disable().authorizeRequests()

				.antMatchers("/home/**", "/cards/**", "/user/new", "/mypage/**").permitAll()
				.antMatchers("GET", "/community/articles/**").hasAnyRole("USER")
				.antMatchers("POST", "/community/articles/**").hasAnyRole("USER")
				.antMatchers("PUT", "/community/articles/**").hasAnyRole("USER")
				.antMatchers("DELETE", "/community/articles/**").hasAnyRole("USER").antMatchers("/admin/**")
				.hasAnyRole("ADMIN")

				.anyRequest().authenticated().and().formLogin() // form 방식 로그인 사용
				.loginPage("/user/me").loginProcessingUrl("/user/me") 
				.usernameParameter("user_id").passwordParameter("user_pw").defaultSuccessUrl("/home", true).permitAll()
				.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("user/logout"));
		return http.build();
	}
}
