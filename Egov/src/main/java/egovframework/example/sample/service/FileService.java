package egovframework.example.sample.service;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

/**
 * @Class Name : FileService.java
 * @Description : FileService Class
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

public interface FileService {
	
	/**
	 * 파일을 저장한다.
	 * @param file - 저장할 파일의 정보가 담긴 MultipartFile
	 */
	HashMap<String, String> saveFile(MultipartFile file, String path)throws Exception;
	
	/**
	 * 파일을 다운로드한다.
	 * @param fileSaveName - 다운로드할 파일의 Saved Name이 담긴 String
	 * @param fileOriName - 다운로드할 파일의  Original Name이 담긴 String
	 * @exception IOException
	 */
	String downloadFile(String fileSaveName, String fileOriName, String path, HttpServletResponse response) throws Exception;

}
