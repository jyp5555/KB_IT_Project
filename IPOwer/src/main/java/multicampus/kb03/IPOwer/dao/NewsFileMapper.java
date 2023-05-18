package multicampus.kb03.IPOwer.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

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
	
	@Select("select * from view_thumbnail where news_title like '%'||#{title}||'%' order by news_regdate desc")
	List<NewsFileDto> selectThumbnailByTitle(@Param("title") String title);  
	
	@Select("select f.*\r\n" + 
			"from news n\r\n" + 
			"join files f on n.news_pk = f.news_pk\r\n" + 
			"where n.news_pk = #{pk}")
	List<NewsFileDto> selectFilePath(@Param("pk") int pk);
	
	
	@Select("select n.news_title,n.news_regdate,n.news_view,n.news_writer,f.file_path\r\n" + 
			"from news n\r\n" + 
			"join files f on n.news_pk = f.news_pk\r\n" + 
			"where n.news_regdate between #{start_date} and #{end_date}\r\n")
	List<NewsFileDto> selectByDate(@Param("start_date")Date start_date, @Param("end_date") Date end_date);
	
	@Select("select * from news where news_pk=#{news_pk}")
	NewsFileDto selectByPk(@Param("news_pk") int news_pk);
	
	@Insert("insert into news(news_pk,news_title,news_regdate,news_view,news_writer) values(#{dto.news_pk},#{dto.news_title},SYSDATE,#{dto.news_view},#{dto.news_writer})")
	int save(@Param("dto") NewsFileDto dto);
}
