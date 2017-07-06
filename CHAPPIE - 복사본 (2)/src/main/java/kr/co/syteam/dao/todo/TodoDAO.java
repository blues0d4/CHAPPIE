package kr.co.syteam.dao.todo;

import java.util.List;

import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;

public interface TodoDAO {

	public int todoWrite(TodoDTO todoDTO) throws Exception;
	public int todoMemberWrite(TodoDTO todoDTO)	throws Exception;
	public String todoSelect() throws Exception;
	
	public List<TodoVO> todoListView(String category_id) throws Exception;
	public List<TodoVO> todoView(String todo_no) throws Exception;
	public int todoDelete(String todo_no) throws Exception;
	public int todoModify(TodoDTO todoDTO) throws Exception;
	public int todoAuthCheck(TodoDTO todoDTO) throws Exception;
	public int todoCompleteYes(String todo_no) throws Exception;
	public int todoCompleteNo(String todo_no) throws Exception;
}
