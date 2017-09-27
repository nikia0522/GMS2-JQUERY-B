package com.gms.web.service;

import org.springframework.stereotype.Service;
import com.gms.web.board.Board;

@Service
@FunctionalInterface
public interface IPutService {
   public void execute(Object o);
}