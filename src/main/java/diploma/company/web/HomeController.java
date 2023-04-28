package diploma.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/home")
	public String showHomePage() {
		return "home";
	}
	
	@GetMapping("/admin")
	public String restricted() {
		return "admin-home";
	}
}
