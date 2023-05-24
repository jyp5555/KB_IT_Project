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
			System.out.println("UserDao: "+findByUserId);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return findByUserId;
	}
	
	public List<UsersRoleDto> findAll(){
		return mapper.findAll();
	}

	public void save(UsersRoleDto user) {
		System.out.println("userdao save :  "+user);
		System.out.println(mapper.save(user));		
	}
}