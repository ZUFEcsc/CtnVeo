<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author"	content="Chen Shan">
<title>V2 Analysis · 哆啦A梦</title>

<%@ include file="bootstrap.jsp"%>

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<%@ include file="indexcss.jsp"%>

</head>
<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		
		<%@ include file="header.jsp"%>

		<main role="main" class="inner cover" style="margin-top:15%;">
			<h1 class="cover-heading">卡通人物识别 · 以哆啦A梦为例</h1>
			<img src="img/indexbg.png" class="img-fluid" alt="Responsive image" style="width: 110%;height: auto; ">
			<p class="lead">Cover is a one-page template for building simple
				and beautiful home pages. Download, edit the text, and add your own
				fullscreen background photo to make it your own.</p>
			<p class="lead">
				<a href="UploadVeo" class="btn btn-lg btn-secondary">开始尝试</a>
			</p>
		</main>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
