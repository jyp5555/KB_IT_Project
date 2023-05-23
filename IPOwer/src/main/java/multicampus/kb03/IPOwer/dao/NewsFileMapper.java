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
	
	@Select("select n.news_title,n.news_regdate,n.news_view,n.news_writer,f.file_path\r\n" + 
			"from news n\r\n" + 
			"join files f on n.news_pk = f.news_pk")
	List<NewsFileDto> selectAll();

	@Select("select n.news_title,n.news_regdate,n.news_view,n.news_writer,f.file_path\r\n" + 
			"from news n\r\n" + 
			"join files f on n.news_pk = f.news_pk\r\n" + 
			"where n.new_title like '%#{title}%'")
	List<NewsFileDto> selectByTitle(@Param("title") String title);
	
	@Select("select n.news_title,n.news_regdate,n.news_view,n.news_writer,f.file_path\r\n" + 
			"from news n\r\n" + 
			"join files f on n.news_pk = f.news_pk\r\n" + 
			"where n.news_regdate between #{start_date} and #{end_date}\r\n")
	List<NewsFileDto> selectByDate(@Param("start_date")Date start_date, @Param("end_date") Date end_date);
	
	@Insert("insert into news values(#{dto.news_pk},#{dto.news_title},sysdate,#{dto.news_view},#{dto.news_writer)")
	int save(@Param("dto") NewsFileDto dto);
}
