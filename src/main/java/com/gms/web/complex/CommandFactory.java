package com.gms.web.complex;

import org.springframework.stereotype.Component;

import com.gms.web.command.*;

import com.gms.web.constants.Action;
@Component
public class CommandFactory {
	public static CommandDTO createCommand(String dir, String action, String page, String pageNumber, String column, String search){
		CommandDTO cmd=null;
		if(action==null){
			action=Action.MOVE;
		}
		switch(action){
		case Action.MOVE: case Action.LOGIN: case Action.LOGOUT: 
		case Action.JOIN:
		case Action.DELETE: 
		case Action.DETAIL:
		case Action.UPDATE: 
			cmd=new MoveCommand(dir, action, page);
			break;
		case Action.LIST: 
			cmd=new ListCommand(dir, action, page, pageNumber);	
			break;
		case Action.SEARCH:
			cmd=new SearchCommand(dir, action, page, pageNumber, column, search);
			break;
		default:System.out.println("Command Fail/CommandFactory");break;
		}
		return cmd;
	}
}
