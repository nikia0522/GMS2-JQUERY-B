package com.gms.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gms.web.board.Board;
import com.gms.web.command.Command;
import com.gms.web.grade.GradeDTO;
import com.gms.web.grade.MajorDTO;


@Repository
public interface GradeMapper {
	public void insertMajor(List<MajorDTO> list);
	public List<Board> selectSome(Command cmd);
	public Board selectOne(Command cmd);
	public String count(Command cmd);
	public void update(Command cmd);
	public void delete(Command cmd);
}