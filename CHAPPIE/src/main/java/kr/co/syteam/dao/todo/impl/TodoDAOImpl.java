package kr.co.syteam.dao.todo.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.syteam.dao.todo.TodoDAO;
import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;

@Repository
public class TodoDAOImpl implements TodoDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "kr.co.syteam.mapper.TodoMapper.";

	@Override
	public int todoWrite(TodoDTO todoDTO) throws Exception {
		return sqlSession.insert(namespace+"todoWrite", todoDTO);
	}

	@Override
	public List<TodoVO> todoListView(String category_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TodoVO todoView(String todo_no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int todoDelete(String todo_no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int todoModify(TodoDTO todoDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int todoAuthCheck(TodoDTO todoDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int todoComplete(String todo_no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	
}
