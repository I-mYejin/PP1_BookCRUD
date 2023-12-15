<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.crud.dao.BookDAO, com.crud.bean.BookVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Post</title>
</head>
<body>

<h1>상세보기</h1>
<form action="../book/view/${u.seq}" method="POST">
    <input type="hidden" name="seq" value="${u.seq}"/>
    <table id="view">
        <tr><td>ID:</td><td>${u.seq}</td></tr>
        <tr><td>Category:</td><td>${u.category}</td></tr>
        <tr><td>Title:</td><td>${u.title}</td></tr>
        <tr><td>Writer:</td><td>${u.writer}</td></tr>
        <tr><td>Publish:</td><td>${u.publish}</td></tr>
        <tr><td>State:</td><td>${u.state}</td></tr>
        <tr><td>Price:</td><td>${u.price}</td></tr>
        <tr><td>Content:</td><td>${u.content}</td></tr>
        <tr><td>Regdate:</td><td>${u.regdate}</td></tr>
    </table>
    <button type="button" onclick="location.href='../post'">목록보기</button>
</form>
</body>
</html>

