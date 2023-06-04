package multicampus.kb03.IPOwer.dao;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import multicampus.kb03.IPOwer.dto.UsersRoleDto;

@Mapper
public interface UsersMapper {
	
	@Select("SELECT U.USER_PK AS userPk, U.USER_ID AS userId, U.USER_PW AS userPw, U.USER_NAME AS userName, U.USER_PHONE AS userPhone, U.USER_REGDATE AS userRegdate, R.ROLE_PK AS rolePk, R.ROLE_NAME AS roleName, R.ROLE_AUTHTYPE AS roleAuthtype FROM USERS U, ROLE R WHERE R.ROLE_PK = U.ROLE_PK")
	List<UsersRoleDto> findAll();
	
	@Select("SELECT \r\n" + 
			"U.USER_PK AS userPk,\r\n" + 
			"U.USER_ID AS userId,\r\n" + 
			"U.USER_PW AS userPw,\r\n" + 
			"U.USER_NAME AS userName,\r\n" + 
			"U.USER_PHONE AS userPhone,\r\n" + 
			"U.USER_REGDATE AS userRegdate,\r\n" + 
			"R.ROLE_PK AS userRolePk,\r\n" + 
			"R.ROLE_NAME AS userRoleName,\r\n" + 
			"R.ROLE_AUTHTYPE AS userAuthtype\r\n" + 
			"FROM USERS U, ROLE R\r\n" + 
			"WHERE R.ROLE_PK = U.ROLE_PK AND U.USER_ID = #{id}")
	UsersRoleDto findByUserId(@Param("id") String userId);
	
	@Select("SELECT USER_PK FROM USERS WHERE USER_ID = #{userId}")
	int getUserPkByUserId(@Param("userId") String userId);
	
	@Insert("INSERT INTO USERS(USER_PK, USER_ID, USER_PW, USER_NAME, USER_PHONE, USER_REGDATE, ROLE_PK) VALUES(user_seq.nextval,#{user.userId},#{user.userPw},#{user.userName},#{user.userPhone},SYSDATE,1)")
	int save(@Param("user") UsersRoleDto user);
	
	@Insert("insert into role values(1,'USER','CRUD')")
	int saveRole1();
	
	@Insert("insert into role values(2,'ADMIN','CRUD');")
	int saveRole2();
	
}

