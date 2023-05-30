package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class CmtDto {
	private int commentPk,userPk,articlePk;
	private String commentContent;
	private Date commentRegdate;
	private String userId;
	
	public CmtDto() {
		super();
	}

	public CmtDto(int commentPk, int userPk, int articlePk, String commentContent, Date commentRegdate,
			String userId) {
		super();
		this.commentPk = commentPk;
		this.userPk = userPk;
		this.articlePk = articlePk;
		this.commentContent = commentContent;
		this.commentRegdate = commentRegdate;
		this.userId = userId;
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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "CmtDto [commentPk=" + commentPk + ", userPk=" + userPk + ", articlePk=" + articlePk
				+ ", commentContent=" + commentContent + ", commentRegdate=" + commentRegdate + ", userId=" + userId
				+ "]";
	}
}
