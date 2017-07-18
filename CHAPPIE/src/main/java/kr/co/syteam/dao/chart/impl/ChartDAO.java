package kr.co.syteam.dao.chart.impl;

import java.util.List;

import kr.co.syteam.domain.chart.vo.ChartVO;

public interface ChartDAO {
	public List<ChartVO> todoCnt() throws Exception;
}
