package egovframework.example.sample.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Class Name : AboutController.java
 * @Description : About Controller Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.02		ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.02
 * @version 1.0
 * @see
 *
 *  Copyright (C) by ravissement All right reserved.
 */

@RequestMapping(value = "/about/*")
@Controller
public class AboutController {

	/**
	 * CEO 인사말을 조회한다.
	 * @return "greetings"
	 * @exception Exception
	 */
	@RequestMapping(value = "/greetings.do")
	public String greetings() throws Exception {
		return "about/greetings";
	}
	
	/**
	 * 경영이념을 조회한다.
	 * @return "philosophy"
	 * @exception Exception
	 */
	@RequestMapping(value = "/philosophy.do")
	public String philosophy() throws Exception {
		return "about/philosophy";
	}
	
	/**
	 * 연혁을 조회한다.
	 * @return "history"
	 * @exception Exception
	 */
	@RequestMapping(value = "/history.do")
	public String history() throws Exception {
		return "about/history";
	}
	
	/**
	 * 조직도를 조회한다.
	 * @return "organization"
	 * @exception Exception
	 */
	@RequestMapping(value = "/organization.do")
	public String organization() throws Exception {
		return "about/organization";
	}
	
	/**
	 * 약도를 조회한다.
	 * @return "maps"
	 * @exception Exception
	 */
	@RequestMapping(value = "/maps.do")
	public String maps() throws Exception {
		return "about/maps";
	}
	
}
