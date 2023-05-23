package multicampus.kb03.IPOwer.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import multicampus.kb03.IPOwer.dto.AdminNewsFileDto;
import multicampus.kb03.IPOwer.dto.NewsFileDto;

@Component
public class AdminNewsFileDao {
	@Autowired
	private AdminNewsFileMapper mapper;
	
	public List<AdminNewsFileDto> selectAll(){
		List<AdminNewsFileDto> dto = mapper.selectAll();
		return dto;
	}	
	
	public AdminNewsFileDto selectByNewsPk(int news_pk){
		AdminNewsFileDto dto = mapper.selectByNewsPk(news_pk);
		return dto;
	}
	
	
	public List<AdminNewsFileDto> selectAllFilesByNewsPk(int news_pk){ 
		List<AdminNewsFileDto> list = mapper.selectAllFilesByNewsPk(news_pk); 
		return list; 
	}
	 
	

	public void saveFiles(AdminNewsFileDto dto) {
		mapper.saveFiles(dto);
	}
	
	public void saveNews(String news_title) {
		mapper.saveNews(news_title);
	}

	public void updateNewsTitle(int news_pk, String news_title) {
		// TODO Auto-generated method stub
		System.out.println("정상:"+news_pk+","+news_title);
		mapper.updateNewsTitle(news_pk,news_title);
	}
	
//	public List<AdminNewsFileDto> selectByTitle(String title){
//		List<AdminNewsFileDto> dto = mapper.selectByTitle(title);
//		return dto;
}
