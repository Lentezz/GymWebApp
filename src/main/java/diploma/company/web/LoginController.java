package diploma.company.web;

import diploma.company.model.User;
import diploma.company.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class LoginController {
	
	private final UserService userService;
	
	public LoginController(UserService userService) {
		this.userService = userService;
	}
	
	@GetMapping("/gym/register")
	public String showRegisterForm(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "registerForm";
	}
	
	@PostMapping("/gym/register")
	public String registerMember(@Valid @ModelAttribute User user, BindingResult result) throws LoginException {
		if (result.hasErrors()) {
			return "registerForm";
		}
		if (userService.findUserByUsername(user.getUsername()) != null) {
			throw new LoginException();
		}
		if (user.getSubscribed() == null) {
			user.setSubscribed(null);
		}
		else if (user.getSubscribed().equals("yes")) {
			user.setSubscribed("yes");
		}
		userService.addUser(user);
		return "redirect:/gym/login";
	}
	
	@GetMapping("/gym/login")
	public String showLoginForm(Model model, @RequestParam(required = false) String error) {
		User user = new User();
		if (error != null) {
			model.addAttribute("error", "\n" + "Incorrect login and/or password");
		}
		model.addAttribute("user", user);
		return "loginForm";
	}
}

