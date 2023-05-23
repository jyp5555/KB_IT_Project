package multicampus.kb03.IPOwer.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import multicampus.kb03.IPOwer.dto.NewsFileDto;

@Mapper
public interface NewsFileMapper {
	
	@Select("select n.news_pk,n.news_title,n.news_regdate,n.news_view,n.news_writer,f.file_path,f.file_pk\r\n" + 
			"from news n\r\n" + 
			"join files f on n.news_pk = f.news_pk")
	List<NewsFileDto> selectAll();

	// /news 화면에 전체 카드 뉴스 리스트 출력
	@Select("select * from view_thumbnail order by news_regdate desc")
	List<NewsFileDto> selectThumbnail();  
	
	
	@Select("select f.*\r\n" + 
			"from news n\r\n" + 
			"join files f on n.news_pk = f.news_pk\r\n" + 
			"where n.news_pk = #{pk}")
	List<NewsFileDto> selectFilePath(@Param("pk") int pk);
	
	@Select("select * from view_thumbnail where news_title like '%'||#{title}||'%' order by news_regdate desc")
	List<NewsFileDto> selectThumbnailByTitle(@Param("title") String title);  
	
	@Select("select * from view_thumbnail \r\n" + 
			"where news_regdate between TO_DATE(#{start_date},'YYYY-MM-DD') and TO_DATE(#{end_date},'YYYY-MM-DD')+0.99999\r\n" +
			"order by news_regdate desc")
	List<NewsFileDto> selectThumbnailByDate(@Param("start_date")String start_date, @Param("end_date") String end_date);
	
	@Select("select * from view_thumbnail \r\n" + 
			"where news_title like '%'||#{title}||'%'\r\n" + 
			"and news_regdate between TO_DATE(#{start_date},'YYYY-MM-DD') and TO_DATE(#{end_date},'YYYY-MM-DD')+0.99999\r\n" + 
			"order by news_regdate desc")
	List<NewsFileDto> selectThumbnailByTitleDate(@Param("start_date")String start_date,@Param("end_date") String end_date, @Param("title") String title);
	
	
	@Select("select * from news where news_pk=#{news_pk}")
	NewsFileDto selectByPk(@Param("news_pk") int news_pk);
	
	@Insert("insert into news(news_pk,news_title,news_regdate,news_view,news_writer) values(#{dto.news_pk},#{dto.news_title},SYSDATE,#{dto.news_view},#{dto.news_writer})")
	int save(@Param("dto") NewsFileDto dto);
	
	 @Update("UPDATE news " +
	            "SET news_view = #{news_view}+1" +
	            "WHERE news_pk = #{news_pk}")
	    int updateNewsCnt(@Param("news_pk") int news_pk, @Param("news_view") int news_view);
	
}
