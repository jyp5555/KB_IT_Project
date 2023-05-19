package multicampus.kb03.IPOwer.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import multicampus.kb03.IPOwer.dto.BoardDto;

@Mapper
public interface BoardMapper {
    @Select("SELECT A.ARTICLE_PK, A.ARTICLE_TITLE,A.ARTICLE_content, A.ARTICLE_view, A.ARTICLE_REGDATE, U.USER_NAME \r\n" + 
    		"FROM ARTICLE A\r\n" + 
    		"JOIN USERS U \r\n" + 
    		"ON A.USER_PK = U.USER_PK")
    List<BoardDto> selectAll();

    @Select("SELECT A.ARTICLE_PK, A.ARTICLE_TITLE, A.ARTICLE_CONTENT,A.ARTICLE_VIEW, A.ARTICLE_REGDATE, U.USER_NAME FROM ARTICLE A\r\n" + 
    		"JOIN USERS U ON A.USER_PK = U.USER_PK\r\n" + 
    		"WHERE A.ARTICLE_TITLE = #{title}")
    List<BoardDto> selectByTitle(@Param("title") String title);

    @Select("SELECT A.ARTICLE_PK, A.ARTICLE_TITLE, A.ARTICLE_content,A.ARTICLE_view, A.ARTICLE_REGDATE, U.USER_NAME FROM ARTICLE A\r\n" + 
    		"JOIN USERS U ON A.USER_PK = U.USER_PK\r\n" + 
    		"WHERE A.ARTICLE_regdate = #{date}")
    List<BoardDto> selectByDate(@Param("date") Date date);
    
    
//    @Insert("insert into articles(ARTICLE_PK,ARTICLE_CONTENT,article_title,article_regdate,article_view,user_pk) \r\\n"
//    		+ "values(#{dto.ARTICLE_PK},#{dto.ARTICLE_CONTENT},#{dto.article_title},SYSDATE,#{dto.article_view},#{dto.article_writer},#{dto.user_pk})")
//	int insert(@Param("dto") BoardDto dto);

    @Select("INSERT INTO ARTICLE (article_pk, article_title, ARTICLE_content, article_view, user_pk) " +
            "VALUES (#{article_pk}, #{article_title}, #{ARTICLE_content}, #{article_view}, #{user_pk})")
    List<BoardDto> insert(BoardDto boardDto);
    //게시물 번호 자동 증가하는건 나중에 ...
    @Select("SELECT a.ARTICLE_PK, a.USER_PK, a.ARTICLE_TITLE, a.ARTICLE_CONTENT, a.ARTICLE_REGDATE, a.ARTICLE_VIEW, u.USER_NAME " +
            "FROM ARTICLE a " +
            "JOIN USERS u ON a.USER_PK = u.USER_PK")
    List<BoardDto> selectAllWithUserName();
    
//    @Select("update ARTICLE set article_regdate = #{article_regdate},ARTICLE_TITLE = #{ARTICLE_TITLE}, ARTICLE_CONTENTE = #{ARTICLE_CONTENTE}, updatedate = sysdate where ARTICLE_PK = #{ARTICLE_PK}")
//    List<BoardDto> modify(@Param("ARTICLE_PK") String ARTICLE_PK);
    
    @Update("UPDATE ARTICLE " +
            "SET article_title = #{articleTitle}, " +
    		"article_regdate = #{article_regdate},"+
            "ARTICLE_content = #{ARTICLE_content}, " +
            "article_view = #{articleView}, " +
            "user_pk = #{userPk} " +
            "WHERE article_pk = #{articlePk}")
    void modify(BoardDto boardDto);
    
    @Select("delete from ARTICLE where ARTICLE_PK = #{ARTICLE_PK}")
    List<BoardDto> delete(@Param("ARTICLE_PK") String ARTICLE_PK);
    

    
}
