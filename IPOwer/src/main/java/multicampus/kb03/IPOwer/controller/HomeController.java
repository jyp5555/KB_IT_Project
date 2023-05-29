package multicampus.kb03.IPOwer.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import multicampus.kb03.IPOwer.dao.CompanyDemandDao;
import multicampus.kb03.IPOwer.dto.CompanyDemandDto;
import multicampus.kb03.IPOwer.dto.CompanyDto;
import multicampus.kb03.IPOwer.security.AuthenticatedUser;
import multicampus.kb03.IPOwer.service.CompanyInfoService;

@Controller
public class HomeController {
	
	String get_date(Date date) {
		String datePattern = "yyyy-MM-dd";
		SimpleDateFormat format = new SimpleDateFormat(datePattern);
		return format.format(date);
	}
	
	@Autowired 
	private CompanyInfoService companyInfoService;
	
	@Autowired
	private CompanyDemandDao companyDemandDao;

	@RequestMapping("/")
	public String homeGet1() {
		return "redirect:/home";
	}
	
	@RequestMapping("/home")
	public String homeGet2(Model model) {
		List<CompanyDto> all = companyDemandDao.findAllCompany();
		List<String> c_name = new ArrayList<String>();
		List<String> c_offering = new ArrayList<String>();
		List<String> c_listing = new ArrayList<String>();
		System.out.println("-------------company all---------------"); 
			for (CompanyDto cd : all) { 
				c_name.add("'"+cd.getCompanyName()+"'");
				c_offering.add("'"+get_date(cd.getCompanyOfferingdate())+"'");
				if(cd.getCompanyListingdate() == null) {
					c_listing.add("''");
				}else {
                    c_listing.add("'"+get_date(cd.getCompanyListingdate())+"'");
                }
			}
		model.addAttribute("all",all);
		model.addAttribute("c_name",c_name);
		model.addAttribute("c_offering",c_offering);
		model.addAttribute("c_listing",c_listing);

		return "home"; 
	}
	
	@RequestMapping(value="/test", method= {RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody ResponseEntity<String> test(@RequestBody String test) {
    	try {
        	return ResponseEntity.ok("success");
    	}catch(Exception e) {
    		return ResponseEntity.badRequest().body(e.getMessage());
    	}		
	}
	
	@RequestMapping(value="/company/detail/{name}", method=RequestMethod.GET)
	public @ResponseBody ResponseEntity<CompanyDemandDto> companyGet(@PathVariable("name") String name ){
		try {
			System.out.println(name);
			CompanyDemandDto company = companyInfoService.getCompanyOneByName(name);
			System.out.println("here2"+company);
			return ResponseEntity.ok(company);
		}catch(Exception e) {
			e.printStackTrace();
			return ResponseEntity.badRequest().body(new CompanyDemandDto());
		}
	}
}
