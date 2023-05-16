package multicampus.kb03.IPOwer.dto;

public class FileDto {
	int file_pk,news_pk,file_size;
	String file_name,file_contenttype,file_path;
	
	public FileDto() {	
	// TODO Auto-generated constructor stub
	}

	public FileDto(int file_pk, int news_pk, int file_size, String file_name, String file_contenttype,
			String file_path) {
		super();
		this.file_pk = file_pk;
		this.news_pk = news_pk;
		this.file_size = file_size;
		this.file_name = file_name;
		this.file_contenttype = file_contenttype;
		this.file_path = file_path;
	}

	public int getFile_pk() {
		return file_pk;
	}

	public void setFile_pk(int file_pk) {
		this.file_pk = file_pk;
	}

	public int getNews_pk() {
		return news_pk;
	}

	public void setNews_pk(int news_pk) {
		this.news_pk = news_pk;
	}

	public int getFile_size() {
		return file_size;
	}

	public void setFile_size(int file_size) {
		this.file_size = file_size;
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

	public void setFile_contenttype(String file_contenttype) {
		this.file_contenttype = file_contenttype;
	}

	public String getFile_path() {
		return file_path;
	}

	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}

	@Override
	public String toString() {
		return "FileDto [file_pk=" + file_pk + ", news_pk=" + news_pk + ", file_size=" + file_size + ", file_name="
				+ file_name + ", file_contenttype=" + file_contenttype + ", file_path=" + file_path + "]";
	}
	
	
}
