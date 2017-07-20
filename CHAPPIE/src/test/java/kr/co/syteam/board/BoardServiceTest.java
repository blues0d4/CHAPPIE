package kr.co.syteam.board;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.syteam.domain.board.dto.BoardDTO;
import kr.co.syteam.domain.board.vo.BoardVO;
import kr.co.syteam.domain.category.dto.CategoryDTO;
import kr.co.syteam.domain.category.vo.CategoryVO;
import kr.co.syteam.service.board.BoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardServiceTest {

	@Autowired
	private BoardService boardService;
	
//	@Test
//	public void testBoardInsert() throws Exception{
//		BoardDTO boardDTO = new BoardDTO();
//		boardDTO.setUser_id("1");
//		boardDTO.setBoard_title("test Title1");
//		boardDTO.setBoard_contents("test Contents");
//		boardDTO.setCategory_id("Y");
//		
//		boardService.boardWrite(boardDTO);
//	}
	
//	@Test
//	public void testBoardView() throws Exception{
//		BoardVO boardVO = boardService.boardView("4");
//		System.out.println("글번호 : " + boardVO.getBoard_no());
//		System.out.println("제목 : " + boardVO.getBoard_title());
//		System.out.println("내용 : " + boardVO.getBoard_contents());
//	}
	
//	@Test
//	public void testBoardCategoryList() throws Exception{
//		String project_name = "프로젝트테스트01";
//		
//		List<BoardVO> result = boardService.boardCategoryList(project_name);
//		System.out.println(result);
//	}
	
	//카테고리 선택 테스트(완료)
//	@Test
//	public void testBoardCategorySelect() throws Exception{
//		CategoryDTO categorySelectDTO = new CategoryDTO();
//		CategoryVO categoryVO = new CategoryVO();
//		String project_name = "프로젝트테스트01";
//		String category_name = "기타";
//		
//		categorySelectDTO.setCategory_name(category_name);
//		categorySelectDTO.setProject_name(project_name);
//		
//		categoryVO = boardService.boardCategorySelect(categorySelectDTO);
//		
//		System.out.println(categoryVO);
//	}
	
	//카테고리 리스트 테스트 (완료)
//	@Test
//	public void testBoardCategorySelectView() throws Exception{
//		CategoryDTO categoryDTO = new CategoryDTO();
//		CategoryVO categoryVO = new CategoryVO();
//		String project_name = "프로젝트테스트01";
//		String category_name = "기타";
//		
//		categoryDTO.setCategory_name(category_name);
//		categoryDTO.setProject_name(project_name);
//		
//		List<BoardVO> result = boardService.boardCategoryListView(categoryDTO);
//		
//		System.out.println(result);
//	}
	
	//게시물 삭제 테스트(완료)
//	@Test
//	public void testBoardDelete() throws Exception{
//		BoardDTO boardDTO = new BoardDTO();
//		
//		boardDTO.setUser_id("1");
//		boardDTO.setBoard_no("98");
//		boardService.boardDelete(boardDTO);
//	}

	//게시물 수정 테스트(완료)
	@Test
	public void testBoardModify() throws Exception{
		BoardDTO boardDTO = new BoardDTO();
		
		boardDTO.setUser_id("1");
		boardDTO.setBoard_no("108");
		boardDTO.setBoard_title("titlemod");
		boardDTO.setBoard_contents("contmod");
		
		boardService.boardModify(boardDTO);
	}
		
}
