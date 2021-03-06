<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <ul class="nav nav-sidebar">
		<li class="active"><a href="${cp}/user/userList">사용자 리스트 <span class="sr-only">(current)</span></a></li>
		<li class="active"><a href="${cp}/user/userListOnlyHalf">사용자 리스트(onlyHalf)</a></li>
		<li class="active"><a href="${cp}/user/userPagingList?page=1&pagesize=10">사용자 페이징 리스트<span class="sr-only">(current)</span></a></li>
		<li class="active"><a href="${cp}/user/userPagingListAjaxView?page=1&pagesize=10">사용자 페이징 리스트(Ajax)<span class="sr-only">(current)</span></a></li>
		
		<li class="active"><a href="${cp}/prod/lprodList">제품그룹 리스트</a></li>
		<li class="active"><a href="${cp}/prod/lprodPagingList?page=1&pagesize=5">제품그룹 페이징 리스트</a></li>
	</ul>