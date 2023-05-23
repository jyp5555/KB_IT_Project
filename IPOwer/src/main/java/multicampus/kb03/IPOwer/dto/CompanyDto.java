package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class CompanyDto {
	
	private int companyPk, companyCode;
	private String companyName, companySite;
	private int companyFaceprice, companyFixedPrice, companyTopprice, companyBottomprice;
	private String companyManager;
	private Date companyOfferingdate, companyRefundingdate, companyListingdate;
	private int companyMinimumcount;
	private double companyCompetitiveratio;
	
	public CompanyDto() {
		super();
	}

	public int getCompanyPk() {
		return companyPk;
	}

	public int getCompanyCode() {
		return companyCode;
	}

	public String getCompanyName() {
		return companyName;
	}

	public String getCompanySite() {
		return companySite;
	}

	public int getCompanyFaceprice() {
		return companyFaceprice;
	}

	public int getCompanyFixedPrice() {
		return companyFixedPrice;
	}

	public int getCompanyTopprice() {
		return companyTopprice;
	}

	public int getCompanyBottomprice() {
		return companyBottomprice;
	}

	public String getCompanyManager() {
		return companyManager;
	}

	public Date getCompanyOfferingdate() {
		return companyOfferingdate;
	}

	public Date getCompanyRefundingdate() {
		return companyRefundingdate;
	}

	public Date getCompanyListingdate() {
		return companyListingdate;
	}

	public int getCompanyMinimumcount() {
		return companyMinimumcount;
	}

	public double getCompanyCompetitiveratio() {
		return companyCompetitiveratio;
	}

	public void setCompanyPk(int companyPk) {
		this.companyPk = companyPk;
	}

	public void setCompanyCode(int companyCode) {
		this.companyCode = companyCode;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public void setCompanySite(String companySite) {
		this.companySite = companySite;
	}

	public void setCompanyFaceprice(int companyFaceprice) {
		this.companyFaceprice = companyFaceprice;
	}

	public void setCompanyFixedPrice(int companyFixedPrice) {
		this.companyFixedPrice = companyFixedPrice;
	}

	public void setCompanyTopprice(int companyTopprice) {
		this.companyTopprice = companyTopprice;
	}

	public void setCompanyBottomprice(int companyBottomprice) {
		this.companyBottomprice = companyBottomprice;
	}

	public void setCompanyManager(String companyManager) {
		this.companyManager = companyManager;
	}

	public void setCompanyOfferingdate(Date companyOfferingdate) {
		this.companyOfferingdate = companyOfferingdate;
	}

	public void setCompanyRefundingdate(Date companyRefundingdate) {
		this.companyRefundingdate = companyRefundingdate;
	}

	public void setCompanyListingdate(Date companyListingdate) {
		this.companyListingdate = companyListingdate;
	}

	public void setCompanyMinimumcount(int companyMinimumcount) {
		this.companyMinimumcount = companyMinimumcount;
	}

	public void setCompanyCompetitiveratio(double companyCompetitiveratio) {
		this.companyCompetitiveratio = companyCompetitiveratio;
	}

	@Override
	public String toString() {
		return "CompanyDto [companyPk=" + companyPk + ", companyCode=" + companyCode + ", companyName=" + companyName
				+ ", companySite=" + companySite + ", companyFaceprice=" + companyFaceprice + ", companyFixedPrice="
				+ companyFixedPrice + ", companyTopprice=" + companyTopprice + ", companyBottomprice="
				+ companyBottomprice + ", companyManager=" + companyManager + ", companyOfferingdate="
				+ companyOfferingdate + ", companyRefundingdate=" + companyRefundingdate + ", companyListingdate="
				+ companyListingdate + ", companyMinimumcount=" + companyMinimumcount + ", companyCompetitiveratio="
				+ companyCompetitiveratio + "]";
	}
}
