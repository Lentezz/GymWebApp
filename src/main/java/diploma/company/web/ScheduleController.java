package diploma.company.web;

import diploma.company.model.ClassRegister;
import diploma.company.model.Schedule;
import diploma.company.model.User;
import diploma.company.service.ClassRegisterService;
import diploma.company.service.ScheduleService;
import diploma.company.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

;

@Controller
public class ScheduleController {
	
	private final ScheduleService scheduleService;
	private final UserService userService;
	private final ClassRegisterService classService;
	
	public ScheduleController(ScheduleService scheduleService, UserService userService, ClassRegisterService classService) {
		this.scheduleService = scheduleService;
		this.userService = userService;
		this.classService = classService;
	}
	
	@GetMapping("/gym/schedule")
	public String showSchedule(Model model) {
		List<Schedule> classes = scheduleService.findAll();
		model.addAttribute("classes", classes);
		return "schedule";
	}
	
	@GetMapping("/gym/schedule/{id}")
	public String selectClass(@PathVariable Long id, Model model, Principal principal) {
		Schedule training = scheduleService.getSchedule(id);
		if (principal==null) {
			return "redirect:/gym/login";
		}
		User user = userService.findUserByUsername(principal.getName());
		System.out.println(user);
		model.addAttribute("training", training);
		model.addAttribute("email", user.getEmail());
		return "schedule-register";
	}
	
	@PostMapping("/gym/schedule/{id}")
	public String registerToClass(@PathVariable Long id, @ModelAttribute ClassRegister classRegister,
	                              @RequestParam("email") String email,
	                              @RequestParam ("phone") String phone, BindingResult result, Principal principal) {
		if (result.hasErrors()) {
			return "schedule-register";
		}
		if (principal==null) {
			return "redirect:/gym/login";
		}
		Integer corrected = Integer.valueOf(phone.substring(3));
		classService.saveClassRegister(id,principal.getName(), email, corrected);
		return "redirect:/home";
	}
}
