<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice</title>
<style>
/* textarea style */
.contents:focus {outline: none;}
.contents {min-height: 500px; width:100%; border: none; resize: none;}
</style>
<script type="text/javaScript" language="javascript" defer="defer">
	/* 글 목록 화면 function */
	function fn_egov_selectList() {
		document.detailForm.action = "<c:url value='/client/notice.do'/>";
	   	document.detailForm.submit();
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
<%@ include file="/assets/includes/header.jsp" %><!-- header -->
<!-- main contents -->	
<main>
	<div class="card text-center">
		<img class="card-img" src="/assets/custom/images/noimg.jpg" style="width: 100%; height: 300px; object-fit:cover" alt="...">
		<div class="card-img-overlay text-white" style="display: flex; align-items: center; justify-content: center;">
			<h1 class="card-title">Client</h1>
		</div>
	</div>
	<div class="container">
		<%@ include file="/assets/includes/tabClient.jsp" %><!-- tabs -->
		<!-- list -->
		<div class="container pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
			<h1 class="display-4 fw-normal mt-5">
				Notice
		    </h1>
		</div>
		<form:form commandName="noticeVO" id="detailForm" name="detailForm" enctype="multipart/form-data">
		    <div class="mt-5">
		    	<div id="table">
		    	<table class="table" style="table-layout: fixed;">
		    		<tr>
		    			<td style="width:15%; font-weight:bold;" class="text-center text-secondary"><label for="title"><spring:message code="title.notice.title" /></label></td>
		    			<td>
		    				<c:out value="${noticeVO.title}" />
		    			</td>
		    		</tr>
		    		<tr>
		    			<td style="font-weight:bold;" class="text-center text-secondary"><label for="contents"><spring:message code="title.notice.contents" /></label></td>
		    			<td>
		    				<textarea class="contents" readonly><c:out value="${noticeVO.contents}" /></textarea>
		                </td>
		    		</tr>
		    		<tr>
		    			<td style="font-weight:bold;" class="text-center text-secondary"><label for="regDate"><spring:message code="title.notice.regDate" /></label></td>
		    			<td>
		    				<fmt:parseDate value="${noticeVO.regDate}" var="regDate"  pattern="yyyy-MM-dd HH:mm"/>
		    				<fmt:formatDate value="${regDate}" pattern="yyyy-MM-dd"/>
	       				</td>
		    		</tr>
		    		<tr>
		    			<td style="font-weight:bold;" class="text-center text-secondary"><label for="attach"><spring:message code="title.notice.attach" /></label></td>
		    			<td>
							<c:if test="${noticeVO.attachSaveName != null}">
		        				${noticeVO.attachOriName} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        				<a href="<c:url value='/client/fileDownload.do?fileSaveName=${noticeVO.attachSaveName}&fileOriName=${noticeVO.attachOriName}'/> " class="btn btn-secondary">다운로드</a>
		                    </c:if>
	       				</td>
		    		</tr>
		    	</table>
		      </div>
		    	<div id="sysbtn">
		    		<ul class="nav justify-content-end">
		    			<li class="nav-item mx-2">
		                    <span>
		                        <a href="javascript:fn_egov_selectList();" class="btn btn-primary"><spring:message code="button.list" /></a>
		                    </span>
		                </li>
		            </ul>
		    	</div>
		    </div>
		    <!-- 검색조건 유지 -->
		    <input type="hidden" name="searchCondition" value="<c:out value='${searchVO.searchCondition}'/>"/>
		    <input type="hidden" name="searchKeyword" value="<c:out value='${searchVO.searchKeyword}'/>"/>
		    <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
		</form:form>
	</div>
</main>
<%@ include file="/assets/includes/footer.jsp" %><!-- footer -->
</body>
</html>