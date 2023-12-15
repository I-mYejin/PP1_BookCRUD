<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-12-09
  Time: 오후 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        body {background-color: black; color: white; text-align: center; padding-top: 150px}
        img, label { display:inline-block;}
        label{ width:130px}
        button{ background-color: #000000; color: #59fd37;font-size:20px;}
    </style>
</head>
<body>
<%--<div style='width:100%;text-align:center;padding-top:100px'>--%>
<%--    <img src='../img/snowman.jpg' height="250">--%>
<h1>로그인 하기</h1>
    <form method="post" action="loginOk">
        <div><label>User ID: </label><input type='text' name='userid' /></div>
        <div><label>Password: </label>
            <input type='password' name='password' /></div>
        <p></p>
        <button type='submit'>login</button>
    </form>
</div>
</body>
</html>

