package multicampus.kb03.IPOwer.controller;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import multicampus.kb03.IPOwer.dto.*;
import multicampus.kb03.IPOwer.dao.BoardDao;
import multicampus.kb03.IPOwer.dao.CmtDao;
import multicampus.kb03.IPOwer.service.BoardService;
@Controller
//-http://localhost:8081/board/로 시작되는 요청을 다 boardController에서
@RequestMapping("/board")
public class BoardController {
	    private final BoardDao boardDao;
	    private final CmtDao cmtDao;
	    @Autowired
	    public BoardController(BoardDao boardDao,CmtDao cmtDao) {
	        this.cmtDao = cmtDao;
			this.boardDao = boardDao;
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
	    
	    @GetMapping("/success")
	    public String showSuccessPage(Model model) {
	        // 성공 메시지 표시
	        String message = (String) model.getAttribute("message");
	        model.addAttribute("message", message);

	        return "success";
	    }
	    
	    //게시글 보기+조회수증가
	
	    @GetMapping("/detailreview")
	    public String getDetail(@RequestParam("ARTICLE_PK") int ARTICLE_PK, Model model) {
	        BoardDto boardDto= boardDao.detail(ARTICLE_PK);
	        boardDao.updatereviewcnt(ARTICLE_PK,boardDto.getARTICLE_VIEW());
	        if (boardDto!= null) {
	            model.addAttribute("detail1", boardDto);
	        }
	        
	        List<CmtDto> reply = cmtDao.getCommentsByArticle(ARTICLE_PK);
	        for (CmtDto newsCmtDto : reply) {
				System.out.println(newsCmtDto);
			}
	        model.addAttribute("reply", reply);
	        return "detailreview"; 
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
	    public String deleteBoard(@RequestParam int ARTICLE_PK) {
	        int result = boardDao.deleteBoard(ARTICLE_PK);
	        // 삭제 후의 처리 로직 추가
	        return "board";
	    }
	    
//	    
//	    //검색
//	    @RequestMapping(value="", method= RequestMethod.POST)
//		@ResponseBody
//		public Map<String,Object> findNews(String search_word,String start_date,String end_date) {
//			Map<String,Object> all = new HashMap<String, Object>();
//			
//			System.out.println("------------------날짜-------------------");
//			System.out.println(start_date+"~"+end_date);
//			if(start_date == "" || end_date == "") {
//				List<BoardDto> findAll = boardDao.selectsearchByTitle(search_word);
//				System.out.println("--------------find by title--------------");
//				for (BoardDto nf : findAll) {
//					System.out.println(nf);
//				}			
//				all.put("list", findAll); 
//				all.put("count", findAll.size());
//			}
//			else {
//				List<BoardDto> find = boardDao.selectdateByTitleDate(start_date, end_date,search_word);
//				
//				all.put("list", find);
//				all.put("count", find.size());
//			}
//			return all;
//		}

	    @GetMapping("/search")
	    public String boardList(Model model, @RequestParam(value = "searchType", required = false) String searchType,
	                            @RequestParam(value = "keyword", required = false) String keyword) {
	        List<BoardDto> articles;
	        if (searchType != null && keyword != null) {
	            articles = boardDao.searchBoards(searchType, keyword);
	        } else {
	            articles = boardDao.getAllBoards();
	        }
	        model.addAttribute("articles", articles);
	        return "board";
	    }
	    
	}
	  
	    
	    
	

	