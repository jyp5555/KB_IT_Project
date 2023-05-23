package multicampus.kb03.IPOwer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import multicampus.kb03.IPOwer.dao.NewsFileDao;
import multicampus.kb03.IPOwer.dto.NewsFileDto;

@Controller
@RequestMapping("/news")
public class NewsFileController {
		
	@Autowired
	private NewsFileDao newsFileDao;
//	@ResponseBody
	@GetMapping("")
	public String newsGet(Model model) {
		List<NewsFileDto> selectAll = newsFileDao.selectAll();
		for (NewsFileDto newsFileDto : selectAll) {
			System.out.println(newsFileDto);
		}
		model.addAttribute("all",selectAll);
		model.addAttribute("count",selectAll.size()-1);
		return "cardNews";
	}

	    
//	    @PostMapping("/news")
//	    public String newsPost() {
//
//	        return "cardNews";
//	    }
	
}