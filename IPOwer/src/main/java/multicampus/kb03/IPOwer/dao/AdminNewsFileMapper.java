package multicampus.kb03.IPOwer.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import multicampus.kb03.IPOwer.dto.AdminNewsFileDto;
import multicampus.kb03.IPOwer.dto.NewsFileDto;

@Mapper
public interface AdminNewsFileMapper {
	
	@Select("select * from view_thumbnail order by news_pk desc")
	List<AdminNewsFileDto> selectAll();
	
	@Select("select * from view_thumbnail where news_pk=#{newsPk}")
	AdminNewsFileDto selectByNewsPk(@Param("newsPk") int newsPk);	
	
	@Select("select n.news_pk, n.news_title,n.news_regdate,n.news_view,n.news_writer,f.file_pk,f.file_name,f.file_contenttype,f.file_size,f.file_path\r\n" + 
			"from news n\r\n" + 
			"join files f\r\n" +
			"on n.news_pk = f.news_pk where n.news_pk=#{newsPk}")
	List<AdminNewsFileDto> selectAllFilesByNewsPk(@Param("newsPk") int newsPk);
	
	@Insert("insert into news (news_pk, news_title, news_regdate, news_view, news_writer) " +
	        "values (news_seq.nextval, #{news_title}, sysdate, 0, '관리자')")
	int saveCreateNews(@Param("news_title") String newsTitle);

	@Insert("insert into news (news_pk, news_title, news_regdate, news_view, news_writer) " +
			"values (news_seq.nextval, #{news_title}, sysdate, 0, '관리자')")
	int saveUpdateNews(@Param("news_title") String newsTitle);
	
	@Insert("insert into files values(files_seq.nextval,news_seq.CURRVAL,#{dto.fileName},#{dto.fileContenttype},#{dto.fileSize},#{dto.filePath})")
	int saveCreateFiles(@Param("dto") AdminNewsFileDto dto);
	
	@Insert("insert into files values(files_seq.nextval,#{dto.newsPk},#{dto.fileName},#{dto.fileContenttype},#{dto.fileSize},#{dto.filePath})")
	int saveUpdateFiles(@Param("dto") AdminNewsFileDto dto);
//	@Select("select n.news_pk, n.news_title,n.news_regdate,n.news_view,n.news_writer,f.file_pk,f.file_name,f.file_contenttype,f.file_path\r\n" + 
//			"from news n\r\n" + 
//			"join files f on n.news_pk = f.news_pk\r\n" + 
//			"where n.new_title like '%#{title}%'")
//	List<AdminNewsFileDto> selectByTitle(@Param("title") String title);

	@Update("UPDATE news SET news_title = #{newsTitle} WHERE news_pk = #{newsPk}")
	int updateNewsTitle(@Param("newsPk") int newsPk, @Param("newsTitle") String newsTitle);
	
	@Delete("Delete from files where news_pk = #{newsPk}")
	int deleteAllFilesByNewsPk(@Param("newsPk") int newPk);

	@Delete("Delete from news where news_pk = #{newsPk}")
	int deleteNewsByNewsPk(@Param("newsPk") int newsPk);
	
	@Delete("Delete from files where file_pk= #{filePk}")
	int deleteFilesByFilePk(@Param("filePk") int filePk);

	
	
}
