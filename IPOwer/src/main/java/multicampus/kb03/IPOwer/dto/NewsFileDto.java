package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class NewsFileDto {

	private String newsTitle,newsWriter,fileName,fileContenttype,fileSize;
	private int newsPk,newsView,filePk;
	private Date newsRegdate;
	private String filePath;

	public NewsFileDto() {
		// TODO Auto-generated constructor stub
	}
	public NewsFileDto(String news_title, String news_writer, int news_pk, int news_view, Date news_regdate) {
		super();
		this.newsTitle = news_title;
		this.newsWriter = news_writer;
		this.newsPk = news_pk;
		this.newsView = news_view;
		this.newsRegdate = news_regdate;
	}

	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String file_path) {
		this.filePath = file_path;
	}
	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String news_title) {
		this.newsTitle = news_title;
	}

	public String getNewsWriter() {
		return newsWriter;
	}

	public void setNewsWriter(String news_writer) {
		this.newsWriter = news_writer;
	}

	public int getNewsPk() {
		return newsPk;
	}

	public void setNewsPk(int news_pk) {
		this.newsPk = news_pk;
	}

	public int getNewsView() {
		return newsView;
	}

	public void setNewsView(int news_view) {
		this.newsView = news_view;
	}

	public Date getNewsRegdate() {
		return newsRegdate;
	}

	public void setNewsRegdate(Date news_regdate) {
		this.newsRegdate = news_regdate;
	}

	public int getFilePk() {
		return filePk;
	}
	public void setFilePk(int file_pk) {
		this.filePk = file_pk;
	}
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String file_name) {
		this.fileName = file_name;
	}
	public String getFileContenttype() {
		return fileContenttype;
	}
	public void setFileContenttype(String file_contenttype) {
		this.fileContenttype = file_contenttype;
	}
	public String getFileSize() {
		return fileSize;
	}
	public void setFileSize(String file_size) {
		this.fileSize = file_size;
	}
	@Override
	public String toString() {

		return "NewsFileDto [news_title=" + newsTitle + ", news_writer=" + newsWriter + ", file_name=" + fileName
				+ ", file_contenttype=" + fileContenttype + ", news_pk=" + newsPk + ", news_view=" + newsView
				+ ", file_pk=" + filePk + ", file_size=" + fileSize + ", news_regdate=" + newsRegdate
				+ ", file_path=" + filePath + "]";
	}
}
	

	
