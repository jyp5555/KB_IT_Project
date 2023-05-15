package multicampus.kb03.IPOwer.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import multicampus.kb03.IPOwer.dto.UsersRoleDto;

@Mapper
public interface UsersMapper {
	
	@Select("SELECT U.USER_PK AS user_pk, U.USER_ID AS user_id, U.USER_PW AS user_pw, U.USER_NAME AS user_name, U.USER_PHONE AS user_phone, U.USER_REGDATE AS user_regdate, R.ROLE_PK AS role_pk, R.ROLE_NAME AS role_name, R.ROLE_AUTHTYPE AS role_authtype"
			+ "FROM USERS AS U, ROLE AS R "
			+ "WHERE R.ROLE_PK = U.ROLE_PK")
	
	List<UsersRoleDto> findAll();
	
//	@Insert("")
	
}