package kr.co.syteam.service.todo.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.todo.TodoDAO;
import kr.co.syteam.service.todo.TodoService;

@Service
public class TodoServiceImpl implements TodoService {

	@Autowired
	private TodoDAO todoDAO;
	
	
	

}
