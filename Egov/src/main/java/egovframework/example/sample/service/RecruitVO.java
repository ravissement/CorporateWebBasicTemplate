package egovframework.example.sample.service;

import org.springframework.web.multipart.MultipartFile;

/**
 * @Class Name : RecruitVO.java
 * @Description : RecruitVO Class
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
public class RecruitVO {

	/** 인덱스 */
	private String idx;

	/** 제목 */
	private String title;
	
	/** 내용 */
	private String contents;

	/** 등록일 */
	private String regDate;

	/** 첨부파일 업로드명 */
	private String attachOriName;

	/** 첨부파일 저장명 */
	private String attachSaveName;
	
	/** 첨부파일 */
	private MultipartFile attachFile;
	
	/** 등록자 */
	private String regUser;

	/** 사용여부 */
	private String useYn;

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getAttachOriName() {
		return attachOriName;
	}

	public void setAttachOriName(String attachOriName) {
		this.attachOriName = attachOriName;
	}

	public String getAttachSaveName() {
		return attachSaveName;
	}

	public void setAttachSaveName(String attachSaveName) {
		this.attachSaveName = attachSaveName;
	}

	public MultipartFile getAttachFile() {
		return attachFile;
	}

	public void setAttachFile(MultipartFile attachFile) {
		this.attachFile = attachFile;
	}

	public String getRegUser() {
		return regUser;
	}

	public void setRegUser(String regUser) {
		this.regUser = regUser;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	
}
