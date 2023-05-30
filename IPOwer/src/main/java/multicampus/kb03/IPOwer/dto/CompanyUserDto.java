package multicampus.kb03.IPOwer.dto;

public class CompanyUserDto {

	private String userId;
	private int companyPk;
	private String companyName;
	
	public CompanyUserDto() {
		super();
	}

	public CompanyUserDto(String userId, int companyPk, String companyName) {
		super();
		this.userId = userId;
		this.companyPk = companyPk;
		this.companyName = companyName;
	}

	public String getUserId() {
		return userId;
	}

	public int getCompanyPk() {
		return companyPk;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setCompanyPk(int companyPk) {
		this.companyPk = companyPk;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Override
	public String toString() {
		return "CompanyUserDto [userId=" + userId + ", companyPk=" + companyPk + ", companyName=" + companyName + "]";
	}
	
	
}