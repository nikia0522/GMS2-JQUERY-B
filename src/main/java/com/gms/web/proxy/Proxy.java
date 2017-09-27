package com.gms.web.proxy;



import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

import lombok.Getter;
@Component

public abstract class Proxy {
   @Getter HttpServletRequest request; //setter가 있으면 보안이 깨짐!
   public Proxy (HttpServletRequest request){
      this.request=request;
   }

}