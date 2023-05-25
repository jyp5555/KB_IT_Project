package multicampus.kb03.IPOwer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import multicampus.kb03.IPOwer.dao.CompanyDemandDao;
import multicampus.kb03.IPOwer.dao.UserDao;
import multicampus.kb03.IPOwer.dto.CompanyUserDto;
import multicampus.kb03.IPOwer.dto.UsersRoleDto;
import multicampus.kb03.IPOwer.security.AuthenticatedUser;

@Controller
@RequestMapping("/myPage")
public class MyPageController {
	
	@Autowired
	private CompanyDemandDao companyDemandDao;
	@Autowired
	private UserDao userDao;
	
	@GetMapping("")
	public String likeGet(@AuthenticationPrincipal AuthenticatedUser user, Model model) {
		String userId = user.getUsername();
		List<CompanyUserDto> all = companyDemandDao.findLikeAll(userId);
		UsersRoleDto userInfo = userDao.findByUserId(userId);
		model.addAttribute("all",all);
		model.addAttribute("user",userInfo);
		System.out.println(userInfo);
		System.out.println("================관심기업================");
		for (CompanyUserDto cd : all) {
			System.out.println(cd);
		}
		return "myPage";
	}
	
}
