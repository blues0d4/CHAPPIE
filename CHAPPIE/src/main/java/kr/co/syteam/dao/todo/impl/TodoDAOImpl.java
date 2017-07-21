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
	public String todoSelect() throws Exception {
		return sqlSession.selectOne(namespace+"todoSelect");
	}
	@Override
	public int todoMemberWrite(TodoDTO todoDTO) throws Exception {
		return sqlSession.insert(namespace+"todoMemberWrite", todoDTO);
	}
	
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	@Override
	public List<TodoVO> todoListView(String category_id) throws Exception {
		return sqlSession.selectList(namespace+"todoListView", category_id);
	}

	@Override
	public TodoVO todoView(String todo_no) throws Exception {
		return sqlSession.selectOne(namespace+"todoView", todo_no);
	}

	@Override
	public int todoDelete(String todo_no) throws Exception {
		return sqlSession.delete(namespace+"todoDelete", todo_no);
	}

	@Override
	public int todoModify(TodoDTO todoDTO) throws Exception {
		return sqlSession.update(namespace+"todoModify", todoDTO);
	}

	@Override
	public int todoAuthCheck(TodoDTO todoDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int todoCompleteYes(String todo_no) throws Exception {
		return sqlSession.update(namespace+"todoCompleteYes", todo_no);
	}
	@Override
	public int todoCompleteNo(String todo_no) throws Exception {
		return sqlSession.update(namespace+"todoCompleteNo", todo_no);
	}
	@Override
	public int todoCompleteSelect(String todo_no) throws Exception {
		return sqlSession.selectOne(namespace+"todoCompleteSelect", todo_no);
	}
	@Override
	public List<String> categoryMemberSelect(String category_id) throws Exception {
		return sqlSession.selectList(namespace+"categoryMemberSelect", category_id );
	}
	@Override
	public List<String> todoMemberSelect(String todo_no) throws Exception {
		return sqlSession.selectList(namespace+"todoMemberSelect", todo_no);
	}

	

	
	
	
	
	
}
