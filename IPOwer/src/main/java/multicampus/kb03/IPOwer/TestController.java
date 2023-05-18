package multicampus.kb03.IPOwer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping("/")
	public String hello(Model model) {
		
		return "index";
	}
}
