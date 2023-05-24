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

    @Insert("INSERT INTO ARTICLE (articlePk,articleTitle,userName ,articleContent,articleRegdate) " +
            "VALUES (BOARD_SEQ.NEXT_VAL, #{dto.articleTitle},#{dto.userName}, #{dto.articleContent},sysdate)")
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
            "SET articleTitle = #{articleTitle}, " +
    		"ARTICLE_REGDATE = sysdate,"+
            "ARTICLE_CONTENT = #{articleContent}, " +
            "ARTICLE_VIEW = #{articleView}, " +
            "USER_PK = #{userPk} " +
            "WHERE ARTICLE_PK = #{articlePk}")
    int updateBoard(BoardDto boardDto);
    
    //삭제 
    @Delete("delete from ARTICLE where ARTICLE_PK = #{ARTICLE_PK}")
    int deleteBoard(int ARTICLE_PK);
    
    
    @Select("SELECT A.ARTICLE_PK, A.ARTICLE_TITLE, A.ARTICLE_CONTENT, A.ARTICLE_VIEW, A.ARTICLE_REGDATE, U.USER_NAME FROM ARTICLE A\r\n" + 
    		"JOIN USERS U ON A.USER_PK = U.USER_PK\r\n" + 
    		"WHERE A.ARTICLE_PK =#{ARTICLE_PK}")
    BoardDto detail (@Param("ARTICLE_PK")int ARTICLE_PK);
    
    //조회수 자동 증가 
    
    @Update("UPDATE ARTICLE " +
            "SET ARTICLE_VIEW = #{ARTICLE_VIEW}+1" +
            "WHERE ARTICLE_PK = #{ARTICLE_PK}")
    int updatereviewcnt(@Param("ARTICLE_PK") int ARTICLE_PK, @Param("ARTICLE_VIEW") int ARTICLE_VIEW);
    
    //검색
//    @Select("select * from article where ARTICLE_TITLE like '%'||#{ARTICLE_TITLE}||'%' order by ARTICLE_REGDATE desc")
//	List<BoardDto> selectsearchByTitle(@Param("ARTICLE_TITLE") String ARTICLE_TITLE);  
//    
//    @Select("select * from article \r\n" + 
//			"where ARTICLE_TITLE like '%'||#{title}||'%'\r\n" + 
//			"and ARTICLE_REGDATE between TO_DATE(#{start_date},'YYYY-MM-DD') and TO_DATE(#{end_date},'YYYY-MM-DD')+0.99999\r\n" + 
//			"order by ARTICLE_REGDATE desc")
//	List<BoardDto> selectdateByTitleDate(@Param("start_date")String start_date,@Param("end_date") String end_date, @Param("title") String title);
    
    @Select("SELECT * FROM ARTICLE")
    List<BoardDto> getAllBoards();

    @Select("SELECT * FROM ARTICLE WHERE ${searchType} LIKE '%'||#{keyword}||'%'")
    List<BoardDto> searchBoards(@Param("searchType") String searchType, @Param("keyword") String keyword);

    
    
    
    
}





