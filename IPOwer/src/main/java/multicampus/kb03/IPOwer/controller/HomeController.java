package multicampus.kb03.IPOwer.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import multicampus.kb03.IPOwer.dto.CompanyDemandDto;
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
	
	@RequestMapping(value="/test", method= {RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody ResponseEntity<String> test(@RequestBody String test) {
    	try {
    		System.out.println(test);
        	return ResponseEntity.ok("success");
    	}catch(Exception e) {
    		return ResponseEntity.badRequest().body(e.getMessage());
    	}		
	}
}
