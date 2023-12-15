<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
    body {background-color: white; color: black; text-align: center;}
    button{ background-color: #ffffff; color: #000000;font-size:15px;}
    </style>
</head>
<body>


<h1>독서 감상문 추가하기</h1>
<form action="addok" method="post">
    <table id = "edit">
        <tr><td>카테고리:</td><td><input type="text" name="category"/></td></tr>
        <tr><td>책 제목:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>작가 :</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>출판사 :</td><td><input type="text" name="publish"/></td></tr>
        <tr>
            <td>추천(상,중,하):</td>
            <td>
                <select name="state">
                    <option value="상">상</option>
                    <option value="중">중</option>
                    <option value="하">하</option>
                </select>
            </td>
        </tr>
        <tr><td>책 가격 :</td><td><input type="text" name="price"/></td></tr>
        <tr><td>소감문 :</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='post'"> 목록보기 </button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>