package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class CmtDto {
	private int commentPk,userPk,articlePk;
	private String commentContent;
	private Date commentRegdate;
	private String userName;
	
	public CmtDto() {
		super();
	}

	public CmtDto(int commentPk, int userPk, int articlePk, String commentContent, Date commentRegdate,
			String userName) {
		super();
		this.commentPk = commentPk;
		this.userPk = userPk;
		this.articlePk = articlePk;
		this.commentContent = commentContent;
		this.commentRegdate = commentRegdate;
		this.userName = userName;
	}

	public int getCommentPk() {
		return commentPk;
	}

	public void setCommentPk(int commentPk) {
		this.commentPk = commentPk;
	}

	public int getUserPk() {
		return userPk;
	}

	public void setUserPk(int userPk) {
		this.userPk = userPk;
	}

	public int getArticlePk() {
		return articlePk;
	}

	public void setArticlePk(int articlePk) {
		this.articlePk = articlePk;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public Date getCommentRegdate() {
		return commentRegdate;
	}

	public void setCommentRegdate(Date commentRegdate) {
		this.commentRegdate = commentRegdate;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "CmtDto [commentPk=" + commentPk + ", userPk=" + userPk + ", articlePk=" + articlePk
				+ ", commentContent=" + commentContent + ", commentRegdate=" + commentRegdate + ", userName=" + userName
				+ "]";
	}
}
