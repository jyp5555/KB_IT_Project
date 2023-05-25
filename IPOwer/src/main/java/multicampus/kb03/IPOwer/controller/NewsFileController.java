package multicampus.kb03.IPOwer.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
//		List<NewsFileDto> selectAll = newsFileDao.selectAll();
		List<NewsFileDto> selectThumbnail = newsFileDao.selectThumbnail();
		for (NewsFileDto nf : selectThumbnail) {
			System.out.println(nf);
		}
		model.addAttribute("all",selectThumbnail);
		model.addAttribute("count",selectThumbnail.size()-1);
		return "cardNews";
	}

	@GetMapping("{news_pk}")
	public String newsInfo(@PathVariable Integer news_pk, Model model) { 
		List<NewsFileDto> pathAll = newsFileDao.selectFilePath(news_pk);
		NewsFileDto dto = newsFileDao.selectByPk(news_pk);
		ArrayList<String> path = new ArrayList<String>();
		ArrayList<String> file_name = new ArrayList<String>();
		ArrayList<String> type = new ArrayList<String>();
		newsFileDao.updateNewsCnt(news_pk,dto.getNewsView());
		System.out.println("----------------file path---------------");
		for (NewsFileDto nf : pathAll) {
			System.out.println(nf);
			path.add("'"+nf.getFilePath()+"'");
			file_name.add("'"+nf.getFileName()+"'");
			type.add("'"+nf.getFileContenttype()+"'");
		}
	
		model.addAttribute("files",pathAll);
		model.addAttribute("dto",dto);
		model.addAttribute("path",path);
		model.addAttribute("file_name",file_name);
		model.addAttribute("type",type);
		return "detail";
	}
	
	@RequestMapping(value="", method= RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> findNews(String search_word) {
		Map<String,Object> all = new HashMap<String, Object>();
		
		List<NewsFileDto> find = newsFileDao.selectThumbnailByTitle(search_word);
		System.out.println("--------------find by title---------------");
		for (NewsFileDto nf : find) {
			System.out.println(nf);
		}	
		all.put("list_news", find);
		all.put("count", find.size());
		
		
		
		return all;
	}
	/*public Map<String,Object> findNews(String search_word,String start_date,String end_date) {
		Map<String,Object> all = new HashMap<String, Object>();
		
		System.out.println("------------------날짜-------------------");
		System.out.println(start_date+"~"+end_date);
		if(start_date == "" || end_date == "") {
			List<NewsFileDto> findAll = newsFileDao.selectThumbnailByTitle(search_word);
			System.out.println("--------------find by title--------------");
			for (NewsFileDto nf : findAll) {
				System.out.println(nf);
			}			
			all.put("listNews", findAll);
			all.put("count", findAll.size());
		}
		else {
			List<NewsFileDto> find = newsFileDao.selectThumbnailByTitleDate(start_date, end_date,search_word);
			
			all.put("list_news", find);
			all.put("count", find.size());
		
		}
		
		return all;
	}*/
	
	
}