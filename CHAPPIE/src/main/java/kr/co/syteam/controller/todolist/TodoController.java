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
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.syteam.domain.todo.dto.TodoDTO;
import kr.co.syteam.domain.todo.vo.TodoVO;
import kr.co.syteam.service.todo.TodoService;

@Controller
@RequestMapping("/todo")
public class TodoController {
	
	private static final Logger logger = LoggerFactory.getLogger(TodoController.class);
	
	@Autowired
	private TodoService todoService;
	
	@RequestMapping(value = "/todoList", method = RequestMethod.GET)
	public String todoList(Model model, HttpServletRequest request) throws Exception {
		logger.info("This is TodoList!!");
		
//		String category_id = (String)request.getSession().getAttribute("category_id");
		
		String category_id = "2023";
		
		List<TodoVO> todoList = todoService.todoListViewService(category_id);

		System.out.println("@@@ TodoVO : " + todoList);
		model.addAttribute("todoList", todoList);
		
		return "/todo/todoList2";
	}	
	
	@RequestMapping(value = "/todoView", method= RequestMethod.GET)
	@ResponseBody
	public List<TodoVO> todoView(String todo_no) throws Exception{
		System.out.println("todoView !!!!!!!!!! " );
		List<TodoVO> todoVO = todoService.todoViewService(todo_no);	
		
		
		return todoVO;
	}
	
	@RequestMapping(value="/todoWrite", method= RequestMethod.POST)
	public String todoWrite(List<TodoDTO> todoDTO) throws Exception{
		
		return "redirect:/todo/todoList";
	}
	
	
}  
