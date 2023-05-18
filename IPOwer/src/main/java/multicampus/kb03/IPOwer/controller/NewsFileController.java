package multicampus.kb03.IPOwer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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
		System.out.println("----------------file path---------------");
		for (NewsFileDto nf : pathAll) {
			System.out.println(nf);
		}
		model.addAttribute("files",pathAll);
		model.addAttribute("count",pathAll.size()-1);
		model.addAttribute("dto",dto);
		return "cardNewsDetail";
	}
	
	/*
	 * @PostMapping() public @ResponseBody ResponseEntity<String>
	 * joinPost(@RequestBody NewsFileDto dto){ try { // return
	 * ResponseEntity.ok(userService.findUser(user));
	 * registerUserService.join(dto.getUserId(), dto.getUserPw(), dto.getUserName(),
	 * dto.getUserPhone()); return ResponseEntity.ok("join success");
	 * }catch(Exception e) { return
	 * ResponseEntity.badRequest().body(e.getMessage()); }
	 * 
	 * }
	 */
	
	@PostMapping("")
	public String findNews(String search_word,Model model) {
		List<NewsFileDto> findAll = newsFileDao.selectThumbnailByTitle(search_word);
		System.out.println("--------------find by title--------------");
		for (NewsFileDto nf : findAll) {
			System.out.println(nf);
		}
		model.addAttribute("all",findAll);
		model.addAttribute("count",findAll.size()-1);
		return "cardNews";
	}
}
