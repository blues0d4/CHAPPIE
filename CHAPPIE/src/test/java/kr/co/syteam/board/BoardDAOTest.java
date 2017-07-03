package kr.co.syteam.board;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.syteam.dao.board.BoardDAO;
import kr.co.syteam.domain.board.vo.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardDAOTest {
	
	@Autowired
	private BoardDAO boardDAO;
	
	//게시글 추가 테스트 완료
//	@Test
//	public void testBoardWrite() throws Exception{
//		BoardDTO boardDTO = new BoardDTO();
//		boardDTO.setBoard_writer("stan");
//		boardDTO.setBoard_title("title1");
//		boardDTO.setBoard_contents("contents1");
//		
//		boardDAO.boardWrite(boardDTO);
//	}
	
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
	
	@Test
	public void testBoardView() throws Exception{
		BoardVO boardVO = boardDAO.boardView("4");
		System.out.println("글번호 : " + boardVO.getBoard_no());
		System.out.println("제목 : " + boardVO.getBoard_title());
		System.out.println("내용 : " + boardVO.getBoard_contents());
	}
	
	
	
}
