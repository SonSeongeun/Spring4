<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id = "edit">
    <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>Genre:</td><td><input type="text" name="genre"/></td></tr>
    <tr><td>SongList:</td><td><textarea cols="50" rows="5" name="songList"></textarea></td></tr>
    <tr><td>SongCount:</td><td><input type="number" name="songCount"/></td></tr>
    <tr><td>Img:</td><td><input type="text" name="img"/></td></tr>
    <tr><td>Playtime:</td><td><input type="text" name="playtime"/></td></tr>

</table>
    <button type="button" onclick="location.href= 'list'">Cancel</button>
    <button type="submit">ADD NEW Post</button>
</form>
</body>
</html>