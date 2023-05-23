package multicampus.kb03.IPOwer.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import multicampus.kb03.IPOwer.dto.CompanyDto;
import multicampus.kb03.IPOwer.service.CompanyInfoService;
import multicampus.kb03.IPOwer.service.RegisterUserService;

@Controller
public class AdminCompanyInfoController {
	
	@Autowired
	private final CompanyInfoService companyInfoService;

    public AdminCompanyInfoController(CompanyInfoService companyInfoService) {
        this.companyInfoService = companyInfoService;
    }
	
    @RequestMapping("/admin" )
	public String adminGet() {
		return "redirect:/admin/company";
	}
	
    @RequestMapping("/admin/company" )
	public String adminCompanyGet(Model model) {
		List<CompanyDto> companyList = companyInfoService.getCompanyList();
		
		model.addAttribute("companyList", companyList);
		return "adminCompanyInfo";
	}
}
