package multicampus.kb03.IPOwer.controller;
import java.security.Principal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import multicampus.kb03.IPOwer.dto.*;
import multicampus.kb03.IPOwer.dao.BoardDao;
import multicampus.kb03.IPOwer.dao.CmtDao;
import multicampus.kb03.IPOwer.dao.UserDao;
import multicampus.kb03.IPOwer.service.BoardService;
@Controller
//-http://localhost:8081/board/로 시작되는 요청을 다 boardController에서
@RequestMapping("/board")
public class BoardController {
	    private final BoardDao boardDao;
	    private final CmtDao cmtDao;
	    private final UserDao userdao;
	    @Autowired
	    public BoardController(BoardDao boardDao,CmtDao cmtDao,UserDao userdao) {
	        this.userdao = userdao;
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
	    
//	    @PostMapping("/post")
//	    public String write(BoardDto boardDto) throws Exception {
//			/* boardDto.setArticleRegdate(new Date()); */
//	    	System.out.println(boardDto);
//	    	boardDao.insert(boardDto);
//	    	int newArticlePk = boardDao.getLastArticlePk();
//	        return "redirect:/board/detailreview?ARTICLE_PK=" + newArticlePk;
//	    }  
//	    
	    @PostMapping("/post")
	    public String write(BoardDto boardDto, Principal principal) throws Exception {
	    	 System.out.println(boardDto);
	        String userId = principal.getName(); // 사용자 아이디 가져오기
	        System.out.println("-------------userid-------------");
	        System.out.println(userId);
	        int userPk = userdao.getUserPkByUserId(userId); // 사용자 아이디로 사용자 고유 번호 가져오기
	        
	        System.out.println("-------------userpk-------------");
	        System.out.println(userPk);
	        boardDto.setUserPk(userPk); // boardDto에 userPk 설정

	        // 나머지 로직
	        boardDao.insert(boardDto);
	        int newArticlePk = boardDao.getLastArticlePk();
	        return "redirect:/board/detailreview?ARTICLE_PK=" + newArticlePk;
	    }

	    //게시글 보기+조회수증가
	
	    @GetMapping("/detailreview")
	    public String getDetail(@RequestParam("ARTICLE_PK") int ARTICLE_PK, Model model) {
	        BoardDto boardDto= boardDao.detail(ARTICLE_PK);    
	        boardDao.updatereviewcnt(ARTICLE_PK,boardDto.getArticleView());
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

	   
//	    //수정
//	    @GetMapping("/edit")
//	    public String getEditForm(@RequestParam("ARTICLE_PK") int ARTICLE_PK, Model model) {
//	    	BoardDto boardDto = boardDao.edit(ARTICLE_PK);
//	    	 System.out.println("hello");
//	        model.addAttribute("up", boardDto);
//	        System.out.println(boardDto);
//	        return "edit";
//	    }
	    
	    //수정 
	    @GetMapping("/edit")
	    public String getEditForm(@RequestParam("articlePk") int ARTICLE_PK, Model model) {
	    	BoardDto boardDto = boardDao.edit(ARTICLE_PK);
	        model.addAttribute("up", boardDto);
	        return "edit";
	    }
	    
	    @PostMapping("/updatereviewcommit")
	    public String updateReview(BoardDto boardDto) {
	        int result = boardDao.updateBoard(boardDto);
	        // 수정 후의 처리 로직 추가
	        return "redirect:/board/detailreview?ARTICLE_PK=" + boardDto.getArticlePk();
	    }
	    //삭제
	    @GetMapping("/deleteBoard")
	    public String deleteBoard(@RequestParam("articlePk") int ARTICLE_PK) {
	        int result = boardDao.deleteBoard(ARTICLE_PK);
	        // 삭제 후의 처리 로직 추가
	        return "redirect:/board";
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
	    
	  //html 템플릿 적용
	    
	    @RequestMapping("/detailreview")
	    public String detailreview() {
	        // 글쓰기 폼 페이지로 이동
	        return "detailreview";
	    }
	 
	    @RequestMapping("/edit")
	    public String edit() {
	        // 글쓰기 폼 페이지로 이동
	        return "edit";
	    }
	    //댓글등록
	    @PostMapping("/cmtpost/{articlePk}")
	    public @ResponseBody ResponseEntity<List<CmtDto>> postComment(@PathVariable("articlePk") int articlePk ,@RequestBody CmtDto comment, Model model) {
	    	
	    	try {
				comment.setArticlePk(articlePk);
				comment.setUserPk(userdao.getUserPkByUserId(comment.getUserId()));
				cmtDao.addComment(comment);
				
				return ResponseEntity.ok(cmtDao.getCommentsByArticleId(articlePk));
			} catch (Exception e) {
				
				e.printStackTrace();
				return ResponseEntity.badRequest().body(null);
			}

//	    	cmtDao.addComment(comment);
//	        // 댓글 등록 로직
//	    	cmtDao.addComment(comment);
//
//	    	// 등록된 댓글을 포함한 게시글과 댓글 목록을 다시 조회하여 모델에 추가
//	        int articlePk = comment.getArticlePk();
//
//	        BoardDto article = BoardDao.getArticleById(articlePk);
//	        model.addAttribute("article", article);
//
//	        
//	        List<CmtDto> comments = cmtDao.getCommentsByArticleId(articlePk);
//	        model.addAttribute("comments", comments);
//
//	        // 댓글 작성 폼 초기화
//	        model.addAttribute("commentForm", new CmtDto());

	    }
	    
	}
	  
	    
	    
	

	