package egovframework.example.sample.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
/**
 * @Class Name : RuntimeErrorController.java
 * @Description : RuntimeError Controller Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.03		ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
@Controller
@RequestMapping("/cmmn/runtimeError")
public class ExcepRuntimeController {
	
	private static final Logger logger = LoggerFactory.getLogger(ExcepRuntimeController.class);
	
	/**
	 * 사용자 오류 안내 페이지를 조회한다.
	 * @param resultMessage - 예외 메시지가 담긴 String
	 * @exception Exception
	 */
	@RequestMapping(value = "/runtimeError.do")
	public String throwable(@RequestParam("resultMessage") String resultMessage, Model model) {
		model.addAttribute("msg", resultMessage);
		logger.info(resultMessage);
		return "cmmn/runtimeError";
	}
	
}
