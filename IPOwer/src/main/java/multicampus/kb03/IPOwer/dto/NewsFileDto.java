package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class NewsFileDto {
	private String news_title,news_writer;
	private int news_pk,news_view;
	private Date news_regdate;
	public NewsFileDto() {
		// TODO Auto-generated constructor stub
	}
	public NewsFileDto(String news_title, String news_writer, int news_pk, int news_view, Date news_regdate) {
		super();
		this.news_title = news_title;
		this.news_writer = news_writer;
		this.news_pk = news_pk;
		this.news_view = news_view;
		this.news_regdate = news_regdate;
	}

	public String getNews_title() {
		return news_title;
	}

	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}

	public String getNews_writer() {
		return news_writer;
	}

	public void setNews_writer(String news_writer) {
		this.news_writer = news_writer;
	}

	public int getNews_pk() {
		return news_pk;
	}

	public void setNews_pk(int news_pk) {
		this.news_pk = news_pk;
	}

	public int getNews_view() {
		return news_view;
	}

	public void setNews_view(int news_view) {
		this.news_view = news_view;
	}

	public Date getNews_regdate() {
		return news_regdate;
	}

	public void setNews_regdate(Date news_regdate) {
		this.news_regdate = news_regdate;
	}

	@Override
	public String toString() {
		return "NewsFileDto [news_title=" + news_title + ", news_writer=" + news_writer + ", news_pk=" + news_pk
				+ ", news_view=" + news_view + ", news_regdate=" + news_regdate + "]";
	}
	
	
	
}
