package multicampus.kb03.IPOwer.dao;

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

	public List<NewsFileDto> selectByTitle(String title){
		List<NewsFileDto> dto = mapper.selectByTitle(title);
		return dto;
	}
	
	public void insert() {
		NewsFileDto dto = new NewsFileDto();
		dto.setNews_pk(2);
		dto.setNews_title("title2");
		dto.setNews_view(0);
		dto.setNews_writer("관리자");
		
		mapper.save(dto);
		
	}
}
