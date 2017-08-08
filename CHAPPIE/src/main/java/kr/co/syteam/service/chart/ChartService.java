package kr.co.syteam.service.chart;

import java.util.List;

import kr.co.syteam.domain.chart.vo.ChartVO;

public interface ChartService {
	public List<ChartVO> progressService(String project_id) throws Exception;
	public List<ChartVO> memberChartService(String project_id) throws Exception;
}
