package multicampus.kb03.IPOwer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class LoginController {
	
	@GetMapping("/me")
	public String loginGet() {
		
		return "login";
	}
	
	@PostMapping("/me")
	public String loginPost() {
		
		return "redirect:/hello";
	}
}
