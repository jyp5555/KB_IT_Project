package multicampus.kb03.IPOwer.dto;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.Locale;

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
	public void setArticleRegdateFormatted(String formattedDate) {
        // formattedDate를 Date 객체로 변환하여 articleRegdate 필드에 설정하는 로직을 구현합니다.
        // 예시로는 SimpleDateFormat을 사용하여 변환하는 방법을 보여줍니다.
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 EEEE", new Locale("ko"));
        try {
            Date regDate = formatter.parse(formattedDate);
            setArticleRegdate(regDate);
        } catch (ParseException e) {
            // 예외 처리 로직을 구현합니다.
            e.printStackTrace();
        }
    }

    public LocalDate toLocalDate() {
        // articleRegdate 필드의 값을 LocalDate로 변환하는 로직을 구현합니다.
        Instant instant = articleRegdate.toInstant();
        ZoneId zoneId = ZoneId.systemDefault();
        LocalDate localDate = instant.atZone(zoneId).toLocalDate();
        return localDate;
    }
}
   
  
