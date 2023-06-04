package multicampus.kb03.IPOwer.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
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
			@RequestParam("newsTitle") String newsTitle,
			Model model) throws IOException {
    	AdminNewsFileDto dto = new AdminNewsFileDto();
    	AdminNewsFileDao.saveCreateNews(newsTitle);
    	
    	String UPLOAD_DIR = "img";	
    	
		// UPLOAD_DIR의 실제 경로 가져오는 것.
		//String uploadPath = request.getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
    	//String uploadPath = request.getServletContext().getRealPath("/WEB-INF/")+ UPLOAD_DIR;
    	
    	//String uploadPath = request.getServletContext().getRealPath("/resources/");
    	String uploadDbPath = "resources/"+UPLOAD_DIR;
    	String uploadImgPath = request.getServletContext().getRealPath("/resources/")+ UPLOAD_DIR;

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
			File file = new File(uploadImgPath + "\\" + paramfName);
			
			if (mFile.getSize() != 0) {
				if (!file.exists()) {
					if (file.getParentFile().mkdirs()) {
						file.createNewFile(); 	// 임시로 파일을 생성한다.
					}
				}
				mFile.transferTo(new File(uploadImgPath + "\\" + originName));	// 파일 업로드
				System.out.println("File saved at: " + uploadImgPath);
			}
			
			
			dto.setFileName(oName);
			dto.setFileContenttype(oContentType);
			dto.setFileSize(oSize);
			dto.setFilePath(uploadDbPath);
			System.out.println("before:"+dto);
			AdminNewsFileDao.saveCreateFiles(dto);
		}
		//map.put("fileList", fileList);
		model.addAttribute("dto", dto);
        return "redirect:newsContents";
    }
    @GetMapping("/newsUpdate")
    public String adminNewsUpdateGet(
            @RequestParam("newsPk") int newsPk,
            Model model) {
        
        AdminNewsFileDto selectByNewsPk = AdminNewsFileDao.selectByNewsPk(newsPk);
        String newsTitle = selectByNewsPk.getNewsTitle();
//        System.out.println(newsTitle);
        List<AdminNewsFileDto> selectAllFilesByNewsPk = AdminNewsFileDao.selectAllFilesByNewsPk(newsPk);
        System.out.println("★★★★★★★★★★★★★★★★★★★★★★★★");
        for (AdminNewsFileDto AdminNewsFileDto : selectAllFilesByNewsPk) {
            System.out.println(AdminNewsFileDto);
        }
        System.out.println("★★★★★★★★★★★★★★★★★★★★★★★★");
        
        model.addAttribute("newsPk", newsPk);
        model.addAttribute("newsTitle", newsTitle);
        model.addAttribute("selectAllFilesByNewsPkSize", selectAllFilesByNewsPk.size());
        model.addAttribute("selectAllFilesByNewsPk",selectAllFilesByNewsPk);
        
        return "adminCardNewsUpdate";
    }

    @PostMapping("/newsUpdate")
    public String adminNewsUpdatePost(
    		MultipartHttpServletRequest multipartRequest, 
			HttpServletRequest request, 
    		@RequestParam("newsPk") int newsPk,
    		@RequestParam("filePk") int filePk,
			Model model) throws IOException {
    	AdminNewsFileDto dto = new AdminNewsFileDto();
    	
    	String UPLOAD_DIR = "img";	
    	
		// UPLOAD_DIR의 실제 경로 가져오는 것.
		//String uploadPath = request.getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
    	//String uploadPath = request.getServletContext().getRealPath("/WEB-INF/")+ UPLOAD_DIR;
    	
    	String uploadDbPath = "resources/"+UPLOAD_DIR;
    	String uploadImgPath = request.getServletContext().getRealPath("/resources/")+ UPLOAD_DIR;


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
			File file = new File(uploadImgPath + "\\" + paramfName);
			
			if (mFile.getSize() != 0) {
				if (!file.exists()) {
					if (file.getParentFile().mkdirs()) {
						file.createNewFile(); 	// 임시로 파일을 생성한다.
					}
				}
				mFile.transferTo(new File(uploadImgPath + "\\" + originName));	// 파일 업로드
				System.out.println("File saved at: " + uploadImgPath);
			}
			
			System.out.println("여기는 업데이트다!!!!!!!!");
			dto.setNewsPk(newsPk);
			dto.setFilePk(filePk);
			dto.setFileName(oName);
			dto.setFileContenttype(oContentType);
			dto.setFileSize(oSize);
			dto.setFilePath(uploadDbPath);
			System.out.println("before:"+dto);
			AdminNewsFileDao.saveUpdateFiles(dto);
			System.out.println("after:"+dto);
		}
		//map.put("fileList", fileList);
		model.addAttribute("dto", dto);
    		
    	AdminNewsFileDto selectByNewsPk = AdminNewsFileDao.selectByNewsPk(newsPk);
    	System.out.println("중요한 값인가?: newPK,selectByNewsPk:"+newsPk+","+selectByNewsPk);
    	model.addAttribute("newsPk", newsPk);
    	model.addAttribute("selectByNewsPk",selectByNewsPk);
    	//return "redirect:newsContents";
    	return "redirect:newsContents";
    }
    
    @GetMapping("/updateNewsTitle")
    public String updateNewTitleGet(
            @RequestParam("newsPk") int newsPk,
            @RequestParam("newsTitle") String newsTitle,
            Model model) {
            System.out.println("newsPk값:"+newsPk);
            model.addAttribute("newsPk",newsPk);
            model.addAttribute("newsTitle",newsTitle);
            AdminNewsFileDao.updateNewsTitle(newsPk,newsTitle);
            
        return "adminCardNewsUpdate";
    }
    
    @PostMapping("/updateNewsTitle")
    public String updateNewsTitlePost(
        @RequestParam("newsPk") int newsPk,
        @RequestParam("newsTitle") String newsTitle) {
        try {
            AdminNewsFileDao.updateNewsTitle(newsPk,newsTitle);
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        return "adminCardNewsUpdate";
    }
    
    @GetMapping("/deleteExistFile")
    public String adminNewsDeleteSaveFileGet() {
        System.out.println("adminNewsDeleteSaveFileGet() 실행");
        return "adminCardNewsUpdate";
    }

    @PostMapping("/deleteExistFile")
    public String adminNewsDeleteSaveFilePost(
            @RequestParam("newsPk1") int newsPk,
            @RequestParam("deletedFilePkList") int[] deletedFilePkList,
            Model model) {
        System.out.println("adminNewsDeleteSaveFilePost() 실행");
        System.out.println("&&&&&&dkdkdkd newsPk: " + newsPk);
        //System.out.println("filePk: " + Arrays.toString(filePk));
        if(deletedFilePkList.length==0) {
            System.out.println("등록삭제한 파일이 없습니다.");            
            System.out.println("deletedFilePkList: " + Arrays.toString(deletedFilePkList));
        }else {
            System.out.println("deletedFilePkList: " + Arrays.toString(deletedFilePkList));
            for(int deletedFilePk : deletedFilePkList) {
                AdminNewsFileDao.deleteFilesByFilePk(deletedFilePk);
            }
        }
        
        // 추가적인 처리 로직 수행
        // ...

        return "adminCardNewsDelete";
    }

    @GetMapping("/newsDelete")
    public String adminNewsDeleteGet() {
            
        return "redirect:newsContents";
    }
    
    @PostMapping("/newsDelete")
    public String adminNewsDeletePost(
            @RequestParam("newsPk") int newsPk, 
            Model model) {
        System.out.println(newsPk);
        //List<AdminNewsFileDto> selectAllFilesByNewsPk = AdminNewsFileDao.selectAllFilesByNewsPk(newsPk);

        AdminNewsFileDao.deleteAllFilesByNewsPk(newsPk);
        AdminNewsFileDao.deleteNewsByNewsPk(newsPk);
        
        return "redirect:newsContents";
    }
    @GetMapping("UpdateNewsTitle")
    public String UpdateNewsTitlePageGet(Model model) {
      // Add necessary logic and data to the model if needed
      // ...
        System.out.println("UpdateNewsTitlePageGet출력");
      return "UpdateNewsTitlePage"; // Return the name of the JSP page
    }
    @PostMapping("UpdateNewsTitle")
    public String UpdateNewsTitlePagePost(@RequestParam("newsTitle") String newsTitle,Model model) {
      // Add necessary logic and data to the model if needed
        model.addAttribute(newsTitle);
        System.out.println(newsTitle);
        System.out.println("UpdateNewsTitlePagePost출력");

      return "adminCardNewsUpdate"; // Return the name of the JSP page
    }
        
}