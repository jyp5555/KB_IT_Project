package multicampus.kb03.IPOwer.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import multicampus.kb03.IPOwer.dto.UsersRoleDto;

public class AuthenticatedUser implements UserDetails{
	
	private UsersRoleDto authenticatedUser;
	
	
	public AuthenticatedUser(UsersRoleDto authenticatedUser) {
		super();
		this.authenticatedUser = authenticatedUser;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        
        authorities.add(new SimpleGrantedAuthority(authenticatedUser.getUserRoleName()));
        
        return authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return this.authenticatedUser.getUserPw();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.authenticatedUser.getUserId();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
	public String getUserRealname() {
		// TODO Auto-generated method stub
		return this.authenticatedUser.getUserName();
	}
}
