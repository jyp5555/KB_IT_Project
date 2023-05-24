package multicampus.kb03.IPOwer.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardDto {
	private int articlePk,userPk,rolePk,articleView;
	private String articleTitle, articleContent,userName;
	private Date articleRegdate;
	
	public BoardDto() {
		super();
	}

	public BoardDto(int articlePk, int userPk, int rolePk, int articleView, String articleTitle, String articleContent,
			String userName, Date articleRegdate) {
		super();
		this.articlePk = articlePk;
		this.userPk = userPk;
		this.rolePk = rolePk;
		this.articleView = articleView;
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.userName = userName;
		this.articleRegdate = articleRegdate;
	}

	public int getArticlePk() {
		return articlePk;
	}

	public void setArticlePk(int articlePk) {
		this.articlePk = articlePk;
	}

	public int getUserPk() {
		return userPk;
	}

	public void setUserPk(int userPk) {
		this.userPk = userPk;
	}

	public int getRolePk() {
		return rolePk;
	}

	public void setRolePk(int rolePk) {
		this.rolePk = rolePk;
	}

	public int getArticleView() {
		return articleView;
	}

	public void setArticleView(int articleView) {
		this.articleView = articleView;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getArticleRegdate() {
		return articleRegdate;
	}

	public void setArticleRegdate(Date articleRegdate) {
		this.articleRegdate = articleRegdate;
	}

	@Override
	public String toString() {
		return "BoardDto [articlePk=" + articlePk + ", userPk=" + userPk + ", rolePk=" + rolePk + ", articleView="
				+ articleView + ", articleTitle=" + articleTitle + ", articleContent=" + articleContent + ", userName="
				+ userName + ", articleRegdate=" + articleRegdate + "]";
	}
}
