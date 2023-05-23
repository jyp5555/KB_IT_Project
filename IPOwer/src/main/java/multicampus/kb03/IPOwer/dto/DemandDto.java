package multicampus.kb03.IPOwer.dto;

public class DemandDto {
	
	private int demandPk, companyPk;
	private double demandRatio, demandLockup, demandNoprice, demandUnderbottom, demandBottom, demandBand, demandTop, demandOvertop;
	
	public DemandDto() {
		super();
	}

	public int getDemandPk() {
		return demandPk;
	}

	public int getCompanyPk() {
		return companyPk;
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

	public void setDemandPk(int demandPk) {
		this.demandPk = demandPk;
	}

	public void setCompanyPk(int companyPk) {
		this.companyPk = companyPk;
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
		return "DemandDto [demandPk=" + demandPk + ", companyPk=" + companyPk + ", demandRatio=" + demandRatio
				+ ", demandLockup=" + demandLockup + ", demandNoprice=" + demandNoprice + ", demandUnderbottom="
				+ demandUnderbottom + ", demandBottom=" + demandBottom + ", demandBand=" + demandBand + ", demandTop="
				+ demandTop + ", demandOvertop=" + demandOvertop + "]";
	}
}
