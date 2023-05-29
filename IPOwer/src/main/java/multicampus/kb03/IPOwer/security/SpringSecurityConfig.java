package multicampus.kb03.IPOwer.security;

import javax.servlet.AsyncContext;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableMethodSecurity
public class SpringSecurityConfig {
	
	@Bean
	PasswordEncoder passwordEncoder() {
	    return new SimplePasswordEncoder();
	}
	
	@Bean
	public AuthenticationSuccessHandler authenticationSuccessHandler(){
	    return new DomainSuccessHandler();
	}
	
	@Bean
	public AuthenticationFailureHandler authenticationFailureHandler(){
	    return new DomainFailureHandler();
	}
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		
		http.csrf().disable().cors().disable()
			.authorizeRequests()
				.antMatchers("/","/home/**", "/news/**","/board/**", "/user/new/**").permitAll()
				.antMatchers("GET","/company/detail/**").permitAll()
				.antMatchers("/resources/**").permitAll()
				.antMatchers("POST", "/community/articles/**").hasAnyRole("USER")
				.antMatchers("PUT", "/community/articles/**").hasAnyRole("USER")
				.antMatchers("DELETE", "/community/articles/**").hasAnyRole("USER")
				.antMatchers("/admin/**").hasAnyRole("ADMIN")
				.anyRequest().authenticated()
			.and()
				.formLogin() // form 방식 로그인 사용
				.loginPage("/user/me")
				.loginProcessingUrl("/login-process")
				.defaultSuccessUrl("/")
				.failureUrl("/user/me?error=true")
				.usernameParameter("userId") 
				.passwordParameter("userPw")
				.successHandler(authenticationSuccessHandler())
				.failureHandler(authenticationFailureHandler())
				.permitAll()
			.and()
				.logout()
				.logoutUrl("/logout")// 로그아웃 처리 URL (= form action url)
				.addLogoutHandler((request, response, authentication) -> { 
					// 사실 굳이 내가 세션 무효화하지 않아도 됨. LogoutFilter가 내부적으로 해줌.
					HttpSession session = request.getSession();
					if (session != null) {
						session.invalidate();
					}
				})  // 로그아웃 핸들러 추가
				.logoutSuccessHandler((request, response, authentication) -> {
					response.sendRedirect("/home");
				}) // 로그아웃 성공 핸들러
				.deleteCookies("remember-me");
		return http.build();
    }
}
