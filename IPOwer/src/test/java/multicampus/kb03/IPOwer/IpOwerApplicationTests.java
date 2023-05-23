package multicampus.kb03.IPOwer;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import multicampus.kb03.IPOwer.dao.UserDao;

@SpringBootTest
class IpOwerApplicationTests {

	@Test
	void contextLoads() {
	}
	
	@Test
	void selectAll() {
		UserDao userDao = new UserDao();
		userDao.findAll();
	}
}
