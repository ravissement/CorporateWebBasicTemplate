package egovframework.example.sample.service;

import java.util.List;

/**
 * @Class Name : NoticeService.java
 * @Description : NoticeService Class
 * @Modification Information
 * @
 * @ 수정일		수정자			수정내용
 * @ ---------		---------		-------------------------------
 * @ 2023.02.06		ravissement		최초생성
 *
 * @author ravissement
 * @since 2023. 02.06
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
public interface NoticeService {

	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 NoticeVO
	 * @return void형
	 * @exception Exception
	 */
	void insertNotice(NoticeVO vo) throws Exception;

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 NoticeVO
	 * @return void형
	 * @exception Exception
	 */
	void updateNotice(NoticeVO vo) throws Exception;

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 NoticeVO
	 * @return void형
	 * @exception Exception
	 */
	void deleteNotice(NoticeVO vo) throws Exception;
	
	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 NoticeVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	NoticeVO selectNotice(NoticeVO vo) throws Exception;
	
	/**
	 * 사용중인 글 목록을 조회한다. (useYn : 'Y')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	List<?> selectNoticeList(SearchVO searchVO) throws Exception;
	
	/**
	 * 홈화면의  글 목록을 조회한다. (useYn : 'Y')
	 * @param count - 조회할 정보의 갯수가 담긴 int
	 * @return 글 목록
	 * @exception Exception
	 */
	List<?> selectNoticeListHome(int count) throws Exception;
	
	/**
	 * 사용여부 관계없이 글 목록을 조회한다. (useYn : 'Y', 'N')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	List<?> selectNoticeListAdmin(SearchVO searchVO) throws Exception;
	
	/**
	 * 사용중인 글 총 갯수를 조회한다. (useYn : 'Y')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	int selectNoticeListTotCnt(SearchVO searchVO);
	
	/**
	 * 사용여부 관계없이 글 총 갯수를 조회한다. (useYn : 'Y', 'N')
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	int selectNoticeListTotCntAdmin(SearchVO searchVO);
}
