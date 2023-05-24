package multicampus.kb03.IPOwer.service;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import multicampus.kb03.IPOwer.dao.UserDao;
import multicampus.kb03.IPOwer.dto.UsersRoleDto;

@Service
public class RegisterUserService {
	
	@Autowired
    private final PasswordEncoder passwordEncoder;
	
	@Autowired
    private final UserDao userDao;

    
    public RegisterUserService(PasswordEncoder passwordEncoder, UserDao userDao) {
        this.passwordEncoder = passwordEncoder;
        this.userDao = userDao;
    }

    public String join(String userId, String userPw, String userName, String userPhone) {   	
    	
    	UsersRoleDto user = new UsersRoleDto();
    	user.setUserId(userId);    	
    	user.setUserPw(passwordEncoder.encode(userPw));
    	user.setUserName(userName);
    	user.setUserPhone(userPhone);
        validateDuplicateMember(user);
        userDao.save(user);
        return user.getUserId();    	
    }

    private void validateDuplicateMember(UsersRoleDto user) throws IllegalStateException {
    	UsersRoleDto findByUserId = userDao.findByUserId(user.getUserId());
		if(findByUserId != null){
    		throw new IllegalStateException("이미 존재하는 회원입니다.");
    	}
    }
}