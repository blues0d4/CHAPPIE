package kr.co.syteam.service.user;

import kr.co.syteam.domain.user.dto.UserDTO;
import kr.co.syteam.domain.user.vo.LoginVO;

public interface IUserService {

	public int userJoin(UserDTO userDTO) throws Exception;
	public LoginVO userLogin(UserDTO userDTO) throws Exception;
}
