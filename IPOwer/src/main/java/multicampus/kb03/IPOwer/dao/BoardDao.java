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
    public List<BoardDto> selectByTitle(String title){
		List<BoardDto> dto = mapper.selectByTitle(title);
		return dto;
	}
//    public List<BoardDto> modify(String ARTICLE_PK){
//    	mapper.modify(BoardDto);
//        return boardMapper.selectByTitle(boardDto.getArticlePk());
//    }
//    
    public List<BoardDto> modify(BoardDto boardDto) {
    	mapper.modify(boardDto);
    	return mapper.selectByTitle(boardDto.getArticlePk());
    }

    public List<BoardDto> delete (String ARTICLE_PK){
 		List<BoardDto> dto = mapper.selectByTitle(ARTICLE_PK);
 		return dto;
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
            mapper.insert(boardDto);
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

