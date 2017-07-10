package kr.co.syteam.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.syteam.commons.URIs;
import kr.co.syteam.domain.board.vo.BoardVO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.domain.project.vo.ProjectVO;
import kr.co.syteam.service.board.BoardService;

@Controller
//@RequestMapping("/{project_name}")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
//	@RequestMapping(value="/")
//	public String doBoardList(String board_no, Model model)throws Exception{
//		
//		BoardVO boardVO = boardService.boardView(board_no);
//		
//		if(boardVO == null){
//			
//		}
//		model.addAttribute("board", boardVO);
//		return "board/boardView";
//	}
	
//	@RequestMapping(value = URIs.BOARD_DEFAULT, method = RequestMethod.GET)
//	public String doBoardList(Model model, HttpServletRequest request) throws Exception {
//		logger.info("doBoardList");
//		
//		List<BoardVO> boardList = boardService.boardList();
//		model.addAttribute("boardList", boardList);
//		System.out.println(boardList);
////		return URIs.URI_BOARD_LIST_FULL;
//
//		ProjectVO projectVO = (ProjectVO)request.getSession().getAttribute("project");
//		System.out.println(projectVO);
//		
//		return "/board/boardList";
//	}	
	@RequestMapping(value = "/{project_name}/{category_name}")
	public String doCategoryView(@PathVariable("category_name")String category_name, Model model, HttpServletRequest request) throws Exception{
		logger.info("doCategoryView");
		
		
		ProjectVO projectVO = (ProjectVO) request.getSession().getAttribute("project");
		if(projectVO == null){
			return URIs.URI_MAIN_REDIRECT;
		}
		String project_name = projectVO.getProject_name();
		
		CategoryDTO categoryDTO = new CategoryDTO();
		
		categoryDTO.setCategory_name(category_name);
		categoryDTO.setProject_name(project_name);
		
		CategoryVO categoryVO = boardService.boardCategorySelect(categoryDTO);
		if(categoryVO == null){
			return URIs.URI_MAIN_REDIRECT;
		}
		request.getSession().setAttribute("category", categoryVO);
		
		List<BoardVO> boardList = boardService.boardCategoryListView(categoryDTO);
		model.addAttribute("boardList", boardList);
//		System.out.println("------");
//		System.out.println(categoryVO);
//		System.out.println("------");
		
		
		
//		System.out.println(projectVO);
//		System.out.println("----");
//		System.out.println(project_name);
//		System.out.println("----");
		
//		List<BoardVO> boardList = boardService.boardList();
//		model.addAttribute("boardList", boardList);
//		System.out.println(boardList);
		
		return "board/boardList";
	}
	
	@RequestMapping(value = "/board/view/{board_no}")
	public String doBoardView(@PathVariable("board_no") String board_no, Model model)throws Exception{
		
		BoardVO boardVO = boardService.boardView(board_no);
		
		if(boardVO == null){
			return "redirect:/";
		}
		model.addAttribute("board", boardVO);
		return "board/boardView";
	}
	
}  
