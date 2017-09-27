package com.gms.web.command;

import org.springframework.stereotype.Component;

import lombok.Data;

/*조인이 커질때 사용하는 빈*/
@Component @Data
public class ResultMap {
	private String id, title, content, regdate, hitcount, email, profile, birthday, gender, count;
}