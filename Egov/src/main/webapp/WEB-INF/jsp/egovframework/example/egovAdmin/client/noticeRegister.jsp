<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="registerFlag" value="${empty noticeVO.idx ? 'create' : 'modify'}"/>
<title>
	Notice	<c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
			<c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>
</title>
<!--For Commons Validator Client Side-->
<script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
<validator:javascript formName="noticeVO" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript" defer="defer">
	/* 글 목록 화면 function */
	function fn_egov_selectList() {
	   	document.detailForm.action = "<c:url value='/egovAdmin/client/notice.do'/>";
	   	document.detailForm.submit();
	}
	
	/* 글 삭제 function */
	function fn_egov_delete() {
		if (!confirm("삭제하시겠습니까?")) {
			return;
		} else {
		   	document.detailForm.action = "<c:url value='/egovAdmin/client/deleteNotice.do'/>";
		   	document.detailForm.submit();
        }
	}
	
	/* 글 등록 function */
	function fn_egov_save() {
		frm = document.detailForm;
		if(!validateNoticeVO(frm)){
	        return;
	    }else{
	    	frm.action = "<c:url value="${registerFlag == 'create' ? '/egovAdmin/client/addNotice.do' : '/egovAdmin/client/updateNotice.do'}"/>";
	        frm.submit();
	    }
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
<%@ include file="/assets/includes/headerAdmin.jsp" %><!-- header -->
<!-- main contents -->	
<main>
	<div class="card text-center">
		<img class="card-img" src="/assets/custom/images/noimg.jpg" style="width: 100%; height: 300px; object-fit:cover" alt="...">
		<div class="card-img-overlay text-white" style="display: flex; align-items: center; justify-content: center;">
			<h1 class="card-title">Notice</h1>
		</div>
	</div>
	<div class="container">
		<%@ include file="/assets/includes/tabClientAdmin.jsp" %><!-- tabs -->
		<!-- list -->
		<div class="container pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
			<h1 class="display-4 fw-normal mt-5">
				<c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
		        <c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>
		    </h1>
		</div>
		<form:form commandName="noticeVO" id="detailForm" name="detailForm" enctype="multipart/form-data">
		    <div>
		    	<div id="table">
		    	<table class="table">
		    		<c:if test="${registerFlag == 'modify'}">
	       				<form:input path="idx" type="hidden"/>
		    		</c:if>
		    		<tr>
		    			<td style="font-weight:bold;" class="text-center text-secondary"><label for="title"><spring:message code="title.notice.title" /></label></td>
		    			<td>
		    				<form:input path="title" maxlength="100" class="form-control"/>
		    				&nbsp;<form:errors path="title" />
		    			</td>
		    		</tr>
		    		<tr>
		    			<td style="font-weight:bold;" class="text-center text-secondary"><label for="useYn"><spring:message code="title.notice.useYn" /></label></td>
		    			<td>
		    				<form:select path="useYn" class="form-select w-25">
		    					<form:option value="Y" label="Yes" />
		    					<form:option value="N" label="No" />
		    				</form:select>
		    			</td>
		    		</tr>
		    		<tr>
		    			<td style="font-weight:bold;" class="text-center text-secondary"><label for="contents"><spring:message code="title.notice.contents" /></label></td>
		    			<td>
		    				<form:textarea path="contents" rows="5" cols="58" class="form-control" />&nbsp;<form:errors path="contents" />
		                </td>
		    		</tr>
		    		<tr>
		    			<td style="font-weight:bold;" class="text-center text-secondary"><label for="regUser"><spring:message code="title.notice.regUser" /></label></td>
		    			<td>
		                    <c:if test="${registerFlag == 'modify'}">
		        				<form:input path="regUser" maxlength="10" readonly="true" class="form-control w-25"/>
		        				&nbsp;<form:errors path="regUser" />
		                    </c:if>
		                    <c:if test="${registerFlag != 'modify'}">
		        				<form:input path="regUser" maxlength="10" class="form-control w-25"/>
		        				&nbsp;<form:errors path="regUser" />
		                    </c:if>
        				</td>
		    		</tr>
		    		<tr>
		    			<td style="font-weight:bold;" class="text-center text-secondary"><label for="attach"><spring:message code="title.notice.attach" /></label></td>
		    			<td>
							<c:if test="${registerFlag == 'modify'}">
		        				<form:input path="attachFile" type="file" class="form-control w-25"/>
		        				&nbsp;<form:errors path="attachFile" />
								<c:if test="${noticeVO.attachSaveName != null}">
									<br>
			        				${noticeVO.attachOriName} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        				<a href="<c:url value='/egovAdmin/client/fileDownload.do?fileSaveName=${noticeVO.attachSaveName}&fileOriName=${noticeVO.attachOriName}'/> " class="btn btn-secondary">다운로드</a>
			                    </c:if>
		                    </c:if>
		                    <c:if test="${registerFlag != 'modify'}">
		        				<form:input path="attachFile" type="file" class="form-control w-25"/>
		        				&nbsp;<form:errors path="attachFile" />
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
		    			<li class="nav-item mx-2">
		                    <span>
		                        <a href="javascript:fn_egov_save();" class="btn btn-info text-light">
		                            <c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
		                            <c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>
		                        </a>
		                    </span>
		                </li>
		    			<c:if test="${registerFlag == 'modify'}">
		                    <li class="nav-item mx-2">
		                        <span>
		                            <a href="javascript:fn_egov_delete();" class="btn btn-danger"><spring:message code="button.delete" /></a>
		                        </span>
		                    </li>
		    			</c:if>
		    			<li class="nav-item mx-2">
		                    <span>
		                        <a href="javascript:document.detailForm.reset();" class="btn btn-primary"><spring:message code="button.reset" /></a>
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