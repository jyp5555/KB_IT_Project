package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class AdminNewsFileDto {
	private String news_title,news_writer,file_pk,file_name,file_contenttype,file_path;
	private int news_pk,news_view;
	private String file_size;
	private Date news_regdate;
	public AdminNewsFileDto() {
		// TODO Auto-generated constructor stub
	}
	public AdminNewsFileDto(
			String news_title, 
			String news_writer, 
			int news_pk, 
			int news_view, 
			Date news_regdate,
			String file_pk,
			String file_name,
			String file_contenttype,
			String file_path,
			String file_size
			) {
		super();
		this.news_pk = news_pk;
		this.news_title = news_title;
		this.news_writer = news_writer;
		this.news_pk = news_pk;
		this.news_view = news_view;
		this.news_regdate = news_regdate;
		this.file_pk = file_pk;
		this.file_name = file_name;
		this.file_contenttype = file_contenttype;
		this.file_path = file_path;
		this.file_size = file_size;
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
	public String getFile_pk() {
		return file_pk;
	}
	public void setFile_pk(String file_pk) {
		this.file_pk = file_pk;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_contenttype() {
		return file_contenttype;
	}
	public void setFile_content_type(String file_contenttype) {
		this.file_contenttype = file_contenttype;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
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
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String oSize) {
		this.file_size = oSize;
	}
	public Date getNews_regdate() {
		return news_regdate;
	}
	public void setNews_regdate(Date news_regdate) {
		this.news_regdate = news_regdate;
	}
	@Override
	public String toString() {
		return "AdminNewsFileDto [news_title=" + news_title + ", news_writer=" + news_writer + ", file_pk=" + file_pk
				+ ", file_name=" + file_name + ", file_content_type=" + file_contenttype + ", file_path=" + file_path
				+ ", news_pk=" + news_pk + ", news_view=" + news_view + ", file_size=" + file_size + ", news_regdate="
				+ news_regdate + "]";
	}
	
}
