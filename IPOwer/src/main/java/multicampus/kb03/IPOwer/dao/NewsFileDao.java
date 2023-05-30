package multicampus.kb03.IPOwer.dao;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import multicampus.kb03.IPOwer.dto.NewsFileDto;

@Component
public class NewsFileDao {
	@Autowired
	private NewsFileMapper mapper;
	
	public List<NewsFileDto> selectAll(){
		List<NewsFileDto> dto = mapper.selectAll();
		return dto;
		
	}
	
	public List<NewsFileDto> selectThumbnail(){
		List<NewsFileDto> dto = mapper.selectThumbnail();
		return dto;
	}

	public List<NewsFileDto> selectThumbnailByTitle(String title){
		List<NewsFileDto> dto = mapper.selectThumbnailByTitle(title);
		return dto;
	}
	
	public List<NewsFileDto> selectThumbnailByDate(String start_date,String end_date){
		List<NewsFileDto> dto = mapper.selectThumbnailByDate(start_date,end_date);
		return dto;
	}
	
	public List<NewsFileDto> selectThumbnailByTitleDate(String start_date,String end_date,String title){
		List<NewsFileDto> dto = mapper.selectThumbnailByTitleDate(start_date,end_date,title);
		return dto;
	}
	
	public List<NewsFileDto> selectFilePath(int pk){
		List<NewsFileDto> path = mapper.selectFilePath(pk);
		return path;
	}
	
	public NewsFileDto selectByPk(int pk) {
		NewsFileDto dto = mapper.selectByPk(pk);
		return dto;
	}
	public void insert() {
		NewsFileDto dto = new NewsFileDto();
		dto.setNewsPk(2);
		dto.setNewsTitle("title2");
		dto.setNewsView(0);
		dto.setNewsWriter("관리자");
		
		mapper.save(dto);
		
	}

	public void updateNewsCnt(int news_pk,int news_view) {
		mapper.updateNewsCnt(news_pk,news_view);
	}
}
