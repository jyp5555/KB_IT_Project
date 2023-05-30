package multicampus.kb03.IPOwer.dao;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import multicampus.kb03.IPOwer.dto.BoardDto;


@Component
public class BoardDao {
private BoardMapper mapper;

@Autowired
private SqlSessionTemplate sqlSessionTemplate;
  

@Autowired
public BoardDao(SqlSessionTemplate sqlSessionTemplate, BoardMapper mapper) {
    try {
        this.sqlSessionTemplate = sqlSessionTemplate;
        this.mapper = mapper;
    } catch (Exception e) {
        e.printStackTrace(); // 예외 처리를 위해 예외 내용을 출력합니다. 실제로는 다른 예외 처리 로직을 적용해야
    }
}

    public List<BoardDto> selectAll() {
		List<BoardDto> dto = mapper.selectAll();
//		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 EEEE", new Locale("ko"));
//		for (BoardDto board : dto) {
//		    LocalDate regDate = board.getArticleRegdate().toLocalDate();
//		    String formattedDate = regDate.format(formatter);
//		    board.setArticleRegdateFormatted(formattedDate);
//		}
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
    
        
        public void insert(BoardDto boardDto) {
            mapper.write(boardDto);
        }
		 public List<BoardDto> getAllBoards() {
		        return mapper.getAllBoards();
		    }

		    public List<BoardDto> searchBoards(String searchType, String keyword) {
		        return mapper.searchBoards(searchType, keyword);
		    }

			public int getLastArticlePk() {
				// TODO Auto-generated method stub
				return mapper.getLastArticlePk();
			}

			public static BoardDto getArticleById(int articlePk) {
				// TODO Auto-generated method stub
				return null;
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

