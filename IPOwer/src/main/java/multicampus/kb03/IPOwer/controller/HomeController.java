package multicampus.kb03.IPOwer.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.security.core.annotation.AuthenticationPrincipal;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import multicampus.kb03.IPOwer.dao.CompanyDemandDao;
import multicampus.kb03.IPOwer.dto.CompanyDemandDto;
import multicampus.kb03.IPOwer.dto.CompanyDto;

/*import multicampus.kb03.IPOwer.security.AuthenticatedUser;*/

/*
 * @Controller
 * 
 * @RequestMapping(value = {"/","/home"}) public class HomeController {
 * 
 * @Autowired private CompanyDemandDao companyDemandDao;
 * 
 * @GetMapping("") public String homeGet(Model model) { List<CompanyDto> all =
 * companyDemandDao.findAllCompany();
 * System.out.println("-------------company all---------------"); for
 * (CompanyDto cd : all) { System.out.println(cd); }
 * model.addAttribute("all",all);
 * 
 * return "home"; }
 * 
 * }
 */

@Controller
public class HomeController {
	String get_date(Date date) {
		String datePattern = "yyyy-MM-dd";
		SimpleDateFormat format = new SimpleDateFormat(datePattern);
		return format.format(date);
	}
	@Autowired 
	private CompanyDemandDao companyDemandDao;

	@RequestMapping("/")
	public String homeGet1(Model model) {
		List<CompanyDto> all = companyDemandDao.findAllCompany();
		List<String> c_name = new ArrayList<String>();
		List<String> c_offering = new ArrayList<String>();
		List<String> c_listing = new ArrayList<String>();
		System.out.println("-------------company all---------------"); 
			for (CompanyDto cd : all) { 
				c_name.add("'"+cd.getCompanyName()+"'");
				c_offering.add("'"+get_date(cd.getCompanyOfferingdate())+"'");
				c_listing.add("'"+get_date(cd.getCompanyListingdate())+"'");
				
			}
		model.addAttribute("all",all);
		model.addAttribute("c_name",c_name);
		model.addAttribute("c_offering",c_offering);
		model.addAttribute("c_listing",c_listing);
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
				c_listing.add("'"+get_date(cd.getCompanyListingdate())+"'");
				
			}
		model.addAttribute("all",all);
		model.addAttribute("c_name",c_name);
		model.addAttribute("c_offering",c_offering);
		model.addAttribute("c_listing",c_listing);

		return "home"; 
	}
}