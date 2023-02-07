package egovframework.example.sample.service;

import javax.servlet.http.HttpServletRequest;

/**
 * @Class Name : LoginService.java
 * @Description : LoginService Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.07    ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.07
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
public interface LoginService {

	/**
	 * 관리자 로그인을 수행한다.
	 * @param vo - 수행할 정보가 담긴 LoginVO
	 * @return void형
	 * @exception Exception
	 */
	int loginAdmin(LoginVO vo) throws Exception;

	/**
	 * 관리자 로그아웃을 수행한다.
	 * @param HttpServletRequest  - remove할 session
	 * @return void형
	 * @exception Exception
	 */
	void logoutAdmin(HttpServletRequest req) throws Exception;
	
}
