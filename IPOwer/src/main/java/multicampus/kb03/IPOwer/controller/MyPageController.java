package multicampus.kb03.IPOwer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class MyPageController {

	@GetMapping("/mypage")
	public String mypageget(Model model) {
		//로그인이 안되었다면 
		model.addAttribute("msg","반갑습니다.");
		return "mypage"; //login
	}
	
	@PostMapping("/mypage")
	public String mypagepost(Model model) {
		
		model.addAttribute("msg","반갑습니다.");
		return "mypage";
	}

}
