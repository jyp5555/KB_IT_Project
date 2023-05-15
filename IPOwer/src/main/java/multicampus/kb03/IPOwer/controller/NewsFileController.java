package multicampus.kb03.IPOwer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/news")
public class NewsFileController {

	    @GetMapping("")
	    public String newsGet() {

	        return "cardNews";
	    }

//	    @PostMapping("/news")
//	    public String newsPost() {
//
//	        return "cardNews";
//	    }
	
}
