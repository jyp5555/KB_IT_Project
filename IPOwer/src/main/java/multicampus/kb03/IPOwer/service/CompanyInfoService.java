package multicampus.kb03.IPOwer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import multicampus.kb03.IPOwer.dao.CompanyDemandDao;
import multicampus.kb03.IPOwer.dto.CompanyDemandDto;
import multicampus.kb03.IPOwer.dto.CompanyDto;

@Service
public class CompanyInfoService {
	
	@Autowired
    private final CompanyDemandDao companyDemandDao;
	
	public CompanyInfoService(CompanyDemandDao companyDemandDao) {
		this.companyDemandDao = companyDemandDao;
    }
	
	public List<CompanyDto> getCompanyList(){  	
		return companyDemandDao.findAllCompany();
    }
	
	public CompanyDemandDto getCompanyOne(int id) {
		CompanyDemandDto result = companyDemandDao.findOneCompany(id);
		return result;
	}
	
	public int createCompanyDemand(CompanyDemandDto companyDemandDto) {
		return companyDemandDao.insertCompanyDemand(companyDemandDto);
	}

	public void updateCompanyDemand(CompanyDemandDto companyDemandDto, int id) {
		companyDemandDao.updateCompanyDemand(companyDemandDto, id);
	}

	public void deleteCompanyDemand(int id) {
		companyDemandDao.deleteCompanyDemand(id);
	}
}
