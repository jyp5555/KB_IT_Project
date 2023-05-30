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
	
	@Select("SELECT c.COMMENT_CONTENT, c.COMMENT_REGDATE, U.USER_ID FROM comments c JOIN USERS U ON c.USER_PK = U.USER_PK WHERE c.ARTICLE_PK =#{ARTICLE_PK}")
    List<CmtDto> getCommentsByArticle(@Param("ARTICLE_PK") int ARTICLE_PK);

    @Insert("INSERT INTO comments (COMMENT_REGDATE,COMMENT_CONTENT,COMMENT_PK,ARTICLE_PK,USER_PK) "
    		+ "VALUES (sysdate,#{dto.commentContent},CMT_SEQ.NEXTVAL,#{dto.articlePk}, #{dto.userPk})")
    void addComment(@Param("dto") CmtDto comment);
    
   
}
