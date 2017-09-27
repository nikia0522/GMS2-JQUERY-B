package com.gms.web.board;
import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.gms.web.command.Command;
import com.gms.web.command.ResultMap;
import com.gms.web.common.HomeController;
import com.gms.web.mapper.BoardMapper;
import com.gms.web.mapper.GradeMapper;
import com.gms.web.service.IDeleteService;
import com.gms.web.service.IGetService;
import com.gms.web.service.IListService;
import com.gms.web.service.IPutService;


@RestController
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired BoardMapper boardMapper;
	@Autowired GradeMapper gradeMapper;
	@Autowired Command cmd;
	public @ResponseBody Map<?,?> post(){
		return null;
	};
	
	@RequestMapping("/list/{cate}")
	public @ResponseBody Map<?, ?> boardList(Model model,@PathVariable String cate) {
		logger.info("board ContList{}","진입");
		Map<String, Object> map=new HashMap<>();
		IListService listService=null;
		IGetService countService=null;
		switch(cate){
		case "articles":
			countService=(x)-> {
				return boardMapper.count(cmd);
			};
			ResultMap r=(ResultMap) countService.execute(cmd);
			listService= (x)-> {
				return boardMapper.selectList(cmd);
			};
			map.put("result", "success");
			map.put("total", r);
			map.put("list",listService.execute(cmd));
			map.put("msg", null);
			break;
		
		case "grade": 
			listService= (x)-> {
				return gradeMapper.selectSome(cmd);
				};
			map.put("list",listService.execute(cmd));
			break;
		
		default:
			break;
		}
		return map;
	}
	@RequestMapping("/get/{cate}/{seq}")
	public @ResponseBody Map<?,?> get(@PathVariable String cate, @PathVariable String seq){
		logger.info("detail {}", "{진입}");
		System.out.println("넘어온 sequence값!!!! : "+seq);
		Map<String, Object> map=new HashMap<>();
		cmd.setColumn("article_seq");
		cmd.setSearch(seq);
		IGetService detailService=null;
		detailService=(x)->{
			return boardMapper.selectOne(cmd);
		};
		map.put("bean", detailService.execute(cmd));
		map.put("test", "데이터 넘어감");
		return map;
	};
	
	@RequestMapping(value="/put/board",method=RequestMethod.POST, consumes="application/json")
	public @ResponseBody Map<?,?> put(@RequestBody Board brd){
		Map<String, Object> map=new HashMap<>();
		cmd.setSearch(String.valueOf(brd.getArticleSeq()));
		cmd.setAction(brd.getTitle());
		cmd.setColumn(brd.getContent());
		IPutService updateService=null;
		updateService=x->{
			boardMapper.update(cmd);
		};
		updateService.execute(cmd);
		map.put("msg", brd.getTitle());
		map.put("articleSeq", cmd.getSearch());
		return map;
	};
	
	@RequestMapping(value="/delete/board",method=RequestMethod.POST, consumes="application/json")
	public @ResponseBody Map<?,?> delete(@RequestBody Board brd){
		Map<String, Object> map=new HashMap<>();
		cmd.setSearch(String.valueOf(brd.getArticleSeq()));
		IDeleteService deleteService=null;
		deleteService=x->{
			boardMapper.delete(cmd);
		};
		deleteService.execute(cmd);
		map.put("articleSeq", cmd.getSearch());
		return map;
	};
}