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
		System.out.println("mapper.selectAll의dto의 값은:"+dto.toString());
		return dto;
	}	
	
	public AdminNewsFileDto selectByNewsPk(int newsPk){
		AdminNewsFileDto dto = mapper.selectByNewsPk(newsPk);
		return dto;
	}
	
	
	public List<AdminNewsFileDto> selectAllFilesByNewsPk(int newsPk){ 
		List<AdminNewsFileDto> list = mapper.selectAllFilesByNewsPk(newsPk); 
		return list; 
	}
	public void deleteFilesByNewsPk(int newsPk) {
		mapper.deleteFilesByNewsPk(newsPk);
	}
	
	public void deleteNewsByNewsPk(int newsPk) {
		// TODO Auto-generated method stub
		mapper.deleteNewsByNewsPk(newsPk);
	}
	 
	

	public void saveFiles(AdminNewsFileDto dto) {
		System.out.println("dao: "+dto);
		mapper.saveFiles(dto);
	}
	
	public void saveNews(String newsTitle) {
		mapper.saveNews(newsTitle);
	}

	public void updateNewsTitle(int newsPk, String newsTitle) {
		// TODO Auto-generated method stub
		mapper.updateNewsTitle(newsPk,newsTitle);
	}
	
//	public List<AdminNewsFileDto> selectByTitle(String title){
//		List<AdminNewsFileDto> dto = mapper.selectByTitle(title);
//		return dto;
}
