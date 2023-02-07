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

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.fileupload.FileUploadException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MaxUploadSizeExceededException;

import egovframework.rte.fdl.cmmn.exception.handler.ExceptionHandler;

/**
 * @Class Name : FileExcepHndlr.java
 * @Description : FileExceptionHandler Class
 * @Modification Information
 * @
 * @  수정일			수정자			수정내용
 * @ ---------		---------		-------------------------------
 * @ 2023.02.03		ravissement		최초생성
 *
 * @author ravissement
 * @since 2023. 02.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
public class FileExcepHndlr implements ExceptionHandler {

	private static final Logger LOGGER = LoggerFactory.getLogger(FileExcepHndlr.class);
	
	private static final Map<String, String> errorMessages = new HashMap<>();
	
	static {
		errorMessages.put("FileNotFoundException", "요청한 파일을 찾을 수 없습니다.");
		errorMessages.put("IOException", "파일을 처리하는 동안 오류가 발생했습니다.");
		errorMessages.put("SecurityException", "파일에 액세스할 수 있는 권한이 없습니다.");
		errorMessages.put("IllegalArgumentException", "잘못된 파일 형식입니다.");
		errorMessages.put("UnsupportedOperationException", "이 파일 형식은 지원되지 않습니다.");
		errorMessages.put("MalformedURLException", "잘못된  파일의 URL입니다.");
		errorMessages.put("FileUploadException", "파일을 업로드하는 동안 오류가 발생했습니다.");
		errorMessages.put("MaxUploadSizeExceededException", "파일 크기가 최대 한도를 초과했습니다.");
	}
	
	/** 사용자 안내 메시지 */
	private String userFriendlyMessage;
	
	public String getUserFriendlyMessage() {
		return userFriendlyMessage;
	}
    
	/**
	* @param exception
	* @param packageName
	* Exception의 인스턴스를 비교해 사용자 메시지를 출력한다.
	* @see ravissement
	*/
	@Override
	public void occur(Exception exception, String packageName) {
		LOGGER.debug(" EgovServiceExceptionHandler run...............");
		LOGGER.error("An exception occurred in package : {} with message : {}", packageName, userFriendlyMessage);
        
		if (exception instanceof FileNotFoundException) {
			userFriendlyMessage = errorMessages.get("FileNotFoundException");
			LOGGER.error("A FileNotFoundException has occurred: " + exception.getMessage());
		
		} else if (exception instanceof IOException) {
			userFriendlyMessage = errorMessages.get("IOException");
			LOGGER.error("An IOException has occurred: " + exception.getMessage());
		   
		}  else if (exception instanceof SecurityException) {
			userFriendlyMessage = errorMessages.get("SecurityException");
			LOGGER.error("A SecurityException has occurred: " + exception.getMessage());
		
		} else if (exception instanceof IllegalArgumentException) {
			userFriendlyMessage = errorMessages.get("IllegalArgumentException");
			LOGGER.error("An IllegalArgumentException has occurred: " + exception.getMessage());
		
		} else if (exception instanceof UnsupportedOperationException) {
			userFriendlyMessage = errorMessages.get("UnsupportedOperationException");
			LOGGER.error("An UnsupportedOperationException has occurred: " + exception.getMessage());
		
		} else if (exception instanceof MalformedURLException) {
			userFriendlyMessage = errorMessages.get("MalformedURLException");
			LOGGER.error("A MalformedURLException has occurred: " + exception.getMessage());
		
		} else if (exception instanceof FileUploadException) {
			userFriendlyMessage = errorMessages.get("FileUploadException");
			LOGGER.error("A FileUploadException has occurred: " + exception.getMessage());
		
		} else if (exception instanceof MaxUploadSizeExceededException) {
			userFriendlyMessage = errorMessages.get("MaxUploadSizeExceededException");
			LOGGER.error("An UploadSizeLimitExceededException has occurred: " + exception.getMessage());
		
		} else {
			// Handle any other exceptions here
			userFriendlyMessage = "오류가 발생했습니다. 잠시 후 다시 시도 해주세요";
			LOGGER.error("An exception has occurred: " + exception.getMessage());
		}
	}
}
