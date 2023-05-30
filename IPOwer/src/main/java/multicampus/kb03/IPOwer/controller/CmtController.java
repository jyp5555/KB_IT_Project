package multicampus.kb03.IPOwer.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import multicampus.kb03.IPOwer.dao.BoardDao;
import multicampus.kb03.IPOwer.dao.CmtDao;
import multicampus.kb03.IPOwer.dao.UserDao;
import multicampus.kb03.IPOwer.dto.BoardDto;
import multicampus.kb03.IPOwer.dto.CmtDto;
import multicampus.kb03.IPOwer.service.BoardService;

@Controller
@RequestMapping("/board")
public class CmtController {
	    private final CmtDao Cmtdao;
	    private final UserDao userdao;
	    @Autowired
	    public CmtController(CmtDao cmtdao,UserDao userdao) {
	        this.userdao = userdao;
			this.Cmtdao = cmtdao;
	    }
//	    //댓글작성 
//	    @PostMapping("/cmtpost")
//	    public String write(CmtDto cmtDto, Principal principal) throws Exception {
//	    	
//	        String userId = principal.getName(); // 사용자 아이디 가져
//	        int userPk = userdao.getUserPkByUserId(userId); // 사용자 아이디로 사용자 고유 번호 가져오기
//	     
//	        cmtDto.setUserPk(userPk); // boardDto에 userPk 설정
//
//	        // 나머지 로직
//	        Cmtdao.addComment(cmtDto);
////	        int newArticlePk = Cmtdao.getLastArticlePk();
//	        return "redirect:/board/detailreview?ARTICLE_PK=" + cmtDto.getArticlePk();
//	    }

	    //댓글조회
	    
//	    @GetMapping("/detailreview")
//	    public String getDetail(@RequestParam("ARTICLE_PK") int ARTICLE_PK, Model model) {
//	    	System.out.println(ARTICLE_PK);
//	        BoardDto boardDto= boardDao.detail(ARTICLE_PK);
//	        boardDao.updatereviewcnt(ARTICLE_PK,boardDto.getARTICLE_VIEW());
//	        if (boardDto!= null) {
//	            model.addAttribute("detail1", boardDto);
//	        }
//	        return "detailreview"; 
//	    }
//	    
	    //댓글삭제
	    
	    
	    
	    
}
