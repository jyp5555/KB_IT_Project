package multicampus.kb03.IPOwer.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import multicampus.kb03.IPOwer.dto.AdminNewsFileDto;

@Mapper
public interface AdminNewsFileMapper {
	
	@Select("select * from view_thumbnail order by news_pk desc")
	List<AdminNewsFileDto> selectAll();	
	
	@Select("select * from view_thumbnail where news_pk=#{news_pk}")
	AdminNewsFileDto selectByNewsPk(@Param("news_pk") int news_pk);	
	
	@Select("select n.news_pk, n.news_title,n.news_regdate,n.news_view,n.news_writer,f.file_pk,f.file_name,f.file_contenttype,f.file_size,f.file_path\r\n" + 
			"from news n\r\n" + 
			"join files f\r\n" +
			"on n.news_pk = f.news_pk where n.news_pk=#{news_pk}")
	List<AdminNewsFileDto> selectAllFilesByNewsPk(@Param("news_pk") int news_pk);
	
	@Insert("insert into news (news_pk, news_title, news_regdate, news_view, news_writer) " +
	        "values (news_seq.nextval, #{news_title}, sysdate, 0, '관리자')")
	int saveNews(@Param("news_title") String news_title);

	@Insert("insert into files values(files_seq.nextval,news_seq.CURRVAL,#{dto.file_name},#{dto.file_contenttype},#{dto.file_size},#{dto.file_path})")
	int saveFiles(@Param("dto") AdminNewsFileDto dto);
	
//	@Select("select n.news_pk, n.news_title,n.news_regdate,n.news_view,n.news_writer,f.file_pk,f.file_name,f.file_contenttype,f.file_path\r\n" + 
//			"from news n\r\n" + 
//			"join files f on n.news_pk = f.news_pk\r\n" + 
//			"where n.new_title like '%#{title}%'")
//	List<AdminNewsFileDto> selectByTitle(@Param("title") String title);

	@Update("UPDATE news SET news_title = #{news_title} WHERE news_pk = #{news_pk}")
	int updateNewsTitle(@Param("news_pk") int news_pk, @Param("news_title") String news_title);

	
	
}
