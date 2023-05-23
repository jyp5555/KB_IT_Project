package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class UsersRole {
	
	private int user_pk;
	private String user_id, user_pw, user_name, user_phone;
	private Date user_regdate;
	private int user_role_pk;
	private String user_role_name;
	private String user_authtype;
	
	public UsersRole() {
		super();
	}

	public UsersRole(int user_pk, String user_id, String user_pw, String user_name, String user_phone,
			Date user_regdate, int user_role_pk, String user_role_name, String user_authtype) {
		super();
		this.user_pk = user_pk;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_regdate = user_regdate;
		this.user_role_pk = user_role_pk;
		this.user_role_name = user_role_name;
		this.user_authtype = user_authtype;
	}

	public int getUser_pk() {
		return user_pk;
	}
	
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getUser_pw() {
		return user_pw;
	}
	
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	
	public String getUser_name() {
		return user_name;
	}
	
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public String getUser_phone() {
		return user_phone;
	}
	
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	
	public Date getUser_regdate() {
		return user_regdate;
	}
	
	public void setUser_regdate(Date user_regdate) {
		this.user_regdate = user_regdate;
	}
	
	public int getUser_role_pk() {
		return user_role_pk;
	}
	
	public String getUser_role_name() {
		return user_role_name;
	}
	
	public String getUser_authtype() {
		return user_authtype;
	}
}
