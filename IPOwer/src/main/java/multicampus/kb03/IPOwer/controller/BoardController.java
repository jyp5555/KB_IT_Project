package multicampus.kb03.IPOwer.controller;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import multicampus.kb03.IPOwer.dto.*;
import multicampus.kb03.IPOwer.dao.BoardDao;
import multicampus.kb03.IPOwer.service.BoardService;
@Controller

@RequestMapping("/board")
public class BoardController {

	    private final BoardDao boardDao;

	    @Autowired
	    public BoardController(BoardDao boardDao) {
	        this.boardDao = boardDao;
	    }

	    @GetMapping("")
	    public String getAllArticles(Model model) {
	        List<BoardDto> allArticles = boardDao.selectAll();
	        for (BoardDto newsFileDto : allArticles) {
				System.out.println(newsFileDto);
			}
	        model.addAttribute("articles", allArticles);

	        return "board"; 
	    }
	    
	    
//	    //상세보기 메서드 
//	    @RequestMapping(value="/detail", method=RequestMethod.GET)
//		public ModelAndView detail(@RequestParam Map<String, Object> map) {
//			logger.info("map: "+ map);
//			
//			BookVO bookVO = new BookVO();
//			bookVO.setBookId(Integer.parseInt((String)map.get("bookId")));
//			//{bookId:1, 나머지는 null}
//			logger.info("bookVO(before): "+ bookVO.toString());
//			
//			// 상세보기 데이터 가져오기
//			bookVO = this.bookService.detail(bookVO);
//			//{bookId:1, 나머지도 있음}
//			logger.info("bookVO(after): "+ bookVO.toString());
//			
//			ModelAndView mav = new ModelAndView();
//			// book/detail => 뷰의 경로
//			// forwarding =>detail.jsp에 data가 같이간다.
//			mav.addObject("data", bookVO); // 데이터를 담음
//			mav.setViewName("book/detail");
//			
//			return mav;
//		}
	    
	    
	}

	