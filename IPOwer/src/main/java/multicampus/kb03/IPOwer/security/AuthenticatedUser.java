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
		return this.authenticatedUser.getUserPw();
	}

	@Override
	public String getUsername() {
		return this.authenticatedUser.getUserId();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
	
	public String getUserRealname() {
		return this.authenticatedUser.getUserName();
	}
}
