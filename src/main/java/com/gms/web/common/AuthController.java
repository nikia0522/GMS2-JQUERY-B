package com.gms.web.common;


import java.util.Map;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.gms.web.command.CommandDTO;
import com.gms.web.complex.PathFactory;
import com.gms.web.member.MemberDTO;
import com.gms.web.member.MemberService;

@Controller
@SessionAttributes("user")
@RequestMapping("/auth")
public class AuthController {
	private static final Logger logger = LoggerFactory.getLogger(AuthController.class);
	@Autowired MemberService service;
	@Autowired MemberDTO member;
	@Autowired CommandDTO cmd;
	@RequestMapping("/login_view")
	public String goLogin(Model model) {
		return "public:common/login.tiles";
	}
	@RequestMapping(value= "/login",method=RequestMethod.POST)
	public String login(Model model,@RequestParam("id") String id, @RequestParam("password") String password)
		{	logger.info("#### id"+ id);
			logger.info("#### pass"+ password);
		
		cmd.setSearch(id);
		cmd.setColumn(password);
		Map<String,Object> map=service.login(cmd);
		if(map.get("result").equals("success")) {
			model.addAttribute("user",map.get("user"));
			}
		model.addAttribute("result", map.get("result"));
		return String.valueOf(map.get("page"));
	}
	@RequestMapping("/main")
	public String home() {
		return "auth:common/main.tiles";
	}
}