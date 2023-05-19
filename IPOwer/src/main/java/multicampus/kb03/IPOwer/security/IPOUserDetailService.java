package multicampus.kb03.IPOwer.security;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import multicampus.kb03.IPOwer.dto.UsersRoleDto;
import multicampus.kb03.IPOwer.service.UserService;

@Component
public class IPOUserDetailService implements UserDetailsService{
	
	private final UserService userService;
	
	@Autowired
	public IPOUserDetailService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public UserDetails loadUserByUsername(String insertedUserId) throws UsernameNotFoundException {
		
		UsersRoleDto user = userService.findByUserId(insertedUserId);
        
        if(user == null){
            throw new UsernameNotFoundException(insertedUserId);
        }
        
		System.out.println("IPOUserService user: "+user);
		
		return new AuthenticatedUser(user);
	}
}
