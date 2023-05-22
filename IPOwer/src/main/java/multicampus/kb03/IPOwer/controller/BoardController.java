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

	    	boardDao.insert(boardDto);
	        return "board";
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
	    
	    //게시글 보기
	
	    @GetMapping("/detailreview")
	    public String getDetail(@RequestParam("ARTICLE_PK") int ARTICLE_PK, Model model) {
	    	System.out.println(ARTICLE_PK);
	        List<BoardDto> boardDtoList = boardDao.detail(ARTICLE_PK);
	        if (boardDtoList != null && !boardDtoList.isEmpty()) {
	            BoardDto boardDto = boardDtoList.get(0);
	            model.addAttribute("detail1", boardDto);
	        }
	        return "detailreview"; // Assuming "detailreview.jsp" is your detail view JSP file
	    }
	    
	    //수정 
	    @GetMapping("/edit")
	    public String getEditForm(@RequestParam("ARTICLE_PK") int ARTICLE_PK, Model model) {
	    	BoardDto boardDto = boardDao.edit(ARTICLE_PK);
	        model.addAttribute("up", boardDto);
	        return "edit";
	    }
	    
	    @PostMapping("/updatereviewcommit")
	    public String updateReview(BoardDto boardDto) {
	        int result = boardDao.updateBoard(boardDto);
	        // 수정 후의 처리 로직 추가

	        return "redirect:/board/detailreview?ARTICLE_PK=" + boardDto.getARTICLE_PK();
	    }
	    //삭제
	    @GetMapping("/deleteBoard")
	    public String deleteBoard(@PathVariable int ARTICLE_PK) {
	        int result = boardDao.deleteBoard(ARTICLE_PK);
	        // 삭제 후의 처리 로직 추가
	        return "board";
	    }
	    //조회수 자동 증가 
	    
	    
	}
	       
	    
	    
	

	