package multicampus.kb03.IPOwer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {

	@RequestMapping("/mypage")
	public String hello2(Model model) {
		
		model.addAttribute("msg","반갑습니다.");
		return "mypage";
	}

}
