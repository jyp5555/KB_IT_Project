package multicampus.kb03.IPOwer.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import multicampus.kb03.IPOwer.dto.BoardDto;


@Component
public class BoardDao {
private final BoardMapper mapper;
private final SqlSessionTemplate sqlSessionTemplate;

    @Autowired
    public BoardDao(BoardMapper mapper) {
		this.sqlSessionTemplate = null;
		this.mapper = mapper;
    }

    public List<BoardDto> selectAll() {
		List<BoardDto> dto = mapper.selectAll();
		return dto;
    }
    public BoardDto detail(int ARTICLE_PK){
		BoardDto dto = mapper.detail(ARTICLE_PK);
		return dto;
	}
    public int updateBoard(BoardDto boardDto){
    	System.out.println("BoardDto="+boardDto);
    	return mapper.updateBoard(boardDto);
    }
    public BoardDto edit(int articlePk) {
        return mapper.getBoardDetail(articlePk);
    }
    
    public int deleteBoard(int articlePk) {
        return mapper.deleteBoard(articlePk);
    }
    public int updatereviewcnt(int articlePk,int articleview){
    	return mapper.updatereviewcnt(articlePk,articleview);
    }
    
    
    
//    public int insert() {
//		BoardDto dto = new BoardDto();
//		dto.setARTICLE_PK(2);
//		dto.setARTICLE_TITLE("title2");
//		dto.setARTICLE_VIEW(0);
//		dto.setUSER_PK("관리자");
//		return mapper.save(dto);
//		
//	}
    
    
        public BoardDao(SqlSessionTemplate sqlSessionTemplate) {
            this.sqlSessionTemplate = null;
			this.mapper = null;
        }
        
//        public List<BoardDto> insert (String ARTICLE_PK){
//     		List<BoardDto> dto = mapper.selectByTitle(ARTICLE_PK);
//     		return dto;
//     	}
        public void insert(BoardDto boardDto) {
            mapper.write(boardDto);
        }
       
        //검색
//        public List<BoardDto> selectsearchByTitle(String title){
//		List<BoardDto> dto = mapper.selectsearchByTitle(title);
//		return dto;
//        }
//		public List<BoardDto> selectdateByTitleDate(String start_date,String end_date,String title){
//			List<BoardDto> dto = mapper.selectdateByTitleDate(start_date,end_date,title);
//			return dto;
//		}
		
		 public List<BoardDto> getAllBoards() {
		        return mapper.getAllBoards();
		    }

		    public List<BoardDto> searchBoards(String searchType, String keyword) {
		        return mapper.searchBoards(searchType, keyword);
		    }
	
        
      //목록 (페이지 나누기, 검색 기능 포함)
        //매개변수는 시작 레코드번호, 끝번호, 옵션과 키워드가 들어간다)
//
//        public List<BoardDto> listAll(
//        		String search_option) 
//                    throws Exception;
//        
//        //조회수 증가 처리
//        public void increateViewcnt(int bno) throws Exception;
//        
//        //레코드 갯수 계산
//        public int countArticle(
//                String search_option, String keyword) throws Exception;
//        
//        //레코드 조회
//        public BoardDTO read(int bno) throws Exception;

    }

