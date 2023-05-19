package multicampus.kb03.IPOwer.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import multicampus.kb03.IPOwer.security.AuthenticatedUser;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String homeGet1() {
		return "redirect:/home";
	}
	
	@RequestMapping("/home")
	public String homeGet2() {
		return "home"; 
	}
}
