package multicampus.kb03.IPOwer.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import multicampus.kb03.IPOwer.dto.BoardDto;
import multicampus.kb03.IPOwer.dto.CmtDto;

@Component
public class CmtDao {
	private final CmtMapper mapper;
@Autowired
public CmtDao(CmtMapper mapper) {
	this.mapper = mapper;
}

	public List<CmtDto> getCommentsByArticle(int aRTICLE_PK) {
		// TODO Auto-generated method stub
		List<CmtDto> dto=mapper.getCommentsByArticle(aRTICLE_PK);
		return dto;
		
	}
	 public void addComment(CmtDto dto ) {
         mapper.addComment(dto);
     }

}
