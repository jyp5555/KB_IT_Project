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
    
    public int insert() {
		BoardDto dto = new BoardDto();
		dto.setARTICLE_PK(2);
		dto.setARTICLE_TITLE("title2");
		dto.setARTICLE_VIEW(0);
		dto.setUSER_PK("관리자");
		
		return mapper.save(dto);
		
	}
    
        public BoardDao(SqlSessionTemplate sqlSessionTemplate) {
            this.sqlSessionTemplate = null;
			this.mapper = null;
        }

    }
