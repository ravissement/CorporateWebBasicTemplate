<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager</title>
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
		<div class="pricing-header mt-5 p-3 pb-md-4 mx-auto text-center">
			<h1 class="display-4 fw-normal mt-5">Manager</h1>
		</div>
		<table class="table my-5">
			<thead>
				<tr>
					<th>Dept</th>
					<th>Position/Name</th>
					<th>Role</th>
					<th>Phone</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td rowspan="4">R&D Dept.</td>
					<td><strong class="text-secondary">GM</strong> Edmund</td>
					<td>R&D total management</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_1">edmund@xxx.com</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_1" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
				<tr>
					<td><strong class="text-secondary">DGM</strong> Benedict</td>
					<td>System management</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_2">benedict@xxx.net</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_2" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
				<tr>
					<td><strong class="text-secondary">AM</strong> Edgar</td>
					<td>System integration</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_3">edgar@xxx.co.kr</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_3" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
				<tr>
					<td><strong class="text-secondary">Staff</strong> Antony</td>
					<td>System integration</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_4">antony@xxx.com</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_4" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
				<tr>
					<td rowspan="4">Sales Planning Dept.</td>
					<td><strong class="text-secondary">GM</strong> Oscar</td>
					<td>Product manager</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_5">oscar@xxx.co.kr</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_5" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
				<tr>
					<td><strong class="text-secondary">DGM</strong> Richard</td>
					<td>Brand manager</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_6">richard@xxx.co.kr</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_6" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
				<tr>
					<td><strong class="text-secondary">AM</strong> Walter</td>
					<td>Marketing Communication</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_7">walter@xxx.co.kr</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_7" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
				<tr>
					<td><strong class="text-secondary">Staff</strong> Noel</td>
					<td>Marketing Communication</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_8">noel@xxx.com</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_8" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
				<tr>
					<td rowspan="2">Financial dept.</td>
					<td><strong class="text-secondary">CEO</strong> Elizabethe</td>
					<td>Accounting, Human Resources</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_9">elizabethe@xxx.co.kr</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_9" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
				<tr>
					<td><strong class="text-secondary">AM</strong> Naomi</td>
					<td>Accounting, Human Resources</td>
					<td>000)000-0000</td>
					<td>
						<span id="email_10">naomi@xxx.com</span>
						&nbsp;&nbsp;&nbsp;
						<a href="javascript:void(0);" id="copy_10" onClick="copyToClipBoard(this.id)">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-check" viewBox="0 0 16 16">
							  <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
							  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
							</svg>
						</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</main>
<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
	<div id="liveToast" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true">
		<div class="toast-header">
			<strong class="me-auto">CorporateName</strong>
			<small>now</small>
			<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
		</div>
		<div class="toast-body">이메일이 복사되었습니다.</div>
	</div>
</div>
<%@ include file="/assets/includes/footer.jsp" %><!-- footer -->
<script>
	/* email copy clipboard */
	function copyToClipBoard(clickId) {
		var content = document.getElementById( "email_" + clickId.substring(5) ).innerText;
		copyTextToClipboard(content);
		
	}
	async function copyTextToClipboard(text) {
	    try {
	        await navigator.clipboard.writeText(text);
	        console.log('Text copied to clipboard');
	        $('.toast').toast('show');
	    } catch (err) {
	        console.error('Error in copying text: ', err);
	    }
	}
</script>
</body>
</html>