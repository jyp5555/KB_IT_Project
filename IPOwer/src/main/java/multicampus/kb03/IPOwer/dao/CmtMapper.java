package multicampus.kb03.IPOwer.dao;
import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import multicampus.kb03.IPOwer.dto.BoardDto;
import multicampus.kb03.IPOwer.dto.CmtDto;

@Mapper
public interface CmtMapper {
	@Select("SELECT c.COMMENT_CONTENT, c.COMMENT_REGDATE, U.USER_NAME FROM comments c JOIN USERS U ON c.USER_PK = U.USER_PK\r\n" + 
			"WHERE c.ARTICLE_PK =#{ARTICLE_PK}")
    List<CmtDto> getCommentsByArticle(@Param("ARTICLE_PK") int ARTICLE_PK);

    @Insert("INSERT INTO comments (COMMENT_CONTENT) VALUES (#{COMMENT_CONTENT})")
    void addComment(CmtDto comment);
}
