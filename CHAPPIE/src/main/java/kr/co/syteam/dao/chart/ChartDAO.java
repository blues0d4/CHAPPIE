package kr.co.syteam.dao.chart;

import java.util.List;

import kr.co.syteam.domain.chart.vo.ChartVO;

public interface ChartDAO {
	public List<ChartVO> selectCategoryName(String project_id) throws Exception;
}
