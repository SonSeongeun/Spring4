<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>

<h1>BOARD post</h1>
<div class="table-responsive">
    <table class="table table-striped table-sm">
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Genre</th>
            <th>SongList</th>
            <th>SongCount</th>
            <th>Img</th>
            <th>Playtime</th>
            <th>Regdate</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.getSeq()}</td>
                <td>${u.getTitle()}</td>
                <td>${u.getWriter()}</td>
                <td>${u.getGenre()}</td>
                <td>${u.getSongList()}</td>
                <td>${u.getSongCount()}</td>
                <td>${u.getImg()}</td>
                <td>${u.getRegdate()}</td>
                <td>${u.getPlaytime()}</td>
                <td><a href="./editform/${u.seq}">Edit</a></td>
                <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href='deleteok/'+id;
    }
</script>
</html>