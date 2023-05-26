package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class AdminNewsFileDto {
	private String fileSize,newsTitle,newsWriter,fileName,fileContenttype,filePath;
	private int newsPk,newsView,filePk;
	private Date newsRegdate;

	public AdminNewsFileDto() {
	}
	public AdminNewsFileDto(String newsTitle, String newsWriter, int filePk, String fileName, String fileContenttype,
			String filePath, int newsPk, int newsView, String fileSize, Date newsRegdate) {
		super();
		this.newsTitle = newsTitle;
		this.newsWriter = newsWriter;
		this.filePk = filePk;
		this.fileName = fileName;
		this.fileContenttype = fileContenttype;
		this.filePath = filePath;
		this.newsPk = newsPk;
		this.newsView = newsView;
		this.fileSize = fileSize;
		this.newsRegdate = newsRegdate;
	}
	public String getFileSize() {
		return fileSize;
	}
	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsWriter() {
		return newsWriter;
	}
	public void setNewsWriter(String newsWriter) {
		this.newsWriter = newsWriter;
	}
	public int getFilePk() {
		return filePk;
	}
	public void setFilePk(int filePk) {
		this.filePk = filePk;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileContenttype() {
		return fileContenttype;
	}
	public void setFileContenttype(String fileContenttype) {
		this.fileContenttype = fileContenttype;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public int getNewsPk() {
		return newsPk;
	}
	public void setNewsPk(int newsPk) {
		this.newsPk = newsPk;
	}
	public int getNewsView() {
		return newsView;
	}
	public void setNewsView(int newsView) {
		this.newsView = newsView;
	}
	public Date getNewsRegdate() {
		return newsRegdate;
	}
	public void setNewsRegdate(Date newsRegdate) {
		this.newsRegdate = newsRegdate;
	}
	@Override
	public String toString() {
		return "AdminNewsFileDto [fileSize=" + fileSize + ", newsTitle=" + newsTitle + ", newsWriter=" + newsWriter
				+ ", filePk=" + filePk + ", fileName=" + fileName + ", fileContenttype=" + fileContenttype
				+ ", filePath=" + filePath + ", newsPk=" + newsPk + ", newsView=" + newsView + ", newsRegdate="
				+ newsRegdate + "]";
	}
	
}