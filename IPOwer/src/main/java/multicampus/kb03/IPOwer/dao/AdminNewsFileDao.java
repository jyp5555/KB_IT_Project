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
		System.out.println("dto.getNewsPk()값:"+dto.getNewsPk());
		System.out.println("dto.getNewsTitle()값:"+dto.getNewsTitle());
		return dto;
	}
	
	
	public List<AdminNewsFileDto> selectAllFilesByNewsPk(int newsPk){ 
		List<AdminNewsFileDto> list = mapper.selectAllFilesByNewsPk(newsPk); 
		return list; 
	}
	public void deleteAllFilesByNewsPk(int newsPk) {
		mapper.deleteAllFilesByNewsPk(newsPk);
	}
	
	public void deleteNewsByNewsPk(int newsPk) {
		// TODO Auto-generated method stub
		mapper.deleteNewsByNewsPk(newsPk);
	}
	
	public void deleteFilesByFilePk(int filePk) {
		// TODO Auto-generated method stub
		mapper.deleteFilesByFilePk(filePk);
	}
	 
	

	public void saveCreateFiles(AdminNewsFileDto dto) {
		System.out.println("dao: "+dto);
		mapper.saveCreateFiles(dto);
	}
	
	public void saveUpdateFiles(AdminNewsFileDto dto) {
		System.out.println("dao: "+dto);
		mapper.saveUpdateFiles(dto);
	}
	
	public void saveCreateNews(String newsTitle) {
		mapper.saveCreateNews(newsTitle);
	}

	public void updateNewsTitle(int newsPk, String newsTitle) {
		// TODO Auto-generated method stub
		mapper.updateNewsTitle(newsPk,newsTitle);
	}
	
//	public List<AdminNewsFileDto> selectByTitle(String title){
//		List<AdminNewsFileDto> dto = mapper.selectByTitle(title);
//		return dto;
}
