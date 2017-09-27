package com.gms.web.mapper;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.gms.web.board.Board;
import com.gms.web.command.Command;
import com.gms.web.command.ResultMap;
@Repository
public interface BoardMapper {
	public void insert(Command cmd);
	public List<Board> selectList(Command cmd);
	public Board selectOne(Command cmd);
	public ResultMap count(Command cmd);
	public void update(Command cmd);
	public void delete(Command cmd);
}
