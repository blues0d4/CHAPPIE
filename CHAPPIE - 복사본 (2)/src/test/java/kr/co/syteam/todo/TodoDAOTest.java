package kr.co.syteam.todo;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.syteam.dao.todo.TodoDAO;
import kr.co.syteam.domain.board.vo.BoardVO;
import kr.co.syteam.domain.todo.vo.TodoVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class TodoDAOTest {
	
	@Autowired
	private TodoDAO todoDAO;
	
	
	//게시글 목록 테스트
//	@Test
//	public void testBoardList() throws Exception{
//		List<BoardVO> boardList = boardDAO.boardList();
//		for(BoardVO boardVO : boardList){
//			System.out.println("글번호 : " + boardVO.getBoard_title());
//			System.out.println("제목 : " + boardVO.getBoard_writer());
//			System.out.println("내용 : " + boardVO.getBoard_contents());
//		}
//	}
	
	// todo 추가 테스트(완료)
//	@Test
//	public void testTodoWrite() throws Exception{
//		TodoDTO todoDTO = new TodoDTO();
//		todoDTO.setCategory_id("2002");
//		todoDTO.setTodo_list("할일1");
//		todoDTO.setTodo_start_date("17/07/07");
//		todoDTO.setTodo_end_date("17/07/30");
//		todoDTO.setTodo_priority("M");
//		todoDTO.setTodo_note("노트1");
//		todoDTO.setTodo_complete("N");
//		
//		todoDAO.todoWrite(todoDTO);
//		
//	}
	
//	@Test
//	public void testTodoSelect() throws Exception{
//		todoDAO.todoSelect();
//	}	
//
//	@Test
//	public void testTodoMemberWrite() throws Exception{
//		TodoDTO dto = new TodoDTO();
//		dto.setTodo_no("1010");
//		dto.setMember_nickname("CHUNCHUN");
//		
//		todoDAO.todoMemberWrite(dto);
//	}
	
//	@Test
//	public void testTodoView() throws Exception{
//		List<TodoVO> list = todoDAO.todoView("1010");
//		
//		System.out.println("todo 한개 : " + list.get(0).toString());	
//		
//		for(TodoVO todoVO : list){
//			System.out.println("todo nickname : " + todoVO.getMember_nickname());
//		}
//	}	

//	@Test
//	public void testTodoListView() throws Exception{
//		List<TodoVO> list = todoDAO.todoListView("2001");			
//		
//		for(TodoVO todoVO : list){
//			System.out.println("todo_no : " + todoVO.getTodo_no());
//			System.out.println("todo_list : " + todoVO.getTodo_list());
//			System.out.println("todo_priority : " + todoVO.getTodo_priority());
//			System.out.println("todo_complete : " + todoVO.getTodo_complete());
//		}
//	}	
	
	@Test
	public void testTodoCompleteYes() throws Exception{
		todoDAO.todoCompleteYes("1009");
	}
	
}
