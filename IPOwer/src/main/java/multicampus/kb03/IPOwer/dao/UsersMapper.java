package multicampus.kb03.IPOwer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import multicampus.kb03.IPOwer.dto.UsersRole;

@Mapper
public interface UsersMapper {
	
	@Select("SELECT * FROM USERS, ROLE WHERE ROLE.ROLE_PK = USERS.ROLE_PK")
	List<UsersRole> findAll();
	
//	@Insert("")
}
