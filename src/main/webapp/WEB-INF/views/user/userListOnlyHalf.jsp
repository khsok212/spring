<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jsp-basicLib</title>
<%@ include file = "/WEB-INF/views/commonJsp/basicLib.jsp" %>

</head>

<body>
	
	<!-- header -->
	<%@ include file="/WEB-INF/views/commonJsp/header.jsp"%>

	<div class="container-fluid">
		<div class="row">

			<div class="col-sm-3 col-md-2 sidebar">
				
				<!-- left -->
				<%@ include file="/WEB-INF/views/commonJsp/mainLeft.jsp"%>

			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">


				<div class="row">
					<div class="col-sm-8 blog-main">
						<h2 class="sub-header">사용자(50)</h2>
						<div class="table-responsive">
							<table class="table table-striped table-condensed">
								<tr>
									<th>사용자 아이디</th>
									<th>사용자 이름</th>
									<th>사용자 별명</th>
									<th>등록일시</th>
								</tr>

								<%--
									// UserListController에서 지정한 request.setAttribute("userList", userList); 아이디 이름으로 가져온다.
									List<User> userList = (List<User>)request.getAttribute("userList");
									for(User userVo : userList){
								--%>
								
<!-- 								<tr> -->
<%-- 									<td><%=userVo.getUserId() %></td> --%>
									<!-- 사용자 아이디  -->
<%-- 									<td><%=userVo.getUserNm() %></td> --%>
									<!-- 사용자 이름  -->
<!-- 									<td></td> -->
									<!-- 사용자 별명  -->
<!-- 									<td></td> -->
									<!-- 등록일시  -->
<!-- 								</tr> -->
								
								<%-- } --%>
								
								<%-- for(User user : userList) --%>
								<c:forEach items="${userList}" var="user">
									<tr>
										<td>${user.userId }</td>
										<td>${user.userNm }</td>
										<td>${user.alias }</td>
										<td><fmt:formatDate value="${user.reg_dt }" pattern="yyyy-MM-dd"/></td>
									</tr>
								</c:forEach>

							</table>
						</div>

						<a class="btn btn-default pull-right">사용자 등록</a>

						<div class="text-center">
							<ul class="pagination">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>