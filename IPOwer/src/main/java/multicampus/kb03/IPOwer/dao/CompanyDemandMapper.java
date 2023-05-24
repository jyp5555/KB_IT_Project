package multicampus.kb03.IPOwer.dao;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import multicampus.kb03.IPOwer.dto.CompanyDemandDto;
import multicampus.kb03.IPOwer.dto.CompanyDto;
import multicampus.kb03.IPOwer.dto.UsersRoleDto;

@Mapper
public interface CompanyDemandMapper {
	
	@Select("select * from company")
	List<CompanyDto> findAllCompany();
	
	@Select("select \r\n" + 
			"c.*," + 
			"d.* \r\n" + 
			"from company c join demandforecast d on c.company_pk = d.company_pk")
	List<CompanyDemandDto> findAllCompanyDemand();
	
	@Select("select c.*, d.*\r\n" + 
			"from company c join demandforecast d on c.company_pk=d.company_pk\r\n" + 
			"where c.company_pk = ${id}")
	CompanyDemandDto findOneCompanyDemand(@Param("id") int id);
	
	@Insert("insert into company \r\n" + 
			"values(\r\n" + 
			"4,#{dto.companyTicker}, \r\n" + 
			"#{dto.companyName}, \r\n" + 
			"#{dto.companySite, jdbcType=VARCHAR}, \r\n" + 
			"#{dto.companyFaceprice}, \r\n" + 
			"#{dto.companyTopprice}, \r\n" + 
			"#{dto.companyBottomprice}, \r\n" + 
			"#{dto.companyFixedprice, jdbcType=INTEGER}, \r\n" + 
			"#{dto.companyMinimumcount}, \r\n" + 
			"#{dto.companyManager}, \r\n" + 
			"#{dto.companyOfferingdate}, \r\n" + 
			"#{dto.companyRefundingdate, jdbcType=DATE}, \r\n" + 
			"#{dto.companyListingdate, jdbcType=DATE}, \r\n" + 
			"#{dto.companyCompetitiveratio, jdbcType=INTEGER})")
	int insertCompany(@Param("dto") CompanyDemandDto dto);
	
	@Insert("insert into demandforecast \r\n" + 
			"values(4,4,\r\n" + 
			"#{dto.demandRatio},\r\n" + 
			"#{dto.demandLockup},\r\n" + 
			"#{dto.demandNoprice},\r\n" + 
			"#{dto.demandUnderbottom},\r\n" + 
			"#{dto.demandBottom},\r\n" + 
			"#{dto.demandBand},\r\n" + 
			"#{dto.demandTop},\r\n" + 
			"#{dto.demandOvertop})")
	int insertDemand(@Param("dto") CompanyDemandDto dto);
	
	@Update("update company \r\n" + 
			"set company_site=#{dto.companySite, jdbcType=VARCHAR}, \r\n" + 
			"company_fixedprice=#{dto.companyFixedprice, jdbcType=INTEGER  }, \r\n" + 
			"company_refundingdate=#{dto.companyRefundingdate, jdbcType=DATE}, \r\n" + 
			"company_listingdate=#{dto.companyListingdate, jdbcType=DATE},\r\n" + 
			"company_competitiveratio=#{dto.companyCompetitiveratio, jdbcType=INTEGER  }\r\n" + 
			"where company_pk=#{companyPk}")
	int updateOneCompany(@Param("dto")CompanyDemandDto companyDemandDto,@Param("companyPk") int companyPk);
	
	@Update("update demandforecast\r\n" + 
			"set demand_ratio=#{dto.demandRatio}, \r\n" + 
			"demand_lockup=#{dto.demandLockup}, \r\n" + 
			"demand_noprice=#{dto.demandNoprice}, \r\n" + 
			"demand_underbottom=#{dto.demandUnderbottom},\r\n" + 
			"demand_bottom=#{dto.demandBottom},\r\n" + 
			"demand_band=#{dto.demandBand},\r\n" + 
			"demand_top=#{dto.demandTop},\r\n" + 
			"demand_overtop=#{dto.demandOvertop}\r\n" + 
			"where demand_pk=#{companyPk}")
	int updateOneDemand(@Param("dto")CompanyDemandDto companyDemandDto,@Param("companyPk") int companyPk);
	
	
	@Delete("delete demandforecast where company_pk=#{id}")
	int deleteOneDemand(@Param("id")int id);
	
	@Delete("delete company where company_pk=#{id}")
	int deleteOneCompany(@Param("id")int id);
}