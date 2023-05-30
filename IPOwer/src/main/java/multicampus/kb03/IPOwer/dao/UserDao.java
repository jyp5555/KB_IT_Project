package multicampus.kb03.IPOwer.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import multicampus.kb03.IPOwer.dto.UsersRoleDto;

@Component
public class UserDao {
	
	@Autowired
	private UsersMapper mapper;

	public UsersRoleDto findByUserId(String userId) {
		UsersRoleDto findByUserId = null;
		try {
			findByUserId = mapper.findByUserId(userId);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return findByUserId;
	}
	
	public List<UsersRoleDto> findAll(){
		return mapper.findAll();
	}

	public void save(UsersRoleDto user) {
		try {
			mapper.save(user);		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public Integer getUserPkByUserId(String userId) {
		try {
			return mapper.getUserPkByUserId(userId);

		}catch(Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
}