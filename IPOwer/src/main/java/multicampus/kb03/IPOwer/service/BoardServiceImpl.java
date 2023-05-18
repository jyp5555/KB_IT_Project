//package multicampus.kb03.IPOwer.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import multicampus.kb03.IPOwer.dao.BoardDao;
//import java.util.Map;
//
//@Service
//public class BoardServiceImpl implements BoardService {
//	@Autowired
//	BoardDao BoardDao;
//	
//	@Override
//	public String create(Map<String, Object> map) {
//		int affectRowCount = this.BoardDao.insert(map);
//		if(affectRowCount == 1) {
//			return map.get("board_pk").toString();
//		}
//		return null;
//	}
//	@Override
//	public Map<String, Object> detail(Map<String, Object> map) {
//		return this.BoardDao.selectAll(map);
//	}	
//}