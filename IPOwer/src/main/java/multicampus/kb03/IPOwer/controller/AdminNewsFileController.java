package multicampus.kb03.IPOwer.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.ParameterParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import multicampus.kb03.IPOwer.dao.AdminNewsFileDao;
import multicampus.kb03.IPOwer.dto.AdminNewsFileDto;

@Controller
@RequestMapping("/admin")
public class AdminNewsFileController {

	@Autowired
	private AdminNewsFileDao AdminNewsFileDao;
	
	@GetMapping("/newsContents")
    public String adminNewsContentsGet(Model model) {

		List<AdminNewsFileDto> selectAll = AdminNewsFileDao.selectAll();
		for (AdminNewsFileDto AdminNewsFileDto : selectAll) {
			System.out.println(AdminNewsFileDto);
		}
		model.addAttribute("all",selectAll);
		model.addAttribute("count",selectAll.size());
		
        return "adminCardNewsContents";
    }

    @PostMapping("/newsContents")
    public String adminNewsContentsPost(Model model) {

		List<AdminNewsFileDto> selectAll = AdminNewsFileDao.selectAll();
		for (AdminNewsFileDto AdminNewsFileDto : selectAll) {
			System.out.println(AdminNewsFileDto);
		}
		model.addAttribute("all",selectAll);
		model.addAttribute("count",selectAll.size());
		
        return "adminCardNewsContents";
    }
    @GetMapping("/newsCreate")
    public String adminNewsCreateGet() {
    	
        return "adminCardNewsCreate";
    }

    @PostMapping("/newsCreate")
    public String adminNewsCreatePost(
    		MultipartHttpServletRequest multipartRequest, 
			HttpServletRequest request, 
			@RequestParam("news_title") String newsTitle,
			Model model) throws IOException {
    	AdminNewsFileDto dto = new AdminNewsFileDto();
    	AdminNewsFileDao.saveNews(newsTitle);
    	
    	String UPLOAD_DIR = "img";	
    	
		// UPLOAD_DIR의 실제 경로 가져오는 것.
		//String uploadPath = request.getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
    	String uploadPath = request.getServletContext().getRealPath("/WEB-INF/")+ UPLOAD_DIR;

		// 1. id, name 파라미터 읽어오기
		Map map = new HashMap();	// (KEY, Value)
		//String multipartRequestid = multipartRequest.getParameter("id");
		//String multipartRequestname = multipartRequest.getParameter("name");
		Enumeration<String> e = multipartRequest.getParameterNames();
		
		while (e.hasMoreElements()) {
			String name = e.nextElement();
			String value = multipartRequest.getParameter(name);
			
			map.put(name, value);
		}
		
		// 2. 파일 담고있는 파라미터 읽어오기
		Iterator<String> it = multipartRequest.getFileNames();
		//List<String> fileList = new ArrayList<String>();
		
		while (it.hasNext()) {
			List<String> fileList = new ArrayList<String>();
			String paramfName = it.next();
			MultipartFile mFile = multipartRequest.getFile(paramfName);
			String originName = mFile.getOriginalFilename();	// 실제 업로드된 파일 이름
			String oName = originName.split("\\.")[0];
//			String oContentType = mFile.getContentType();	// 실제 업로드된 파일 확장자
//			oContentType = oContentType.split("/")[1];
			String oContentType = originName.split("\\.")[1];	// 실제 업로드된 파일 확장자
			long fileSizeBytes = mFile.getSize(); // 파일 크기(byte)를 가져옴
			String oSize = ""; // 파일 크기(byte)를 가져옴
			if(fileSizeBytes/(1024*1024)>0) {
				long fileSizeMegabytes = fileSizeBytes / (1024*1024); // 바이트를 키로바이트로 변환				
				oSize = Long.toString(fileSizeMegabytes)+"MB"; // 메가바이트 크기를 문자열로 변환
			}else if(fileSizeBytes/(1024)>0){
				long fileSizeKilobytes = fileSizeBytes / (1024); // 바이트를 키로바이트로 변환						
				oSize = Long.toString(fileSizeKilobytes)+"KB"; // 메가바이트 크기를 문자열로 변환		
			}
			
			// 파일 업로드할 경로 확인
			File file = new File(uploadPath + "\\" + paramfName);
			
			if (mFile.getSize() != 0) {
				if (!file.exists()) {
					if (file.getParentFile().mkdirs()) {
						file.createNewFile(); 	// 임시로 파일을 생성한다.
					}
				}
				mFile.transferTo(new File(uploadPath + "\\" + originName));	// 파일 업로드
				System.out.println("File saved at: " + uploadPath);
			}
			fileList.add(oName);
			fileList.add(oContentType);
			fileList.add(oSize);
			fileList.add(uploadPath);
			
			System.out.println("newsTitle 출력:"+newsTitle);
			System.out.println("fileList 출력:"+fileList.toString());
			map.put("fileList", fileList);
			
			//여기서 files테이블에 insert문으로 파일 하나씩 추가.
			System.out.println("★★★맵★★★맵★★★"+map.toString()+"★★★맵★★★맵★★★");
			
			dto.setFile_name(oName);
			dto.setFile_content_type(oContentType);
			dto.setFile_size(oSize);
			dto.setFile_path(uploadPath);
			
			AdminNewsFileDao.saveFiles(dto);
		}
		//map.put("fileList", fileList);
		model.addAttribute("dto", dto);
    		
        return "redirect:newsContents";
    }
    @GetMapping("/newsUpdate")
    public String adminNewsUpdateGet(
    		@RequestParam("news_pk") int news_pk,
    		Model model) {
    	
    	AdminNewsFileDto selectByNewsPk = AdminNewsFileDao.selectByNewsPk(news_pk);
    	String news_title = selectByNewsPk.getNews_title();
//    	System.out.println(news_title);
    	List<AdminNewsFileDto> selectAllFilesByNewsPk = AdminNewsFileDao.selectAllFilesByNewsPk(news_pk);
    	System.out.println("★★★★★★★★★★★★★★★★★★★★★★★★");
		for (AdminNewsFileDto AdminNewsFileDto : selectAllFilesByNewsPk) {
			System.out.println(AdminNewsFileDto);
		}
		System.out.println("★★★★★★★★★★★★★★★★★★★★★★★★");
    	
		model.addAttribute("news_pk", news_pk);
		model.addAttribute("news_title", news_title);
		model.addAttribute("selectAllFilesByNewsPkSize", selectAllFilesByNewsPk.size());
		model.addAttribute("selectAllFilesByNewsPk",selectAllFilesByNewsPk);
    	
        return "adminCardNewsUpdate";
    }

    @PostMapping("/newsUpdate")
    public String adminNewsUpdatePost(
    		@RequestParam("news_pk") int news_pk, 
    		Model model) {
    	
    	System.out.println(news_pk);
    	System.out.println("출력");
    	AdminNewsFileDto selectByNewsPk = AdminNewsFileDao.selectByNewsPk(news_pk);
    	
    	model.addAttribute("news_pk", news_pk);
    	model.addAttribute("selectByNewsPk",selectByNewsPk);
        return "adminCardNewsUpdate";
    }
    @GetMapping("/newsDelete")
    public String adminNewsDeleteGet(
		@RequestParam("news_pk") int news_pk, 
		@RequestParam("selectAllFilesByNewsPk") String selectAllFilesByNewsPk, 
		Model model) {
	System.out.println(news_pk);
	System.out.println(selectAllFilesByNewsPk);
	System.out.println("출력");
	//AdminNewsFileDto selectByNewsPk = AdminNewsFileDao.selectByNewsPk(news_pk);
	
	//model.addAttribute("selectByNewsPk",selectByNewsPk);
    	
        return "adminCardNewsContents";
    }

    @PostMapping("/newsDelete")
    public String adminNewsDeletePost(
    		@RequestParam("news_pk") int news_pk, 
    		@RequestParam("file_pk") int file_pk, 
    		Model model) {
    	System.out.println(news_pk);
    	System.out.println(file_pk);
    	System.out.println("출력");
    	AdminNewsFileDto selectByNewsPk = AdminNewsFileDao.selectByNewsPk(news_pk);
		
    	model.addAttribute("selectByNewsPk",selectByNewsPk);
        return "adminCardNewsContents";
    }
    
    @GetMapping("/updateNickname")
    public String updateNicknameGet(
    		@RequestParam("news_pk") int news_pk,
    		@RequestParam("news_title") String news_title,
    		Model model) {
    		
    		model.addAttribute("news_pk",news_pk);
    		model.addAttribute("news_title",news_title);
    		AdminNewsFileDao.updateNewsTitle(news_pk,news_title);
    		
    	return "adminCardNewsUpdate";
    }
    
    @PostMapping("/updateNickname")
    public String updateNicknamePost(
		@RequestParam("news_pk") int news_pk,
		@RequestParam("news_title") String news_title,
		Model model) {
    	
		model.addAttribute("news_pk",news_pk);
		model.addAttribute("news_title",news_title);
		AdminNewsFileDao.updateNewsTitle(news_pk,news_title);
		
	return "adminCardNewsUpdate";
	}
    
    @GetMapping("/deleteSaveFile")
    public String adminNewsDeleteSaveFileGet() {
    	
        return "adminCardNewsUpdate";
    }

    @PostMapping("/deleteSaveFile")
    public String adminNewsDeleteSaveFilePost(
    		@RequestParam("index") int index, 
    		@RequestParam("news_pk") int news_pk, 
    		Model model) {
    	System.out.println("index:"+index);
    	System.out.println("newsPK:"+news_pk);
    	System.out.println("출력");
    	AdminNewsFileDto selectByNewsPk = AdminNewsFileDao.selectByNewsPk(news_pk);
		
    	model.addAttribute("selectByNewsPk",selectByNewsPk);
        return "adminCardNewsDelete";
    }
    	
}
