package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class UsersRoleLikecompanyArticleComments { // UsersRoleLikecompanyArticleComments == mypage
	
	private int mypage_user_pk, mypage_role_pk;
	private int mypage_likecompany_pk,mypage_company_pk3;
	private String user_id, user_pw, user_name, user_phone;
	private Date user_regdate;
	private String user_role_name;
	private String user_authtype;
	
	public UsersRoleLikecompanyArticleComments() {
		super();
	}

	public UsersRoleLikecompanyArticleComments(
			int user_pk, 
			String user_id, 
			String user_pw, 
			String user_name, 
			String user_phone,
			Date user_regdate, 
			int user_role_pk, 
			String user_role_name, 
			String user_authtype) 
	{
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_regdate = user_regdate;
		this.user_role_name = user_role_name;
		this.user_authtype = user_authtype;
	}

}
