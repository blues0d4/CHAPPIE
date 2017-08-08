package kr.co.syteam.service.chappie.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.syteam.dao.chappie.ChappieDAO;
import kr.co.syteam.domain.chappie.dto.ChappieDTO;
import kr.co.syteam.domain.chappie.vo.ChappieVO;
import kr.co.syteam.service.chappie.ChappieService;

@Service
public class ChappieServiceImpl implements ChappieService{

	@Autowired
	private ChappieDAO chappieDAO;

	@Override
	public void insertChappieLogService(ChappieDTO chappieDTO) throws Exception {
		chappieDAO.insertChappieLog(chappieDTO);
	}

	@Override
	public List<ChappieVO> selectChappieService(String user_id) throws Exception {
		return chappieDAO.selectChappieLog(user_id);
	}

	
	
	
}
