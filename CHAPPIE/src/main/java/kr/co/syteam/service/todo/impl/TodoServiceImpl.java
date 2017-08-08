package kr.co.syteam.service.todo.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.todo.TodoDAO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.domain.history.dto.HistoryDTO;
import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.todo.TodoService;

@Service
public class TodoServiceImpl implements TodoService {

	@Autowired
	private TodoDAO todoDAO;

	@Override
	public int todoWriteService(TodoDTO todoDTO) throws Exception {
		
		return todoDAO.todoWrite(todoDTO);
		
	}

	@Override
	public List<TodoVO> todoListViewService(String category_id) throws Exception {
		
		return todoDAO.todoListView(category_id);
	}

	@Override
	public TodoVO todoViewService(String todo_no) throws Exception {
		
		return todoDAO.todoView(todo_no);
	}

	@Override
	public int todoDeleteService(String todo_no) throws Exception {
		return todoDAO.todoDelete(todo_no);
	}

	@Override
	public int todoModifyService(TodoDTO todoDTO) throws Exception {
		return todoDAO.todoModify(todoDTO);
	}
	@Override
	public int todoMemberModify(String[] member_nickname, String todo_no) throws Exception {
		TodoDTO todoDTO = new TodoDTO();
		
		int result=0;
		
		todoDAO.todoMemberDelete(todo_no);
		for(int i = 0;i<member_nickname.length;i++){
			List<TodoDTO> list = new ArrayList<TodoDTO>();
			todoDTO.setMember_nickname(member_nickname[i]);
			todoDTO.setTodo_no(todo_no);
			System.out.println(member_nickname[i]);
			
			list.add(todoDTO);
			result = todoDAO.todoMemberWrite(list.get(0));
		}
		
		return result;
	}


	@Override
	public int todoCompleteService(String todo_no, HistoryDTO historyDTO) throws Exception {
		TodoVO todoVO = todoViewService(todo_no);
		
		
		
//		boardDTO.setCategory_id(category_id);
	
		
		int todo_complete = todoDAO.todoCompleteSelect(todo_no);
		if(todo_complete==0){
			historyDTO.setEvent("완료");		
			historyDTO.setTitle(todoVO.getTodo_list());
			historyDTO.setKind("todo-list");
			return todoDAO.todoCompleteYes(todo_no);
		}else{
			historyDTO.setEvent("완료 취소");		
			historyDTO.setTitle(todoVO.getTodo_list());
			historyDTO.setKind("todo-list");
			return todoDAO.todoCompleteNo(todo_no);
		}		
	}

	@Override
	public List<String> categoryMemberSelectService(String category_id) throws Exception {
		return todoDAO.categoryMemberSelect(category_id);
	}

	@Override
	public List<String> todoMemberSelectService(String todo_no) throws Exception {
		return todoDAO.todoMemberSelect(todo_no);
	}

	@Override
	public int todoMemberWriteService(String[] member_nickname) throws Exception {
		
		TodoDTO todoDTO = new TodoDTO();
		String todo_no = todoDAO.todoSelect();
		int result=0;
		
		for(int i = 0;i<member_nickname.length;i++){
			List<TodoDTO> list = new ArrayList<TodoDTO>();
			todoDTO.setMember_nickname(member_nickname[i]);
			todoDTO.setTodo_no(todo_no);
			System.out.println(member_nickname[i]);
			
			list.add(todoDTO);
			result = todoDAO.todoMemberWrite(list.get(0));
		}
		
		
		return result;
	}


	@Override
	public int todoAuthCheckService(TodoDTO todoDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	

}
