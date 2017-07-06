package kr.co.syteam.service.todo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.todo.TodoDAO;
import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;
import kr.co.syteam.service.todo.TodoService;

@Service
public class TodoServiceImpl implements TodoService {

	@Autowired
	private TodoDAO todoDAO;

	@Override
	public void todoWriteService(List<TodoDTO> todoDTO) throws Exception {
		
	}

	@Override
	public List<TodoVO> todoListViewService(String category_id) throws Exception {
		
		return todoDAO.todoListView(category_id);
	}

	@Override
	public List<TodoVO> todoViewService(String todo_no) throws Exception {
		
		return todoDAO.todoView(todo_no);
	}

	@Override
	public int todoDeleteService(String todo_no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int todoModifyService(String todo_no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int todoAuthCheckService(TodoDTO todoDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int todoCompleteService(String todo_no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	

}
