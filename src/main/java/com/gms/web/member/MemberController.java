package com.gms.web.member;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.gms.web.command.CommandDTO;
import com.gms.web.common.HomeController;
import com.gms.web.grade.MajorDTO;
import com.gms.web.proxy.PageProxy;



@Controller
@SessionAttributes("student")
@RequestMapping({"/member","/student"})
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired CommandDTO cmd;
	@Autowired MemberService service;
	@Autowired PageProxy pxy;
	@Autowired StudentDTO stu;
	@Autowired MemberDTO member;
	@Autowired MajorDTO major;
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/search/{search}")
	public String searchStudent(Model model, @PathVariable String search ) {
		logger.info("search");
		cmd.setSearch(search);
		
		List<StudentDTO> list =(List<StudentDTO>) service.findByName(cmd);
		
		model.addAttribute("count",list.size());
		model.addAttribute("list",list);
		return "auth:member/member_list.tiles";
	}

	@RequestMapping("/member_list/{pageNumber}")
	public String memberList(Model model, @PathVariable int pageNumber) {
		logger.info("member_list(),진입");
		pxy.setPageSize(5);
		pxy.setBlockSize(5);
		pxy.setPageNumber(pageNumber);
		
		int count=Integer.parseInt(service.countMembers());
		
		pxy.setTheNumberOfRows(count);
		int[]result=new int[6];
		int theNumberOfPages=0,
				startPage=0,
				endPage=0;
		
		theNumberOfPages
		=(pxy.getTheNumberOfRows() % pxy.getPageSize())==0?
				pxy.getTheNumberOfRows() / pxy.getPageSize()
				: pxy.getTheNumberOfRows() / pxy.getPageSize() +1;
		
		startPage =pxy.getPageNumber() -((pxy.getPageNumber()-1)%pxy.getBlockSize());		
		
		endPage=(startPage + pxy.getBlockSize() -1 
				<= theNumberOfPages)?
						startPage + pxy.getBlockSize()-1 : theNumberOfPages;
		
		result[0]=pxy.getPageNumber();
		result[1]=theNumberOfPages;
		result[2]=startPage;
		result[3]=endPage;
		result[4]=(startPage-(theNumberOfPages/pxy.getBlockSize())>0)?1:0;
		result[5]=startPage+pxy.getBlockSize();
		
		if(pxy.getPageNumber() <= pxy.getTheNumberOfRows() / pxy.getPageSize() +1) {
			if(pxy.getPageNumber()==1) {
				cmd.setStartRow("1");
				cmd.setEndRow(String.valueOf(pxy.getPageSize()));
			}else {	
				cmd.setStartRow(String.valueOf((pxy.getPageNumber()-1)* pxy.getPageSize()+1));
				cmd.setEndRow(String.valueOf(pxy.getPageNumber()*pxy.getPageSize()));
			}
		}
		
		@SuppressWarnings("unchecked")
		List<StudentDTO> list =(List<StudentDTO>) service.list(cmd);
		
		pxy.execute(model, result, list);
	
		model.addAttribute("count",count);
		return "auth:member/member_list.tiles";
	}
	@RequestMapping("/delete/{id}")
	@SuppressWarnings("unchecked")
	public String memberDelete(Model model, @PathVariable String id) {
		cmd.setSearch(id);
		service.remove(cmd);
		logger.info("id");
		return "redirect:/member/member_list/1";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping("/detail/{id}")
	public String memberDetail(Model model, @PathVariable String id) {
		cmd.setSearch(id);
		model.addAttribute("search", cmd.getSearch());
		System.out.println("넘어온 id"+cmd.getSearch());
		model.addAttribute("student",service.findById(cmd));
		return "auth:member/member_detail.tiles";
	}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String updateStudent(@ModelAttribute MemberDTO member) {
		logger.info("넘어온 아이디{}",member.getId());
		logger.info("member update{}","entered");
		service.modify(member);
		return "redirect:/member/detail/"+member.getId();
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insertStudent(
		@ModelAttribute MemberDTO member,
		@RequestParam("subject") List<String> list) {
		
		logger.info("member insert{}","entered");
		logger.info("등록 ID{}"+member.getId());
		System.out.println("등록과목"+list);
		logger.info("등록 과목{}"+list);
		
		Map<String,Object>paramMap= new HashMap<>();
		List<MajorDTO> paramList=new ArrayList<>();
		MajorDTO mj=null;
		for(String m:list) {
		mj=new MajorDTO();
		mj.setId(member.getId());
		mj.setSubjId(m);
		mj.setTitle(m);
		paramList.add(mj);
		}
		paramMap.put("member",member);
		paramMap.put("list", paramList);
		service.addMember(paramMap);
		return "redirect:/member/member_list/1";
	}
}
