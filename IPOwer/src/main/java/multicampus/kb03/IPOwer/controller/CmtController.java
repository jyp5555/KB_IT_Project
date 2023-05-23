package multicampus.kb03.IPOwer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import multicampus.kb03.IPOwer.dao.BoardDao;
import multicampus.kb03.IPOwer.dao.CmtDao;
import multicampus.kb03.IPOwer.dto.BoardDto;
import multicampus.kb03.IPOwer.service.BoardService;

@Controller
@RequestMapping("/board")
public class CmtController {
	  private BoardService service;
	    private final CmtDao Cmtdao;
	    @Autowired
	    public CmtController(CmtDao cmtdao) {
	        this.Cmtdao = cmtdao;
	    }
	    
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
