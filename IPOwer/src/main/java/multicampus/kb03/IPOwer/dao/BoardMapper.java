package multicampus.kb03.IPOwer.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import multicampus.kb03.IPOwer.dto.BoardDto;

@Mapper
public interface BoardMapper {
    @Select("SELECT A.ARTICLE_PK, A.ARTICLE_TITLE,A.ARTICLE_content, A.ARTICLE_view, A.ARTICLE_REGDATE, U.USER_NAME \r\n" + 
    		"FROM ARTICLE A\r\n" + 
    		"JOIN USERS U \r\n" + 
    		"ON A.USER_PK = U.USER_PK")
    List<BoardDto> selectAll();

    @Select("SELECT A.ARTICLE_PK, A.ARTICLE_TITLE, A.ARTICLE_content,A.ARTICLE_view, A.ARTICLE_REGDATE, U.USER_NAME FROM ARTICLE A\r\n" + 
    		"JOIN USERS U ON A.USER_PK = U.USER_PK\r\n" + 
    		"WHERE A.ARTICLE_TITLE = #{title}")
    List<BoardDto> selectByTitle(@Param("title") String title);

    @Select("SELECT A.ARTICLE_PK, A.ARTICLE_TITLE, A.ARTICLE_content,A.ARTICLE_view, A.ARTICLE_REGDATE, U.USER_NAME FROM ARTICLE A\r\n" + 
    		"JOIN USERS U ON A.USER_PK = U.USER_PK\r\n" + 
    		"WHERE A.ARTICLE_regdate = #{date}")
    List<BoardDto> selectByDate(@Param("date") Date date);
    
    @Insert("insert into articles(article_pk,article_CONTENTE,article_title,article_regdate,article_view,user_pk) \r\\n"
    		+ "values(#{dto.article_pk},#{dto.article_content},#{dto.article_title},SYSDATE,#{dto.article_view},#{dto.article_writer},#{dto.user_pk})")
	int save(@Param("dto") BoardDto dto);
    
    @Select("SELECT a.ARTICLE_PK, a.USER_PK, a.ARTICLE_TITLE, a.ARTICLE_CONTENT, a.ARTICLE_REGDATE, a.ARTICLE_VIEW, u.USER_NAME " +
            "FROM ARTICLE a " +
            "JOIN USERS u ON a.USER_PK = u.USER_PK")
    List<BoardDto> selectAllWithUserName();
    
    @Select("update ARTICLE set article_regdate = #{article_regdate},article_title = #{article_title}, article_CONTENTE = #{article_CONTENTE}, updatedate = sysdate where ARTICLE_PK = #{ARTICLE_PK}")
    List<BoardDto> modify(@Param("ARTICLE_PK") String ARTICLE_PK);
    
    @Select("delete from ARTICLE where ARTICLE_PK = #{ARTICLE_PK}")
    List<BoardDto> delete(@Param("ARTICLE_PK") String ARTICLE_PK);
    

    
}
