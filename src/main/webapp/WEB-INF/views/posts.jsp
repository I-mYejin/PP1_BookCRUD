<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.crud.dao.BookDAO, com.crud.bean.BookVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
	body {background-color: white; color: black; text-align: center;}
	button{ background-color: #ffffff; color: #000000;font-size:15px;}
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd; }
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #70c75c;
  color: #000000;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<index style="text-align: center;">
<h1>독서 게시판</h1>

<form method="post" action="../login/logout" style="text-align: right;">
	<button type='submit'>logout</button>
</form>
	<p></p>
<table id="list" width="90%">
<tr>
	<th>NO</th>
	<th>카테고리</th>
	<th>책 제목</th>
	<th>책 작가</th>
	<th>추천(상,중,하)</th>
	<th>책 감상문</th>
	<th>등록일</th>
	<th>상세보기</th>
	<th>편집하기</th>
	<th>삭제하기</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.category}</td>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.state}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
		<td><a href="view/${u.seq}">상세보기</a></td>
		<td><a href="editform/${u.seq}">편집</a></td>
		<td><a href="deleteok/${u.seq}">삭제</a></td>
	</tr>
</c:forEach>
</table>
<br><div style="text-align: right;">
	<button type="button" onclick="location.href='add'">감상문 추가하기</button>
</div>
</index>
</body>
</html>
