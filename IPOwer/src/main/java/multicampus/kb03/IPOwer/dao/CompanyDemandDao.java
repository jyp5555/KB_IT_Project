package multicampus.kb03.IPOwer.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import multicampus.kb03.IPOwer.dto.CompanyDemandDto;
import multicampus.kb03.IPOwer.dto.CompanyDto;


@Component
public class CompanyDemandDao {
	
	@Autowired
	private CompanyDemandMapper mapper;

	public List<CompanyDto> findAllCompany() {
		return mapper.findAllCompany();
	}
	
	public CompanyDemandDto findOneCompany(int id) {
		CompanyDemandDto result =null;
		try {
			result = mapper.findOneCompanyDemand(id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int insertCompanyDemand(CompanyDemandDto companyDemandDto) {
		int result1 = mapper.insertCompany(companyDemandDto);
		int result2 = mapper.insertDemand(companyDemandDto);
		return result1 + result2;
	}

	public int updateCompanyDemand(CompanyDemandDto companyDemandDto, int id) {
		int result1 =0;
		int result2 = 0;
		try {
			result1 =mapper.updateOneCompany(companyDemandDto, id);
			result2 =mapper.updateOneDemand(companyDemandDto, id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result1+result2;
	}

	public int deleteCompanyDemand(int id) {
		int result1 =0;
		int result2 = 0;
		try {
			result1 =mapper.deleteOneDemand(id);
			result2 =mapper.deleteOneCompany(id);
		}catch(Exception e) {
			e.printStackTrace();
		}		
		return result1+result2;
	}	
}
