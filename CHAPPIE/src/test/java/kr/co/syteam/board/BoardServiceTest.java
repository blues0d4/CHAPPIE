package kr.co.syteam.board;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.syteam.domain.board.dto.BoardDTO;
import kr.co.syteam.domain.board.vo.BoardVO;
import kr.co.syteam.service.board.BoardService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardServiceTest {

	@Autowired
	private BoardService boardService;
	
	@Test
	public void testBoardInsert() throws Exception{
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setUser_id("1");
		boardDTO.setBoard_title("test Title1");
		boardDTO.setBoard_contents("test Contents");
		boardDTO.setCategory_id("Y");
		
		boardService.boardWrite(boardDTO);
	}
	
//	@Test
//	public void testBoardView() throws Exception{
//		BoardVO boardVO = boardService.boardView("4");
//		System.out.println("글번호 : " + boardVO.getBoard_no());
//		System.out.println("제목 : " + boardVO.getBoard_title());
//		System.out.println("내용 : " + boardVO.getBoard_contents());
//	}
}
