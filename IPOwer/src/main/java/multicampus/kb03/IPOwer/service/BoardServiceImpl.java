package multicampus.kb03.IPOwer.service;

 
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
//import javax.inject.*;
import multicampus.kb03.IPOwer.dto.*;
import multicampus.kb03.IPOwer.dao.*;
import org.springframework.stereotype.Service;
 
@Service
public class BoardServiceImpl implements BoardService {


	@Override
	public Map<String, Object> detail(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create(BoardDto vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardDto> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardDto read(Integer b_no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Integer b_no) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(BoardDto vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardDto> listAll(String search_option, String keyword, int start, int end) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void increaseViewcnt(int bno, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int countArticle(String search_option, String keyword) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
// 
//    @Inject
//    BoardDao dao;
//    
//    
//    @Overrides
//    public void create(BoardDto vo) throws Exception {
//        dao.create(vo);
// 
//    }
// 
//    @Override
//    public List<BoardDto> listAll(String search_option) throws Exception {
//        return dao.listAll(search_option);
//    }
// 
//    @Override
//    public BoardDto read(Integer b_no) throws Exception {
//        
//        return dao.read(b_no);
//    }
// 
//    @Override
//    public void delete(Integer b_no) throws Exception {
//        dao.delete(b_no);
// 
//    }
// 
//    @Override
//    public void update(BoardDto vo) throws Exception {
//        
//        dao.update(vo);
// 
//    }

	@Override
	public boolean insertpost(BoardDto dto) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
 
}
 
