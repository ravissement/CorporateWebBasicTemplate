<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Information</title>
<script type="text/javaScript" language="javascript" defer="defer">
	/* 글 조회 화면 function */
	function fn_egov_select(id) {
		document.listForm.selectedId.value = id;
		document.listForm.action = "<c:url value='/recruit/informationView.do'/>";
		document.listForm.submit();
	}

	/* 글 목록 화면 function */
	function fn_egov_selectList() {
		document.listForm.action = "<c:url value='/recruit/information.do'/>";
		document.listForm.submit();
	}

	/* pagination 페이지 링크 function */
	function fn_egov_link_page(pageNo) {
		document.listForm.pageIndex.value = pageNo;
		document.listForm.action = "<c:url value='/recruit/information.do'/>";
		document.listForm.submit();
	}
</script>
</head>
<body>
	<!-- Loading Screen -->
	<div id="ju-loading-screen">
		<div class="sk-double-bounce">
			<div class="sk-child sk-double-bounce1"></div>
			<div class="sk-child sk-double-bounce2"></div>
		</div>
	</div>
	<%@ include file="/assets/includes/header.jsp"%><!-- header -->
	<!-- main contents -->
	<main>
		<div class="card text-center">
			<img class="card-img" src="/assets/custom/images/noimg.jpg"
				style="width: 100%; height: 300px; object-fit: cover" alt="...">
			<div class="card-img-overlay text-white"
				style="display: flex; align-items: center; justify-content: center;">
				<h1 class="card-title">Recruit</h1>
			</div>
		</div>
		<div class="container">
			<%@ include file="/assets/includes/tabRecruit.jsp"%><!-- tabs -->
			<!-- list -->
			<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
				<h1 class="display-4 fw-normal mt-5">information</h1>
			</div>
			<form:form commandName="searchVO" id="listForm" name="listForm"
				method="post">
				<input type="hidden" name="selectedId" />
				<div id="content_pop" class="mt-5">
					<div id="search" class="d-flex flex-wrap justify-content-end py-2">
						<ul style="list-style: none;" class="nav">
							<li class="nav-item mx-2"><label for="searchCondition"
								style="visibility: hidden; display: none;"><spring:message
										code="search.choose" /></label> <form:select path="searchCondition"
									class="form-select">
									<form:option value="0" label="제목" />
									<form:option value="1" label="내용" />
								</form:select></li>
							<li class="nav-item mx-2"><label for="searchKeyword"
								style="visibility: hidden; display: none;"><spring:message
										code="search.keyword" /></label> <form:input path="searchKeyword"
									class="form-control" /></li>
							<li class="nav-item mx-2"><span class="btn_blue_l"> <a
									href="javascript:fn_egov_selectList();" class="btn btn-primary"><spring:message
											code="button.search" /></a>
							</span></li>
						</ul>
					</div>
					<!-- List -->
					<div id="table">
						<table class="table table-hover mt-2"
							summary="글번호, 제목, 내용, 첨부파일, 등록일 표시하는 테이블">
							<caption style="visibility: hidden">글번호, 제목, 내용, 첨부파일,
								등록일 표시하는 테이블</caption>
							<tr class="bg-light text-center">
								<th>No</th>
								<th class="w-75"><spring:message code="title.recruit.title" /></th>
								<th><spring:message code="title.recruit.attach" /></th>
								<th><spring:message code="title.recruit.regDate" /></th>
							</tr>
							<c:forEach var="result" items="${resultList}" varStatus="status">
								<tr>
									<th scope="row" class="py-3"><c:out
											value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}" /></th>
									<td class="py-3"><a
										href="javascript:fn_egov_select('<c:out value="${result.idx}"/>')"
										class="text-dark px-2" style="text-decoration: none;"><c:out
												value="${result.title}" />&nbsp;</a></td>
									<td class="text-center py-3"><c:if
											test="${result.attachSaveName != null}">
											<a
												href="<c:url value='/recruit/fileDownload.do?fileSaveName=${result.attachSaveName}&fileOriName=${result.attachOriName}'/> ">
												<svg xmlns="http://www.w3.org/2000/svg" width="20"
													height="20" fill="currentColor" class="bi bi-download"
													viewBox="0 0 16 16">
											  <path
														d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z" />
											  <path
														d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z" />
											</svg>
											</a>
										</c:if></td>
									<td class="text-center py-3"><fmt:formatDate
											value="${result.regDate}" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<!-- /List -->
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<ui:pagination paginationInfo="${paginationInfo}" type="text"
								jsFunction="fn_egov_link_page" />
							<form:hidden path="pageIndex" />
						</ul>
					</nav>
				</div>
			</form:form>
		</div>
	</main>
	<%@ include file="/assets/includes/footer.jsp"%><!-- footer -->
</body>
</html>