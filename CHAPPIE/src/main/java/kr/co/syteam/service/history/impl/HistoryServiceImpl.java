package kr.co.syteam.service.history.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.history.HistoryDAO;
import kr.co.syteam.domain.history.dto.HistoryDTO;
import kr.co.syteam.domain.history.vo.HistoryVO;
import kr.co.syteam.service.history.HistoryService;

@Service
public class HistoryServiceImpl implements HistoryService{

	@Autowired
	private HistoryDAO historyDAO;
	
	@Override
	public void historyInsertService(HistoryDTO historyDTO) throws Exception {
		historyDAO.historyInsert(historyDTO);		
	}

	@Override
	public List<HistoryVO> historySelectService() throws Exception {
		return historyDAO.historySelect();
	}
	
}
