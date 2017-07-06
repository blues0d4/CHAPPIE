package kr.co.syteam.dao.todo;

import java.util.List;

import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;

public interface TodoDAO {

	public int todoWrite(TodoDTO todoDTO) throws Exception;
	public List<TodoVO> todoListView(String category_id) throws Exception;
	public TodoVO todoView(String todo_no) throws Exception;
	public int todoDelete(String todo_no) throws Exception;
	public int todoModify(TodoDTO todoDTO) throws Exception;
	public int todoAuthCheck(TodoDTO todoDTO) throws Exception;
	public int todoComplete(String todo_no) throws Exception;
}
