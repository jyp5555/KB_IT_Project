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
    List<BoardDto> selectByPk(@Param("title") String title);

    @Select("SELECT A.ARTICLE_PK, A.sARTICLE_TITLE, A.ARTICLE_content,A.ARTICLE_view, A.ARTICLE_REGDATE, U.USER_NAME FROM ARTICLE A\r\n" + 
    		"JOIN USERS U ON A.USER_PK = U.USER_PK\r\n" + 
    		"WHERE A.ARTICLE_regdate = #{date}")
    List<BoardDto> selectByDate(@Param("date") Date date);
      
    
    
    
//    @Insert("insert into articles(ARTICLE_PK,ARTICLE_CONTENT,article_title,article_regdate,article_view,user_pk) \r\\n"
//    		+ "values(#{dto.ARTICLE_PK},#{dto.ARTICLE_CONTENT},#{dto.article_title},SYSDATE,#{dto.article_view},#{dto.article_writer},#{dto.user_pk})")
//	int insert(@Param("dto") BoardDto dto);

    @Insert("INSERT INTO ARTICLE (ARTICLE_PK,ARTICLE_TITLE,USER_NAME ,ARTICLE_CONTENT,ARTICLE_REGDATE) " +
            "VALUES (BOARD_SEQ.NEXT_VAL, #{dto.ARTICLE_TITLE},#{dto.USER_NAME}, #{dto.ARTICLE_CONTENT},sysdate)")
   int write(@Param("dto") BoardDto boardDto);
    

    //게시물 번호 자동 증가하는건 나중에 ...
    @Select("SELECT a.ARTICLE_PK, a.USER_NAME, a.ARTICLE_TITLE, a.ARTICLE_CONTENT, a.ARTICLE_REGDATE, a.ARTICLE_VIEW, u.USER_NAME " +
            "FROM ARTICLE a " +
            "JOIN USERS u ON a.USER_PK = u.USER_NAME")
    List<BoardDto> selectAllWithUserName();
    
//    @Select("update ARTICLE set article_regdate = #{article_regdate},ARTICLE_TITLE = #{ARTICLE_TITLE}, ARTICLE_CONTENTE = #{ARTICLE_CONTENTE}, updatedate = sysdate where ARTICLE_PK = #{ARTICLE_PK}")
//    List<BoardDto> modify(@Param("ARTICLE_PK") String ARTICLE_PK);
    
    //수정
    @Select("SELECT * FROM ARTICLE WHERE ARTICLE_PK = #{ARTICLE_PK}")
    BoardDto getBoardDetail(@Param("ARTICLE_PK") int ARTICLE_PK);
    
    @Update("UPDATE ARTICLE " +
            "SET ARTICLE_TITLE = #{ARTICLE_TITLE}, " +
    		"ARTICLE_REGDATE = #{ARTICLE_REGDATE},"+
            "ARTICLE_CONTENT = #{ARTICLE_CONTENT}, " +
            "ARTICLE_VIEW = #{ARTICLE_VIEW}, " +
            "USER_PK = #{USER_PK} " +
            "WHERE ARTICLE_PK = #{ARTICLE_PK}")
    int updateBoard(BoardDto boardDto);
    
    //삭제 
    @Delete("delete from ARTICLE where ARTICLE_PK = #{ARTICLE_PK}")
    int deleteBoard(int ARTICLE_PK);
    
    
    @Select("select * from article where ARTICLE_PK=#{ARTICLE_PK}")
    List<BoardDto> detail (@Param("ARTICLE_PK")int ARTICLE_PK);
    
}
