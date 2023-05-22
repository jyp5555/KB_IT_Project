package multicampus.kb03.IPOwer.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import multicampus.kb03.IPOwer.dao.NewsFileDao;
import multicampus.kb03.IPOwer.dto.NewsFileDto;

@Controller
public class NewsSearchController {
	@Autowired
	private NewsFileDao newsFileDao;
	
	/*
	 * @RequestMapping(value="/news", method= RequestMethod.POST)
	 * 
	 * @ResponseBody public Map<String,Object> findNews(String search_word,String
	 * start_date,String end_date,Model model) { Map<String,Object> all = new
	 * HashMap<String, Object>();
	 * 
	 * System.out.println(
	 * "postmapping(/news-search)------------------날짜-------------------");
	 * System.out.println(start_date+"-"+end_date); List<NewsFileDto> findAll =
	 * newsFileDao.selectThumbnailByTitle(search_word); List<NewsFileDto> find =
	 * newsFileDao.selectThumbnailByDate(start_date, end_date);
	 * System.out.println("--------------find by title--------------"); for
	 * (NewsFileDto nf : findAll) { System.out.println(nf); } all.put("list_news",
	 * find); all.put("count", find.size());
	 * 
	 * model.addAttribute("all",find); model.addAttribute("count",find.size()-1);
	 * 
	 * return all; }
	 */
}
