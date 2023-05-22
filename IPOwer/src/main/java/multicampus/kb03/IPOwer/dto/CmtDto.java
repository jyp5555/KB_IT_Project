package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class CmtDto {
	 private int COMMENT_PK,USER_PK3,ARTICLE_PK2;
	   public CmtDto(int cOMMENT_PK, int uSER_PK3, int aRTICLE_PK2, String cOMMENT_CONTENT, Date cOMMENT_REGDATE) {
		super();
		COMMENT_PK = cOMMENT_PK;
		USER_PK3 = uSER_PK3;
		ARTICLE_PK2 = aRTICLE_PK2;
		COMMENT_CONTENT = cOMMENT_CONTENT;
		COMMENT_REGDATE = cOMMENT_REGDATE;
	}
	private String COMMENT_CONTENT;
	   private Date COMMENT_REGDATE;
	public int getCOMMENT_PK() {
		return COMMENT_PK;
	}
	public void setCOMMENT_PK(int cOMMENT_PK) {
		COMMENT_PK = cOMMENT_PK;
	}
	public int getUSER_PK3() {
		return USER_PK3;
	}
	public void setUSER_PK3(int uSER_PK3) {
		USER_PK3 = uSER_PK3;
	}
	public int getARTICLE_PK2() {
		return ARTICLE_PK2;
	}
	public void setARTICLE_PK2(int aRTICLE_PK2) {
		ARTICLE_PK2 = aRTICLE_PK2;
	}
	public String getCOMMENT_CONTENT() {
		return COMMENT_CONTENT;
	}
	public void setCOMMENT_CONTENT(String cOMMENT_CONTENT) {
		COMMENT_CONTENT = cOMMENT_CONTENT;
	}
	public Date getCOMMENT_REGDATE() {
		return COMMENT_REGDATE;
	}
	public void setCOMMENT_REGDATE(Date cOMMENT_REGDATE) {
		COMMENT_REGDATE = cOMMENT_REGDATE;
	}
	@Override
	public String toString() {
		return "CmtDto [COMMENT_PK=" + COMMENT_PK + ", USER_PK3=" + USER_PK3 + ", ARTICLE_PK2=" + ARTICLE_PK2
				+ ", COMMENT_CONTENT=" + COMMENT_CONTENT + ", COMMENT_REGDATE=" + COMMENT_REGDATE + "]";
	}
	   
}
