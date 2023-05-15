package multicampus.kb03.IPOwer.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import multicampus.kb03.IPOwer.dao.UserDao;
import multicampus.kb03.IPOwer.dto.UsersRoleDto;

@Service
public class RegisterUserService {
	
    private final PasswordEncoder passwordEncoder;
    private final UserDao userDao;

    @Autowired
    public RegisterUserService(PasswordEncoder passwordEncoder, UserDao userDao) {
        this.passwordEncoder = passwordEncoder;
        this.userDao = userDao;
    }
    
//  private int userPk;
//	private String userId, userPw, userName, userPhone;
//	private Date userRegdate;
//	private int userRolePk;
//	private String userRoleName;
//	private String userAuthtype;

    public Long join(String userId, String userPw, String userName, String userPhone) {
		return null;
    	
    	
    	
//        validateDuplicateMember(member);
//        repository.save(member);
//
//        return member.getId();
    	
    }

    private void validateDuplicateMember() {
//        repository.findByUserid(member.getUserid())
//                .ifPresent(m -> {
//                    throw new IllegalStateException("이미 존재하는 회원입니다.");
//                });
    }
}