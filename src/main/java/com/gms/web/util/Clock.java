package com.gms.web.util;

import java.text.SimpleDateFormat;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component
public class Clock {
	public String getnow(){
		return new SimpleDateFormat("yyyy MM월 dd일 a hh:mm:ss").format(new Date());
	}
}
