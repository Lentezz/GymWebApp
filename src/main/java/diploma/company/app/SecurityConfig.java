package diploma.company.app;

import diploma.company.model.Admin;
import diploma.company.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.EventListener;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	public UserDetailsService userDetailsService;
	@Autowired
	public AdminRepository adminRepo;


	@Bean
	public BCryptPasswordEncoder passEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
		auth
				.userDetailsService(userDetailsService)
				.passwordEncoder(passEncoder());
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/home").permitAll()
				.antMatchers("/gym/**").permitAll()
				.antMatchers("/admin/**").hasRole("ADMIN")
				.and().formLogin()
				.loginPage("/gym/login")
				.defaultSuccessUrl("/home")
				.usernameParameter("username")
				.passwordParameter("password")
				.failureUrl("/gym/login?error=true");
	}
	
	@EventListener(ApplicationReadyEvent.class)
	public void get() {
		Admin user = new Admin(1L, "Admin", passEncoder().encode("Admin"), "ROLE_ADMIN");
		Admin user1 = new Admin(2L, "kamil", passEncoder().encode("Ironkamil"), "ROLE_ADMIN");
		adminRepo.save(user);
		adminRepo.save(user1);
		Admin finded = adminRepo.findById(1L).get();
		System.out.println(finded.getPassword());
	}
}
	




