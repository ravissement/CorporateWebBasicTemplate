/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.cmmn;

import java.nio.file.AccessDeniedException;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;

import com.ibatis.sqlmap.engine.transaction.TransactionException;

import egovframework.rte.fdl.cmmn.exception.EgovBizException;
import egovframework.rte.fdl.cmmn.exception.FdlException;
import egovframework.rte.fdl.cmmn.exception.handler.ExceptionHandler;

/**
 * @Class Name : EgovSampleExcepHndlr.java
 * @Description : EgovSampleExcepHndlr Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 2023.02.03     ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
public class CmmnExcepHndlr implements ExceptionHandler {

	private static final Logger LOGGER = LoggerFactory.getLogger(CmmnExcepHndlr.class);
	
	private static final Map<String, String> errorMessages = new HashMap<>();
	
	static {
        errorMessages.put("DataAccessException", "데이터에 액세스하는 중에 문제가 발생했습니다. 나중에 다시 시도하거나 지원팀에 문의하십시오.");
        errorMessages.put("TransactionException", "저장에 문제가 있었습니다. 나중에 다시 시도하거나 지원팀에 문의하십시오.");
        errorMessages.put("EgovBizException", "실행중 예외가 발생했습니다. 입력 내용을 확인하고 다시 시도하거나 지원팀에 문의하십시오.");
        errorMessages.put("AccessDeniedException", "요청한 리소스에 대한 액세스가 거부되었습니다. 권한을 확인하고 다시 시도하거나 지원팀에 문의하십시오.");
        errorMessages.put("RuntimeException", "실행중 예외가 발생했습니다. 도움이 필요하면 지원팀에 문의하십시오.");
        errorMessages.put("FdlException", "실행중 예외가 발생했습니다. 도움이 필요하면 지원팀에 문의하십시오.");
    }
	
	/** 사용자 안내 메시지 */
	private String userFriendlyMessage;
	
    public String getUserFriendlyMessage() {
        return userFriendlyMessage;
    }
	
	/**
	* @param exception
	* @param packageName
	*/
	@Override
	public void occur(Exception exception, String packageName) {
		LOGGER.debug(" EgovServiceExceptionHandler run...............");
		
		if (exception instanceof DataAccessException) {
        	userFriendlyMessage = errorMessages.get("DataAccessException");
            LOGGER.error("A FileNotFoundException has occurred: " + exception.getMessage());
        
        } else if (exception instanceof TransactionException) {
        	userFriendlyMessage = errorMessages.get("TransactionException");
			LOGGER.error("An IOException has occurred: " + exception.getMessage());
       
        } else if (exception instanceof EgovBizException) {
        	userFriendlyMessage = errorMessages.get("EgovBizException");
			LOGGER.error("An IOException has occurred: " + exception.getMessage());
       
        } else if (exception instanceof AccessDeniedException) {
        	userFriendlyMessage = errorMessages.get("AccessDeniedException");
			LOGGER.error("An IOException has occurred: " + exception.getMessage());
       
        } else if (exception instanceof RuntimeException) {
        	userFriendlyMessage = errorMessages.get("RuntimeException");
			LOGGER.error("An IOException has occurred: " + exception.getMessage());
       
        } else if (exception instanceof FdlException) {
        	userFriendlyMessage = errorMessages.get("FdlException");
			LOGGER.error("An IOException has occurred: " + exception.getMessage());
       
        } else {
            // Handle any other exceptions here
        	userFriendlyMessage = "오류가 발생했습니다. 잠시 후 다시 시도 해주세요";
            LOGGER.error("An exception has occurred: " + exception.getMessage());
        }   
	}
}
