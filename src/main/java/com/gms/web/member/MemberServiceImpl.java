package com.gms.web.member;

import java.util.HashMap;






import java.util.List;
import java.util.Map;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gms.web.command.CommandDTO;
import com.gms.web.common.HomeController;
import com.gms.web.grade.MajorDTO;
import com.gms.web.grade.SubjectDTO;
import com.gms.web.mapper.GradeMapper;
import com.gms.web.mapper.MemberMapper;
import com.gms.web.member.MemberDTO;
import com.gms.web.member.StudentDTO;
import com.sun.media.jfxmedia.logging.Logger;

@Service
public class MemberServiceImpl implements MemberService {

@Autowired MemberMapper mapper;
@Autowired CommandDTO cmd;
@Autowired MemberDTO member;
@Autowired MajorDTO major;
@Autowired GradeMapper gMapper;


	@Override @Transactional
	public int addMember(Map<?,?>map) {
		System.out.println("member service 진입");
		member=(MemberDTO)map.get("member");
		@SuppressWarnings("unchecked")
		List<MajorDTO>list=(List<MajorDTO>)map.get("list");
		System.out.println("ID#####"+member.getId());
		mapper.insert(member);
		System.out.println("list#####"+list);
		gMapper.insertMajor(list);
		int rs=0;
		return rs;
	}

	@Override
	public List<?> list(CommandDTO cmd) {

		return mapper.selectAll(cmd);
	}

	@Override
	public String countMembers() {
		String count =mapper.count();
		return count;
	}

	@Override
	public StudentDTO findById(CommandDTO cmd) {

		return mapper.selectById(cmd);
	}

	@Override
	public List<?> findByName(CommandDTO cmd) {
		System.out.println("findbyName(멤버서비스임플)"+cmd.getSearch());
		return mapper.selectByName(cmd);
	}

	@Override
	public int modify(MemberDTO member) {

		return mapper.update(member);

	}

	@Override
	public int remove(CommandDTO cmd) {

		return mapper.delete(cmd);
	}

	@Override
	public Map<String,Object> login(CommandDTO cmd) {
		System.out.println("member id"+cmd.getSearch());
		Map<String,Object> map =new HashMap<>();
		member = mapper.login(cmd);
		String page="";
		String result="";
		if(member!=null) {
			if(cmd.getColumn().equals(member.getPassword())) {
					result="success";
				page="auth:common/main.tiles";
				System.out.println("로그인 성공");
			}else{
				page="public:common/login.tiles";
					result="비번 틀림";
				System.out.println("비번 틀림");
			}}else {
				page="public:common/join.tiles";
				System.out.println("아이디 틀림");
				result="아이디 없음";
			}
		map.put("page", page);
		map.put("result", result);		
		map.put("user", member);		
	return map;	
	}
	}