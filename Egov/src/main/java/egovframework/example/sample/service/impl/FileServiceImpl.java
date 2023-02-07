package egovframework.example.sample.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import egovframework.example.cmmn.FileExcepHndlr;
import egovframework.example.sample.service.FileService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

/**
 * @Class Name : FileServiceImpl.java
 * @Description : File Business Implement Class
 * @Modification Information
 * @
 * @  수정일      		수정자              		수정내용
 * @ ---------   	---------   	-------------------------------
 * @ 20023.02.03    ravissement     최초생성
 *
 * @author ravissement
 * @since 2023. 02.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
@Service("fileService")
public class FileServiceImpl extends EgovAbstractServiceImpl implements FileService {
	
	/** File Root */
	@Resource(name="uploadPath")
	String root;
	
	/** FileExceptionHandler */
	@Resource(name = "fileHandler")
	private FileExcepHndlr fileExceptionHandler;
	
	/**
	 * 파일을 저장한다.
	 * @param file - 저장할 파일의 정보가 담긴 MultipartFile
	 * @exception FileExcepHndlr - 파일에 대한 ExceptionHandler
	 */
	@Override
	public HashMap<String, String> saveFile(MultipartFile file, String path) {
		HashMap<String, String> fileName  = new HashMap<String, String>();
		
		if(file == null || file.isEmpty()) {
			fileName.put("error", "파일이 비어 있습니다. 유효한 파일을 선택하십시오.");
			return fileName;
		}
		
		UUID uuid = UUID.randomUUID();
		String oriName = file.getOriginalFilename().replaceAll("\\\\.", "").replaceAll("/", "").replaceAll("\\\\", "");
		String saveName = uuid + "_" + oriName;
		File fileInfo = new File(root + path, saveName);
		try {
			file.transferTo(fileInfo);
			fileName.put("oriName", oriName);
			fileName.put("saveName", saveName);
		}catch (Exception e) {
			fileExceptionHandler.occur(e, this.getClass().getName());
			fileInfo.delete();
			fileName.put("error", fileExceptionHandler.getUserFriendlyMessage());
		}
		
		return fileName;
	
	}
	
	/**
	 * 파일을 다운로드한다.
	 * @param fileSaveName - 다운로드할 파일의 Saved Name이 담긴 String
	 * @param fileOriName - 다운로드할 파일의  Original Name이 담긴 String
	 * @exception FileExcepHndlr - 파일에 대한 ExceptionHandler
	 * @return resultMessage - 예외처리 결과
	 */
	@Override
	public String downloadFile(String fileSaveName, String fileOriName, String path, HttpServletResponse response) {
		
		String resultMessage = null;
		try {
			fileSaveName = fileSaveName.replaceAll("\\.{2,}[/\\\\]", "");
			File f = new File(root+path, fileSaveName);
			if(!f.exists()){
				fileExceptionHandler.occur(new FileNotFoundException(), this.getClass().getName());
				resultMessage = fileExceptionHandler.getUserFriendlyMessage();
			} else {
				response.setContentType("application/download");
				response.setContentLength((int)f.length());
				response.setHeader("Content-disposition", "attachment;filename=\"" + fileOriName + "\"");
				OutputStream os = response.getOutputStream();
				FileInputStream fis = new FileInputStream(f);
				FileCopyUtils.copy(fis, os);
				fis.close();
				os.close();
			}
		} catch (Exception e) {
			fileExceptionHandler.occur(e, this.getClass().getName());
			resultMessage = fileExceptionHandler.getUserFriendlyMessage();
		}
		
		return resultMessage;
	}
	
}
