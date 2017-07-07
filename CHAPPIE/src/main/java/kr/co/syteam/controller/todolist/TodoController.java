package kr.co.syteam.controller.todolist;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.syteam.domain.todo.vo.TodoVO;
import kr.co.syteam.service.todo.TodoService;

@Controller
@RequestMapping("/todo")
public class TodoController {
	
	private static final Logger logger = LoggerFactory.getLogger(TodoController.class);
	
	@Autowired
	private TodoService todoService;
	
	@RequestMapping(value = "/todoList", method = RequestMethod.GET)
	public String boardList(Model model, HttpServletRequest request) throws Exception {
		logger.info("This is TodoList!!");
		
//		String category_id = (String)request.getSession().getAttribute("category_id");
		
		String category_id = "2001";
		
		List<TodoVO> todoList = todoService.todoListViewService(category_id);

		System.out.println("@@@ TodoVO : " + todoList);
		model.addAttribute("todoList", todoList);
		
		return "/todo/todoList";
	}	
	
	
	
}  
