package egovframework.example.sample.service.impl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.LoginService;
import egovframework.example.sample.service.LoginVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

/**
 * @Class Name : LoginServiceServiceImpl.java
 * @Description : LoginService Business Implement Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.07    	ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.07
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
@Service("loginService")
public class LoginServiceImpl extends EgovAbstractServiceImpl implements LoginService {

	// TODO mybatis
	@Resource(name="loginMapper")
	private LoginMapper loginDAO;
	
	/**
	 * 로그인을 수행한다.
	 * @param vo - 로그인 정보가 담긴 LoginVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public int loginAdmin(LoginVO vo) throws Exception {
		int result = 0;
		
		if(loginDAO.loginAdmin(vo) != null) {
			if (BCrypt.checkpw( vo.getPw() , loginDAO.loginAdmin(vo).getPw()) ) {
		        result = 1;
		    } 
		}
		return result;
	}

	/**
	 * 로그아웃을 수행한다.
	 * @param HttpServletRequest  - remove할 session
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public void logoutAdmin(HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		session.removeAttribute("loginID");
	}

}
