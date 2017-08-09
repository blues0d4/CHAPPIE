package kr.co.syteam.service.chart.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.chart.ChartDAO;
import kr.co.syteam.domain.chart.vo.ChartVO;
import kr.co.syteam.service.chart.ChartService;

@Service
public class ChartServiceImpl implements ChartService {

	@Autowired
	private ChartDAO chartDAO;

	@Override
	public List<ChartVO> progressService(String project_id) throws Exception {
			List<ChartVO> list = chartDAO.selectCategoryName(project_id);
			
			for(ChartVO vo : list){
				vo.setProgress(Math.round((Double.parseDouble(vo.getTodo_complete_cnt())
						/Double.parseDouble(vo.getTodo_cnt()))*100*10d)/10d);
			}
			
			return list;			
		}

	@Override
	public List<ChartVO> memberChartService(String project_id) throws Exception {
		
		List<ChartVO> list = chartDAO.memberChart(project_id);
		
		for(ChartVO vo : list){
			vo.setProgress(Math.round((Double.parseDouble(vo.getTodo_complete_cnt())
					/Double.parseDouble(vo.getTodo_cnt()))*100*10d)/10d);
		}
		
		return list;
	}

}
