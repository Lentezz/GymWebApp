package diploma.company.web;

import diploma.company.model.ClassRegister;
import diploma.company.model.Schedule;
import diploma.company.model.User;
import diploma.company.service.ClassRegisterService;
import diploma.company.service.ScheduleService;
import diploma.company.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Collection;

@Controller
public class ClassRegisterController {
	
	private final ClassRegisterService classService;
	private final UserService userService;
	private final ScheduleService scheduleService;
	
	public ClassRegisterController(ClassRegisterService classService, UserService userService, ScheduleService scheduleService) {
		this.classService = classService;
		this.userService = userService;
		this.scheduleService = scheduleService;
	}
	
	@GetMapping("/admin/schedule/register")
	public String displayWeeklySchedule(Model model){
		Collection<ClassRegister> register = classService.findAll();
		Collection<User> users = userService.findUsers();
		Collection<Schedule> classes = scheduleService.findAll();
		model.addAttribute("register", register);
		model.addAttribute("users", users);
		model.addAttribute("classes", classes);
		return "admin-class-register";
	}
	
	@GetMapping("/admin/schedule/reset")
	public String clearRegister (){
		classService.deleteAll(classService.findAll());
		return "redirect:/admin/schedule/register";
	}
}
