package kr.co.syteam.dao.history;

import java.util.List;

import kr.co.syteam.domain.history.dto.HistoryDTO;
import kr.co.syteam.domain.history.vo.HistoryVO;

public interface HistoryDAO {

	public void historyInsert(HistoryDTO historyDTO) throws Exception;
	public List<HistoryVO> historySelect(String project_id) throws Exception;
	
}
