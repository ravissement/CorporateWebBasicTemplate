package egovframework.example.sample.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.LoginVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

/**
 * @Class Name : loginDAO.java
 * @Description : login DAO Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.07	ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.07
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */

@Repository("loginDAO")
public class LoginDAO extends EgovAbstractDAO {

	/**
	 * 로그인을 수행한다.
	 * @param vo - 로그인 정보가 담긴 loginVO
	 * @return 등록 결과	1: true others: false
	 * @exception Exception
	 */
	public int loginAdmin(LoginVO vo) throws Exception {
		return (Integer) select("loginDAO.loginAdmin", vo);
	}

}
