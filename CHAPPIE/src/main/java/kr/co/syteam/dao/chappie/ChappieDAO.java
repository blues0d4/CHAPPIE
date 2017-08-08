package kr.co.syteam.dao.chappie;

import java.util.List;

import kr.co.syteam.domain.chappie.dto.ChappieDTO;
import kr.co.syteam.domain.chappie.vo.ChappieVO;

public interface ChappieDAO {
	public List<ChappieVO> selectChappieLog(String user_id) throws Exception;
	public void insertChappieLog(ChappieDTO chappieDTO) throws Exception;
}
