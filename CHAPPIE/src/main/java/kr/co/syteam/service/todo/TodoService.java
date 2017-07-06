package kr.co.syteam.service.todo;

import java.util.List;

import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;

public interface TodoService {
	public void todoWriteService(List<TodoDTO> todoDTO) throws Exception;
	public List<TodoVO> todoListViewService(String category_id) throws Exception;
	public List<TodoVO> todoViewService(String todo_no) throws Exception;
	public int todoDeleteService(String todo_no) throws Exception;
	public int todoModifyService(String todo_no) throws Exception;
	public int todoAuthCheckService(TodoDTO todoDTO) throws Exception;
	public int todoCompleteService(String todo_no) throws Exception;
}
