package kr.co.syteam.service.history;

import java.util.List;

import kr.co.syteam.domain.history.dto.HistoryDTO;
import kr.co.syteam.domain.history.vo.HistoryVO;

public interface HistoryService {
	public void historyInsertService(HistoryDTO historyDTO) throws Exception;
	public List<HistoryVO> historySelectService(String project_id) throws Exception;
}
