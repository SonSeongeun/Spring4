<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<%--@elvariable id="boardVO" type=""--%>
<form:form modelAttribute="u" method="POST" action="../editok">
	<form:hidden path="seq" />
	<table id = "edit">
		<tr><td>Title:</td><td><form:input path="title"/></td></tr>
		<tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
		<tr><td>Genre:</td><td><form:input path="genre"/></td></tr>
		<tr><td>SongList:</td><td><form:textarea cols="50" rows="5" path="songList" /></td></tr>
		<tr><td>SongCount:</td><td><form:input path="songCount"/></td></tr>
		<tr><td>Img:</td><td><form:input path="img"/></td></tr>
		<tr><td>Playtime:</td><td><form:input path="playtime"/></td></tr>
	</table>
	<tr><td colspan="2">
	<input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</form:form>
</body>
</html>