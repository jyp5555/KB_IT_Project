package multicampus.kb03.IPOwer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import multicampus.kb03.IPOwer.dao.NewsFileDao;
import multicampus.kb03.IPOwer.dto.NewsFileDto;

@SpringBootApplication
public class IpOwerApplication {

	public static void main(String[] args) {
        ConfigurableApplicationContext context = SpringApplication.run(IpOwerApplication.class, args);
        context.getBean(IpOwerApplication.class).execute();
    }
    
    @Autowired
    private NewsFileDao dao;
   
    public void execute() {
//    	insert();
        selectAll();
    }
    
    private void insert() {
    	dao.insert();
	}

	private void selectAll() {
        List<NewsFileDto> all = dao.selectAll();
        for(NewsFileDto nf : all) {
            System.out.println(nf);
        }
    }
	
	private void selectByTitle() {
		List<NewsFileDto> dto = dao.selectByTitle("title");
		for (NewsFileDto newsFileDto : dto) {
			System.out.println(newsFileDto);
		}
	}
}
