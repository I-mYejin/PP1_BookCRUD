<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.crud.dao.BookDAO, com.crud.bean.BookVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Post</title>
    <style>
    body {background-color: black; color: #59fd37; text-align: center;}
    button{ background-color: #000000; color: #ffffff;font-size:20px; margin: 0;}
    table {
        text-align: center;
    }

    form {
        margin-left: 580px;
        width: 50%;
        color: white;
    }
    tr{
        padding-bottom: 20px;
    }
    </style>
</head>
<body>

<h1>상세보기</h1> <br><br>
<form action="../book/view/${u.seq}" method="POST" style="text-align: center;">
    <input type="hidden" name="seq" value="${u.seq}"/>
    <table id="view" >
        <tr><td>No: </td><td>${u.seq}</td></tr>
        <tr><td>카테고리: </td><td>${u.category}</td></tr>
        <tr><td>책 제목: </td><td>${u.title}</td></tr>
        <tr><td>책 작가: </td><td>${u.writer}</td></tr>
        <tr><td>출판사: </td><td>${u.publish}</td></tr>
        <tr><td>추천(상,중,하): </td><td>${u.state}</td></tr>
        <tr><td>책 가격: </td><td>${u.price}</td></tr>
        <tr><td>감상문 내용: </td><td>${u.content}</td></tr>
        <tr><td>등록일: </td><td>${u.regdate}</td></tr>
    </table>
    <br><br>
    <button type="button" onclick="location.href='../post'">목록보기</button>
</form>
</body>
</html>

