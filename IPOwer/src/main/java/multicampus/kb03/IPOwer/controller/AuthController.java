package multicampus.kb03.IPOwer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import multicampus.kb03.IPOwer.dto.UsersRoleDto;
import multicampus.kb03.IPOwer.service.RegisterUserService;

@Controller
@RequestMapping("/user")
public class AuthController {
	
	@Autowired
	private final RegisterUserService registerUserService;

    public AuthController(RegisterUserService registerUserService) {
        this.registerUserService = registerUserService;
    }
    
    @GetMapping("/new")
    public String joinGet() {
        return "join";
    }
    
    @PostMapping("/new")
    public @ResponseBody ResponseEntity<String> joinPost(@RequestBody UsersRoleDto dto){
    	try {
        	registerUserService.join(dto.getUserId(), dto.getUserPw(), dto.getUserName(), dto.getUserPhone());
        	return ResponseEntity.ok("join success");
    	}catch(Exception e) {
    		return ResponseEntity.badRequest().body(e.getMessage());
    	}

    }
}
