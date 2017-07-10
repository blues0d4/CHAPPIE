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
		
		return "/todo/todoList";
	}	
	
	@RequestMapping(value = "/todoView", method= RequestMethod.GET)
	public String todoView(Model model, String todo_no) throws Exception{
		
		
		TodoVO todoVO = new TodoVO();
		todoVO = todoService.todoViewService(todo_no);
		todoVO.setTodo_no(todo_no);
		System.out.println("todoView !!!!!!!!!! todo_no : " + todoVO );	
		
		model.addAttribute("todoView", todoVO);
		
		return "/todo/todoCheck";
	}
	
	@RequestMapping(value="/todoWrite", method= RequestMethod.POST)
	public String todoWrite(TodoDTO todoDTO) throws Exception{
		System.out.println("todoWrite!!!!!!!!! : " + todoDTO);
		todoDTO.setCategory_id("2023");
		
		todoService.todoWriteService(todoDTO);
		
		return "redirect:/todo/todoList";
	}
	
	@RequestMapping(value="/todoModify", method= RequestMethod.POST)
	public String todoModify(TodoDTO todoDTO, String todo_no) throws Exception{

		todoDTO.setTodo_no(todo_no);
		System.out.println("todoModify!!!!!!!!! : " + todoDTO);
		
		todoService.todoModifyService(todoDTO);
		
		return "redirect:/todo/todoList";
	}
	
	@RequestMapping(value="/todoComplete", method= RequestMethod.GET)
	@ResponseBody
	public int todoComplete(String todo_no) throws Exception{
		System.out.println("todoComplete!!!!!! : " + todo_no);
		
		return todoService.todoCompleteService(todo_no);
	}
	
}  
