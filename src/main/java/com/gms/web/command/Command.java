package com.gms.web.command;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import com.gms.web.constants.Extention;

import com.gms.web.constants.PATH;
import com.gms.web.member.MemberDTO;

import lombok.Getter;
import lombok.Setter;

@Lazy @Component
public class Command implements Commandable{
	@Getter 
	protected String action,pageNumber,view,search,column;
	protected MemberDTO member;
	
	public void setSearch(String search) {
		this.search = (search==null)?"none":search;
		System.out.println("서치:"+this.search);
		}
	public void setColumn(String column) {
		this.column =(column==null)?"none":column;
	System.out.println("컬럼:"+this.column);
	}

	@Getter @Setter
	protected String dir,startRow,endRow,page;
	public void setPageNumber(String pageNumber){
		this.pageNumber=(pageNumber==null)?
				"1":pageNumber;
	}
	
	public void setAction(String action) {
		this.action =
				(action==null)?
				"move":action;
		System.out.println("액션(command):+action");
	
	}
	@Override
	public void process() {
		this.view=
				(dir.equals("home"))?
				"/WEB-INF/view/common/home.jsp":
				PATH.VIEW+dir+PATH.SEPARARTOR+page+Extention.JSP;
		System.out.println("이동페이지(command):"+ view);
	}
	
	@Override
	public String toString() {
		return "Command [dest=" + dir + "/"+page+".jsp"+"action="+action+"]";
	}

}
