package multicampus.kb03.IPOwer.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import multicampus.kb03.IPOwer.dao.UserDao;
import multicampus.kb03.IPOwer.dto.UsersRoleDto;

@Service
public class UserService {
	
	private final UserDao userDao;
	
	@Autowired
	public UserService(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public UsersRoleDto findByUserId(String userId) {
		return userDao.findByUserId(userId);
	}
}
