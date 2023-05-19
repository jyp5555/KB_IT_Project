package multicampus.kb03.IPOwer.controller;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import multicampus.kb03.IPOwer.dto.*;
import multicampus.kb03.IPOwer.dao.BoardDao;
import multicampus.kb03.IPOwer.service.BoardService;
@Controller
//-http://localhost:8081/board/로 시작되는 요청을 다 boardController에서
@RequestMapping("/board")
public class BoardController {
	    private BoardService service;
	    private final BoardDao boardDao;
	    @Autowired
	    public BoardController(BoardDao boardDao) {
	        this.boardDao = boardDao;
	    }

	    @RequestMapping(value = "/listAll", method=RequestMethod.GET)
	    public void listAll(Model model) throws Exception{
	        
	        System.out.println("전체목록 페이지");
	        
	        model.addAttribute("boardList", service.listAll());
	        
	    }
	    
	    @GetMapping("")
	    public String getAllArticles(Model model) {
	        List<BoardDto> allArticles = boardDao.selectAll();
	        for (BoardDto newsFileDto : allArticles) {
				System.out.println(newsFileDto);
			}
	        model.addAttribute("articles", allArticles);
            //article.jsp 로 전달됨 
	        //succes.jsp에서 ${articles} 입력 allArticles 뜸 
	        return "board"; 
	    }
	    //글쓰기 
	    @RequestMapping("/write")
	    public String write() {
	        // 글쓰기 폼 페이지로 이동
	        return "write"; //write.jsp 페이지로 이동
	    }
	    
	    @PostMapping("/post")
	    public String write(BoardDto boardDto) throws Exception {
	    	service.insertpost(boardDto);
	        return "redirect:/";
	    }
	    
//	    @PostMapping("insert")
//		public String insertreview(BoardDto dto) throws Exception{
//			boolean result = service.insertpost(dto);
//			if (result) {
//				return "success";
//			} else {
//				return "error";
//			}
//		}
	    
	    @GetMapping("/success")
	    public String showSuccessPage(Model model) {
	        // 성공 메시지 표시
	        String message = (String) model.getAttribute("message");
	        model.addAttribute("message", message);

	        return "success";
	    }
	    //수정
	    @GetMapping("/edit/{id}")
	    public String edit(@PathVariable("id") Long id, Model model) {
	        BoardDto boardDto = service.modify(id);
	        model.addAttribute("post", boardDto);
	        return "board/edit.html";
	    }
	       
	    }
	    
	

	