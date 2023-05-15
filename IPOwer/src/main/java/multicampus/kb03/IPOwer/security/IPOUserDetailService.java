package multicampus.kb03.IPOwer.security;

import java.util.Optional;

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
	
	public IPOUserDetailService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public UserDetails loadUserByUsername(String insertedUserId) throws UsernameNotFoundException {
		
		Optional<UsersRoleDto> authenticatedUser = userService.findByUserId(insertedUserId);
		UsersRoleDto member = authenticatedUser.orElseThrow(() -> new UsernameNotFoundException("아이디나 비밀번호가 맞지 않습니다."));
		
		return User.builder()
				.username(member.getUserId())
				.password(member.getUserPw())
				.roles(member.getUserRoleName())
				.build();
	}
	
}
