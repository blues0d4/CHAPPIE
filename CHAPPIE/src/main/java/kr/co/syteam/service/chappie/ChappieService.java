package kr.co.syteam.service.chappie;

import java.util.List;

import kr.co.syteam.domain.chappie.dto.ChappieDTO;
import kr.co.syteam.domain.chappie.vo.ChappieVO;

public interface ChappieService {
	public void insertChappieLogService(ChappieDTO chappieDTO) throws Exception;
	public List<ChappieVO> selectChappieService(String user_id) throws Exception;
}
