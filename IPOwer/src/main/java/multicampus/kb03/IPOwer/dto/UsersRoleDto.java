package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class UsersRoleDto {
	
	private int userPk;
	private String userId, userPw, userName, userPhone;
	private Date userRegdate;
	private int userRolePk;
	private String userRoleName;
	private String userAuthtype;
	
	public UsersRoleDto() {
		super();
	}
	
	public UsersRoleDto(String userId, String userPw, String userName, String userPhone, Date userRegdate) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userRegdate = userRegdate;
	}
	
	public UsersRoleDto(int userPk, String userId, String userPw, String userName, String userPhone, Date userRegdate,
			int userRolePk, String userRoleName, String userAuthtype) {
		super();
		this.userPk = userPk;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userRegdate = userRegdate;
		this.userRolePk = userRolePk;
		this.userRoleName = userRoleName;
		this.userAuthtype = userAuthtype;
	}

	public int getUserPk() {
		return userPk;
	}

	public String getUserId() {
		return userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public String getUserName() {
		return userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public Date getUserRegdate() {
		return userRegdate;
	}

	public int getUserRolePk() {
		return userRolePk;
	}

	public String getUserRoleName() {
		return userRoleName;
	}

	public String getUserAuthtype() {
		return userAuthtype;
	}

	public void setUserPk(int userPk) {
		this.userPk = userPk;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public void setUserRegdate(Date userRegdate) {
		this.userRegdate = userRegdate;
	}

	@Override
	public String toString() {
		return "UsersRole [userPk=" + userPk + ", userId=" + userId + ", userPw=" + userPw + ", userName=" + userName
				+ ", userPhone=" + userPhone + ", userRegdate=" + userRegdate + ", userRolePk=" + userRolePk
				+ ", userRoleName=" + userRoleName + ", userAuthtype=" + userAuthtype + ", getUserPk()=" + getUserPk()
				+ ", getUserId()=" + getUserId() + ", getUserPw()=" + getUserPw() + ", getUserName()=" + getUserName()
				+ ", getUserPhone()=" + getUserPhone() + ", getUserRegdate()=" + getUserRegdate() + ", getUserRolePk()="
				+ getUserRolePk() + ", getUserRoleName()=" + getUserRoleName() + ", getUserAuthtype()="
				+ getUserAuthtype();
	}
}
