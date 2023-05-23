package multicampus.kb03.IPOwer.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import multicampus.kb03.IPOwer.dto.CompanyDemandDto;
import multicampus.kb03.IPOwer.dto.CompanyDto;
import multicampus.kb03.IPOwer.service.CompanyInfoService;

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
	
    @RequestMapping(value="/admin/company", method=RequestMethod.GET)
	public String adminCompanyGet(Model model) {
		List<CompanyDto> companyList = companyInfoService.getCompanyList();
		
		model.addAttribute("companyList", companyList);
		return "adminCompanyInfo";
	}
    
    @RequestMapping(value="/admin/new/company", method=RequestMethod.POST)
    public @ResponseBody ResponseEntity<String> adminCompanyPost(@RequestBody CompanyDemandDto companyDemandDto) {
    	try {
    		System.out.println(companyDemandDto);
    		companyInfoService.createCompanyDemand(companyDemandDto);
        	return ResponseEntity.ok("create company success");
    	}catch(Exception e) {
    		return ResponseEntity.badRequest().body(e.getMessage());
    	}
    }
}
