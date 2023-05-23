package multicampus.kb03.IPOwer.dto;

import java.util.Date;

public class CompanyDemandDto {
	
	private int companyPk, companyTicker;
	private String companyName, companySite;
	private int companyFaceprice, companyFixedprice, companyTopprice, companyBottomprice;
	private String companyManager;
	private Date companyOfferingdate, companyRefundingdate, companyListingdate;
	private int companyMinimumcount;
	private double companyCompetitiveratio;
	private int demandPk;
	private double demandRatio, demandLockup, demandNoprice, demandUnderbottom, demandBottom, demandBand, demandTop, demandOvertop;
	
	public CompanyDemandDto() {
		super();
	}

	public int getCompanyPk() {
		return companyPk;
	}

	public int getCompanyTicker() {
		return companyTicker;
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

	public int getCompanyFixedprice() {
		return companyFixedprice;
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

	public int getDemandPk() {
		return demandPk;
	}

	public double getDemandRatio() {
		return demandRatio;
	}

	public double getDemandLockup() {
		return demandLockup;
	}

	public double getDemandNoprice() {
		return demandNoprice;
	}

	public double getDemandUnderbottom() {
		return demandUnderbottom;
	}

	public double getDemandBottom() {
		return demandBottom;
	}

	public double getDemandBand() {
		return demandBand;
	}

	public double getDemandTop() {
		return demandTop;
	}

	public double getDemandOvertop() {
		return demandOvertop;
	}

	public void setCompanyPk(int companyPk) {
		this.companyPk = companyPk;
	}

	public void setCompanyTicker(int companyTicker) {
		this.companyTicker = companyTicker;
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

	public void setCompanyFixedprice(int companyFixedprice) {
		this.companyFixedprice = companyFixedprice;
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

	public void setDemandPk(int demandPk) {
		this.demandPk = demandPk;
	}

	public void setDemandRatio(double demandRatio) {
		this.demandRatio = demandRatio;
	}

	public void setDemandLockup(double demandLockup) {
		this.demandLockup = demandLockup;
	}

	public void setDemandNoprice(double demandNoprice) {
		this.demandNoprice = demandNoprice;
	}

	public void setDemandUnderbottom(double demandUnderbottom) {
		this.demandUnderbottom = demandUnderbottom;
	}

	public void setDemandBottom(double demandBottom) {
		this.demandBottom = demandBottom;
	}

	public void setDemandBand(double demandBand) {
		this.demandBand = demandBand;
	}

	public void setDemandTop(double demandTop) {
		this.demandTop = demandTop;
	}

	public void setDemandOvertop(double demandOvertop) {
		this.demandOvertop = demandOvertop;
	}

	@Override
	public String toString() {
		return "CompanyDemandDto [companyPk=" + companyPk + ", companyTicker=" + companyTicker + ", companyName="
				+ companyName + ", companySite=" + companySite + ", companyFaceprice=" + companyFaceprice
				+ ", companyFixedprice=" + companyFixedprice + ", companyTopprice=" + companyTopprice
				+ ", companyBottomprice=" + companyBottomprice + ", companyManager=" + companyManager
				+ ", companyOfferingdate=" + companyOfferingdate + ", companyRefundingdate=" + companyRefundingdate
				+ ", companyListingdate=" + companyListingdate + ", companyMinimumcount=" + companyMinimumcount
				+ ", companyCompetitiveratio=" + companyCompetitiveratio + ", demandPk=" + demandPk + ", demandRatio="
				+ demandRatio + ", demandLockup=" + demandLockup + ", demandNoprice=" + demandNoprice
				+ ", demandUnderbottom=" + demandUnderbottom + ", demandBottom=" + demandBottom + ", demandBand="
				+ demandBand + ", demandTop=" + demandTop + ", demandOvertop=" + demandOvertop + "]";
	}
}
