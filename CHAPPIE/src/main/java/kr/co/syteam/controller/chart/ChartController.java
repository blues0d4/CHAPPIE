package kr.co.syteam.controller.chart;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.syteam.domain.chappie.vo.ChappieVO;
import kr.co.syteam.domain.chart.vo.ChartVO;
import kr.co.syteam.domain.user.vo.LoginVO;
import kr.co.syteam.service.chappie.ChappieService;
import kr.co.syteam.service.chart.ChartService;

@Controller
public class ChartController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChartController.class);
	
	@Autowired
	private ChartService chartService;
	@Autowired
	private ChappieService chappieService;
	
	@RequestMapping(value = "/project/{project_id}/chart", method = RequestMethod.GET)
	public String todoList(@PathVariable("project_id") String project_id, Model model, HttpServletRequest request) throws Exception {
		logger.info("This is Progress Chart !!!!");	
		
		List<ChartVO> chartList = chartService.progressService(project_id);
		
		// 전체 진척도 구하기
		ChartVO chartVO = new ChartVO();
		double todo_cnt=0;
		double todo_complete_cnt=0;
				
		for(ChartVO vo : chartList){
			todo_cnt += Integer.parseInt(vo.getTodo_cnt());
			todo_complete_cnt += Integer.parseInt(vo.getTodo_complete_cnt());
		}
		double progress = Math.round((todo_complete_cnt/todo_cnt)*100*10d)/10d; 
		
		
		chartVO.setCategory_name("전체");
//		chartVO.setTodo_cnt(String.valueOf(todo_cnt));
		chartVO.setTodo_cnt(String.valueOf((int)todo_cnt));
		chartVO.setTodo_complete_cnt(String.valueOf(todo_complete_cnt));
		chartVO.setTodo_complete_cnt(String.valueOf((int)todo_complete_cnt));
		chartVO.setProgress(progress);
		
		
		List<ChartVO> mcVO = chartService.memberChartService(project_id);
		
		// model에 넣기
		model.addAttribute("chart", chartList);
		model.addAttribute("allChart", chartVO);
		model.addAttribute("mcVO", mcVO);

		
		LoginVO loginVO = (LoginVO)request.getSession().getAttribute("login");
		List<ChappieVO> chappieVO = chappieService.selectChappieService(loginVO.getUser_id());
		model.addAttribute("chappieVO", chappieVO);
		
		return "/chart/chart";
	}	
}  
