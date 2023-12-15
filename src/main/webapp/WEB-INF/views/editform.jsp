<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
 <%@page import="com.crud.dao.BookDAO, com.crud.bean.BookVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
 <style>
  body {background-color: white; color: black; text-align: center;}
  button{ background-color: #ffffff; color: #000000;font-size:15px;}
 </style>
</head>
<body>

<h1>감상문 수정하기</h1>
<form action="../editok" method="POST">
<input type="hidden" name="seq" value="${u.seq}"/>
<table id="edit">
 <tr><td>카테고리 :</td><td><input type="text" name="category" value="${u.category}"/></td></tr>
<tr><td>제목 :</td><td><input type="text" name="title" value="${u.title}"/></td></tr>
<tr><td>책 작가 :</td><td><input type="text" name="writer" value="${u.writer}" /></td></tr>
 <tr><td>출판사 :</td><td><input type="text" name="publish" value="${u.publish}" /></td></tr>
 <tr><td>추천(상,중,하) :</td><td><input type="text" name="state" value="${u.state}" /></td></tr>
 <tr><td>책 가격 :</td><td><input type="text" name="price" value="${u.price}" /></td></tr>
<tr><td>감상문 내용 :</td><td><textarea cols="50" rows="5" name="content">${u.content}</textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>