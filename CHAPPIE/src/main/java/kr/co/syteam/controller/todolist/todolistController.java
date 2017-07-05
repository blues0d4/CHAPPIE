//package kr.co.syteam.controller.todolist;
//
//import java.util.List;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import kr.co.syteam.commons.URIs;
//import kr.co.syteam.domain.board.vo.BoardVO;
//import kr.co.syteam.service.board.BoardService;
//
//@Controller
////@RequestMapping("/board")
//public class todolistController {
//	
//	private static final Logger logger = LoggerFactory.getLogger(todolistController.class);
//	
//	@Autowired
//	private BoardService boardService;
//	
////	@RequestMapping(value="/")
////	public String doBoardList(String board_no, Model model)throws Exception{
////		
////		BoardVO boardVO = boardService.boardView(board_no);
////		
////		if(boardVO == null){
////			
////		}
////		model.addAttribute("board", boardVO);
////		return "board/boardView";
////	}
//	
//	@RequestMapping(value = URIs.BOARD_DEFAULT, method = RequestMethod.GET)
//	public String boardList(Model model) throws Exception {
//		logger.info("Welcome CHAPPIE! This is BoardController");
//		
//		List<BoardVO> boardList = boardService.boardList();
//		model.addAttribute("boardList", boardList);
//		
//		return URIs.URI_BOARD_LIST_FULL;
//	}
//	
//	
//	@RequestMapping(value = "/board/view/{board_no}")
//	public String doBoardView(@PathVariable("board_no") String board_no, Model model)throws Exception{
//		
//		BoardVO boardVO = boardService.boardView(board_no);
//		
//		if(boardVO == null){
//			return "redirect:/";
//		}
//		model.addAttribute("board", boardVO);
//		return "board/boardView";
//	}
//	
//}  
