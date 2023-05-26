package multicampus.kb03.IPOwer.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	public String adminCompanyListGet(Model model) {

		List<CompanyDto> companyList = companyInfoService.getCompanyList();
		System.out.println(Arrays.deepToString(companyList.toArray()));
		Collections.sort(companyList, (a, b) -> b.getCompanyPk() - a.getCompanyPk());
		
		model.addAttribute("companyList", companyList);
		return "adminCompanyInfo";
	}
    
    @RequestMapping(value="/admin/company/{id}", method=RequestMethod.GET)
	public ResponseEntity<CompanyDemandDto> adminCompanyOneGet(@PathVariable("id") int id) {
    	try {
    		CompanyDemandDto company = companyInfoService.getCompanyOne(id);
    		return ResponseEntity.ok(company);
    	}catch(Exception e) {
    		return ResponseEntity.badRequest().body(null);
    	}
	}
    
    @RequestMapping(value="/admin/company", method=RequestMethod.POST)
    public @ResponseBody ResponseEntity<String> adminCompanyPost(@RequestBody CompanyDemandDto companyDemandDto) {
    	try {
    		companyInfoService.createCompanyDemand(companyDemandDto);
        	return ResponseEntity.ok("create company success");
    	}catch(Exception e) {
    		return ResponseEntity.badRequest().body(e.getMessage());
    	}
    }
    
    @RequestMapping(value="/admin/company/{id}", method=RequestMethod.PUT)
    public @ResponseBody ResponseEntity<String> adminCompanyPut(@RequestBody CompanyDemandDto companyDemandDto, @PathVariable("id") int id) {
    	try {
    		companyInfoService.updateCompanyDemand(companyDemandDto,id);
        	return ResponseEntity.ok("update company success");
    	}catch(Exception e) {
    		return ResponseEntity.badRequest().body(e.getMessage());
    	}
    }
    
    @RequestMapping(value="/admin/company/{id}", method=RequestMethod.DELETE)
    public @ResponseBody ResponseEntity<String> adminCompanyDelete(@PathVariable("id") int id) {
    	try {
    		System.out.println("hello!"+id);
    		companyInfoService.deleteCompanyDemand(id);
        	return ResponseEntity.ok("delete company success");
    	}catch(Exception e) {
    		e.printStackTrace();
    		return ResponseEntity.badRequest().body(e.getMessage());
    	}
    }
}
