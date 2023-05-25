package multicampus.kb03.IPOwer.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardDto {
   private int ARTICLE_PK,USER_PK,ROLE_PK,ARTICLE_VIEW;
   private String ARTICLE_TITLE, ARTICLE_CONTENT,USER_NAME;
   private Date ARTICLE_REGDATE;
   
   
   public BoardDto(int aRTICLE_PK, int uSER_PK, int rOLE_PK, int aRTICLE_VIEW, String aRTICLE_TITLE,
		String aRTICLE_CONTENT, String uSER_NAME, Date aRTICLE_REGDATE) {
	super();
	ARTICLE_PK = aRTICLE_PK;
	USER_PK = uSER_PK;
	ROLE_PK = rOLE_PK;
	ARTICLE_VIEW = aRTICLE_VIEW;
	ARTICLE_TITLE = aRTICLE_TITLE;
	ARTICLE_CONTENT = aRTICLE_CONTENT;
	ARTICLE_REGDATE = aRTICLE_REGDATE;
	USER_NAME = uSER_NAME;
}

@Override
public String toString() {
	return "BbsDto [ARTICLE_PK=" + ARTICLE_PK + ", USER_PK=" + USER_PK + ", ROLE_PK=" + ROLE_PK + ", ARTICLE_VIEW="
			+ ARTICLE_VIEW + ", ARTICLE_TITLE=" + USER_NAME + ", USER_NAME=" + ARTICLE_TITLE + ", ARTICLE_CONTENT=" + ARTICLE_CONTENT
			+ ", ARTICLE_REGDATE=" + ARTICLE_REGDATE + "]";
}

   
   public BoardDto() {
	   
   }
   
public int getARTICLE_PK() {
	return ARTICLE_PK;
}
public String getUSER_NAME() {
	return USER_NAME;
}
public void setUSER_NAME(String uSER_NAME) {
	USER_NAME = uSER_NAME;
}

public void setARTICLE_PK(int aRTICLE_PK) {
	ARTICLE_PK = aRTICLE_PK;
}

public int getUSER_PK() {
	return USER_PK;
}
public void setUSER_PK(int uSER_PK) {
	USER_PK = uSER_PK;
}
public int getROLE_PK() {
	return ROLE_PK;
}
public void setROLE_PK(int rOLE_PK) {
	ROLE_PK = rOLE_PK;
}
public int getARTICLE_VIEW() {
	return ARTICLE_VIEW;
}
public void setARTICLE_VIEW(int aRTICLE_VIEW) {
	ARTICLE_VIEW = aRTICLE_VIEW;
}
public String getARTICLE_TITLE() {
	return ARTICLE_TITLE;
}
public void setARTICLE_TITLE(String aRTICLE_TITLE) {
	ARTICLE_TITLE = aRTICLE_TITLE;
}
public String getARTICLE_CONTENT() {
	return ARTICLE_CONTENT;
}
public void setARTICLE_CONTENT(String aRTICLE_CONTENT) {
	ARTICLE_CONTENT = aRTICLE_CONTENT;
}
public Date getARTICLE_REGDATE() {
	return ARTICLE_REGDATE;
}
public void setARTICLE_REGDATE(Date aRTICLE_REGDATE) {
	ARTICLE_REGDATE = aRTICLE_REGDATE;
}

public void setUSER_PK(String string) {
	// TODO Auto-generated method stub
	
}


}
   
  
