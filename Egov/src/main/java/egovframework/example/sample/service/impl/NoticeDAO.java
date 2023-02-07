package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.NoticeVO;
import egovframework.example.sample.service.SearchVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

/**
 * @Class Name : NoticeDAO.java
 * @Description : Notice DAO Class
 * @Modification Information
 * @
 * @  수정일			수정자			수정내용
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

@Repository("noticeDAO")
public class NoticeDAO extends EgovAbstractDAO {

	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 NoticeVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	public String insertNotice(NoticeVO vo) throws Exception {
		return (String) insert("noticeDAO.insertNotice", vo);
	}

	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 NoticeVO
	 * @return void형
	 * @exception Exception
	 */
	public void updateNotice(NoticeVO vo) throws Exception {
		update("noticeDAO.updateNotice", vo);
	}

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 NoticeVO
	 * @return void형
	 * @exception Exception
	 */
	public void deleteNotice(NoticeVO vo) throws Exception {
		delete("noticeDAO.deleteNotice", vo);
	}

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 NoticeVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public NoticeVO selectNotice(NoticeVO vo) throws Exception {
		return (NoticeVO) select("noticeDAO.selectNotice", vo);
	}

	/**
	 * 사용중인 글 목록을 조회한다. (useYN : 'Y')
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectNoticeList(SearchVO searchVO) throws Exception {
		return list("noticeDAO.selectNoticeList", searchVO);
	}
	
	/**
	 * 홈화면의 글 목록을 조회한다. (useYN : 'Y')
	 * @param count - 조회할 정보의 갯수가 담긴 int
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectNoticeListHome(int count) throws Exception {
		return list("noticeDAO.selectNoticeListHome", count);
	}
	
	/**
	 * 사용여부 관계없이 글 목록을 조회한다. (useYn : 'Y', 'N')
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectNoticeListAdmin(SearchVO searchVO) throws Exception {
		return list("noticeDAO.selectNoticeListAdmin", searchVO);
	}
	
	/**
	 * 사용중인 글 총 갯수를 조회한다. (useYn : 'Y')
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 총 갯수
	 * @exception
	 */
	public int selectNoticeListTotCnt(SearchVO searchVO) {
		return (Integer) select("noticeDAO.selectNoticeListTotCnt", searchVO);
	}
	
	/**
	 * 사용여부 관계없이 글 총 갯수를 조회한다. (useYN : 'Y', 'N')
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 총 갯수
	 * @exception
	 */
	public int selectNoticeListTotCntAdmin(SearchVO searchVO) {
		return (Integer) select("noticeDAO.selectNoticeListTotCntAdmin", searchVO);
	}
}
