package com.gms.web.constants;

import org.springframework.stereotype.Component;

@Component
public class SQL {
	public static final String MEMBER_INSERT = String.format(
			"INSERT INTO %s( %s, %s, %s, %s, %s, %s, %s, %s)VALUES(?,?,?,?,now(),?,?,?)", DB.TABLE_MEMBER, DB.MEMBER_ID,
			DB.MEMBER_PASSWORD, DB.MEMBER_NAME,DB.MEMBER_SSN,DB.MEMBER_REGDATE,DB.MEMBER_PHONE,DB.EMAIL,DB.PROFILE);
	
   public static final String MAJOR_INSERT=String.format("INSERT INTO MAJOR(major_id, title, member_id, subj_id) VALUES(?,?,?,?)", 
			   DB.MAJOR_ID, DB.TITLE,DB.MEMBER_ID, DB.SUBJ_ID);
	
	public static final String MEMBER_LIST = String.format("SELECT * FROM %s", DB.TABLE_MEMBER);
	public static final String MEMBER_FINDBYNAME = String.format("SELECT * FROM %s WHERE %s=?", DB.TABLE_MEMBER,
			DB.MEMBER_NAME);
	public static final String MEMBER_FINDBYID = String.format("SELECT * FROM %s WHERE %s=?", DB.TABLE_MEMBER,
			DB.MEMBER_ID);
	public static final String MEMBER_UPDATE=String.format("UPDATE %s SET %s=? WHERE %s=?", DB.TABLE_MEMBER, DB.MEMBER_PASSWORD, DB.MEMBER_ID);
	public static final String MEMBER_DELETE = String.format("DELETE FROM %s WHERE %s=?", DB.TABLE_MEMBER,
			DB.MEMBER_ID);
	public static final String MEMBER_COUNT = String.format("SELECT COUNT(*)AS count FROM %s", DB.TABLE_MEMBER);

	public static final String BOARD_INSERT = String.format(
			"INSERT INTO %s(%s, %s, %s, %s, %s, %s)VALUES( article_seq.nextval,?, ?, ?, now(), 0 )", DB.TABLE_BOARD,
			DB.BOARD_ARTICLE_SEQ, DB.BOARD_ID, DB.TITLE, DB.BOARD_CONTENT, DB.BOARD_REGDATE, DB.BOARD_HITCOUNT);
	public static final String BOARD_LIST = String.format("SELECT * FROM Board", DB.TABLE_BOARD);
	public static final String BOARD_SELECTBYID = String.format("SELECT * FROM %s WHERE %s=?", DB.TABLE_BOARD,
			DB.BOARD_ID);
	public static final String BOARD_COUNT = String.format("SELECT COUNT(*) AS COUNT FROM %s ", DB.TABLE_BOARD);
	public static final String BOARD_SELECTBYSEQ = String.format("SELECT * FROM %s WHERE %s=?", DB.TABLE_BOARD,
			DB.BOARD_ARTICLE_SEQ);
	public static final String BOARD_UPDATE = String.format("UPDATE %s SET %s=?,%s=? WHERE %s=?", DB.TABLE_BOARD,
			DB.TITLE, DB.BOARD_CONTENT, DB.BOARD_ARTICLE_SEQ);
	public static final String BOARD_DELETE = String.format("DELETE FROM %s WHERE %s=?", DB.TABLE_BOARD,
			DB.BOARD_ARTICLE_SEQ);
	public static final String STUDENT_LIST= " select c.*, NO from "
			+ " (select @Rnum := @Rnum + 1 NO, t.* "
		    + " from student t,(select @rnum := 0) b) c "
		    + "  where NO between ? and ? " ;
   public static final String STUDENT_COUNT=String.format("SELECT COUNT(*) AS count FROM %s where %s like ?",DB.TABLE_STUDENT,"name");
   public static final String SEARCH=" select t2.* "
		   + " from (select @RNUM := @RNUM + 1 AS seq, t.* "
			+  " from(select * "
		   + " from student "
		   + " where ? like '%' || ? || '%' "
				+ " order by num desc)t)t2 "
				+ " where t2.seq between ? and ? "
				;
   
   public static final String STUDENT_FINDBYNAME=String.format("SELECT * FROM STUDENT WHERE %s like ?" ,"name");
   public static final String STUDENT_FINDBYID=String.format("SELECT * FROM %s WHERE id like ?","Student");
}