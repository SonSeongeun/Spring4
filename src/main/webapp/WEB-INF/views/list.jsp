<%@ page language="java" contentType="text/html; charset=UTF-8"
		 isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>Title</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<style>
		.title {
			/* ... */
		}
		#topbar {
			/* ... */
		}

		/* 카드 스타일 추가 */
		.card {
			border: none;
			box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
			transition: 0.3s;
			border-radius: 5px; /* 테두리 둥글게 */
			margin-bottom: 20px; /* 카드 사이 간격 */
		}

		.card:hover {
			box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
		}

		.card-body {
			padding: 2px 16px;
		}

		.card-link {
			margin-right: 5px;
		}

		/* 미디어 쿼리를 사용하지 않고 부트스트랩의 그리드 시스템을 활용 */
	</style>
</head>
<body>

<h1 class="title">BOARD post</h1>
<div class="container-fluid">
	<div class="row">
		<c:forEach items="${list}" var="u">
			<!-- 반응형 그리드 설정 -->
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Title: ${u.title}</h5>
						<p class="card-text">
							Id: ${u.seq}<br>
							Writer: ${u.getWriter()}<br>
							Genre: ${u.getGenre()}<br>
							SongList: ${u.getSongList()}<br>
							SongCount: ${u.getSongCount()}<br>
							Img: ${u.getImg()}<br>
							Regdate: ${u.getRegdate()}<br>
							Playtime: ${u.getPlaytime()}<br>
						</p>
						<a href="editform/${u.getSeq()}" class="card-link">Edit</a>
						<a href="view/${u.seq}" class="card-link">View</a>
						<a href="javascript:delete_ok('${u.getSeq()}')" class="card-link">Delete</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<br/><a href="add">Add New Post</a>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하시겠습니까?");
		if(a) location.href='deleteok/'+id;
	}
</script>
</body>
</html>