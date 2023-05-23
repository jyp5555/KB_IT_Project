package multicampus.kb03.IPOwer.dao;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import multicampus.kb03.IPOwer.dto.CompanyDemandDto;
import multicampus.kb03.IPOwer.dto.CompanyDto;
import multicampus.kb03.IPOwer.dto.DemandDto;
import multicampus.kb03.IPOwer.dto.UsersRoleDto;

@Mapper
public interface CompanyDemandMapper {
	
	@Select("select * from company")
	List<CompanyDto> findAllCompany();
	
	@Select("select \r\n" + 
			"c.*," + 
			"d.* \r\n" + 
			"from company c join demandforecast d on c.company_pk = d.company_pk;")
	List<CompanyDemandDto> findAllCompanyDemand();
	
	@Select("select \r\n" + 
			"c.*,d.* \r\n" +
			"from company c join demandforecast d on c.company_pk = d.company_pk\r\n" + 
			"where company_ticker=#{ticker};")
	CompanyDemandDto findOneCompanyDemand(@Param("ticker") int companyTicker);
	
	@Insert("insert into company \r\n" + 
			"values(\r\n" + 
			"3,#{dto.companyTicker}, \r\n" + 
			"#{dto.companyName}, \r\n" + 
			"#{dto.companySite}, \r\n" + 
			"#{dto.companyFaceprice}, \r\n" + 
			"#{dto.companyTopprice}, \r\n" + 
			"#{dto.companyBottomprice}, \r\n" + 
			"#{dto.companyFixedprice, jdbcType=VARCHAR}, \r\n" + 
			"#{dto.companyMinimumcount}, \r\n" + 
			"#{dto.companyManager}, \r\n" + 
			"#{dto.companyOfferingdate}, \r\n" + 
			"#{dto.companyRefundingdate, jdbcType=VARCHAR}, \r\n" + 
			"#{dto.companyListingdate, jdbcType=VARCHAR}, \r\n" + 
			"#{dto.companyCompetitiveratio, jdbcType=VARCHAR})")
	int insertCompany(@Param("dto") CompanyDemandDto dto);
	
	@Insert("insert into demandforecast values(3,2,#{dto.demandRatio},#{dto.demandLockup},#{dto.demandNoprice},#{dto.demandUnderbottom},#{dto.demandBottom},#{dto.demandBand},#{dto.demandTop},#{dto.demandOvertop})")
	int insertDemand(@Param("dto") CompanyDemandDto dto);
}