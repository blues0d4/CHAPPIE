package kr.co.syteam.board;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.syteam.domain.category.dto.CategorySelectDTO;
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
	
	//카테고리 선택 테스트()
	@Test
	public void testBoardCategorySelect() throws Exception{
		CategorySelectDTO categorySelectDTO = new CategorySelectDTO();
		CategoryVO categoryVO = new CategoryVO();
		String project_name = "프로젝트테스트01";
		String category_name = "기타";
		
		categorySelectDTO.setCategory_name(category_name);
		categorySelectDTO.setProject_name(project_name);
		
		categoryVO = boardService.boardCategorySelect(categorySelectDTO);
		
		System.out.println(categoryVO);
		
		
	}
}
