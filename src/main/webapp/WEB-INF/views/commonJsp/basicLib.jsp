<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		HttpServletRequest hsr = (HttpServletRequest)pageContext.getRequest();
		hsr.getContextPath();
	%>
	
<%-- <script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script> --%>
<script src="${cp }/js/jquery-3.4.1.min.js"></script>

<link href="${cp }/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<script src="${cp }/bootstrap/js/bootstrap.min.js"></script>

<!-- Custom styles for this templet -->
<link href="${cp }/css/dashboard.css" rel="stylesheet">
<link href="${cp }/css/blog.css" rel="stylesheet">