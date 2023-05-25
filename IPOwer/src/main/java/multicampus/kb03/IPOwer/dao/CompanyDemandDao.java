package multicampus.kb03.IPOwer.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import multicampus.kb03.IPOwer.dto.CompanyDemandDto;
import multicampus.kb03.IPOwer.dto.CompanyDto;
import multicampus.kb03.IPOwer.dto.CompanyUserDto;


@Component
public class CompanyDemandDao {
	
	@Autowired
	private CompanyDemandMapper mapper;

	public List<CompanyDto> findAllCompany() {
		return mapper.findAllCompany();
	}

	public int insertCompanyDemand(CompanyDemandDto companyDemandDto) {
		int result1 = mapper.insertCompany(companyDemandDto);
		int result2 = mapper.insertDemand(companyDemandDto);
		return result1 + result2;
	}


	public List<CompanyDemandDto> findAllCompanyDemand() {
		// TODO Auto-generated method stub
		return mapper.findAllCompanyDemand();
	}

	
	public List<CompanyUserDto> findLikeAll(String userId){
		return mapper.findLikeAll(userId);
	}
}


