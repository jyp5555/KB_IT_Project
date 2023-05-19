package multicampus.kb03.IPOwer.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import multicampus.kb03.IPOwer.dto.BoardDto;

@Service
public interface BoardService {

	//게시글 작성
	public boolean insertpost(BoardDto dto)  throws Exception;
	

	Map<String, Object> detail(Map<String, Object> map);
	
    public void create(BoardDto vo) throws Exception;
    
    public List<BoardDto> listAll() throws Exception;
    
    public BoardDto read(Integer b_no) throws Exception;
    
    public void delete(Integer b_no) throws Exception;
    
    public void update(BoardDto vo) throws Exception;
  //목록 (페이지 나누기, 검색 기능 포함)
    //매개변수는 시작 레코드번호, 끝번호, 옵션과 키워드가 들어간다)
    public List<BoardDto> listAll(
String search_option, String keyword,int start, int end) 
                throws Exception;
    
    //조회수 증가 처리
    public void increaseViewcnt(int bno, HttpSession session) throws Exception; 
    
    //레코드 갯수 계산
    public int countArticle( String search_option, String keyword) throws Exception;

}