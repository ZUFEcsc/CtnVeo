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

		<!-- <main role="main" class="inner cover" style="margin-top:15%;"> -->
		<div class="row" style="margin-top:10px;">
			<h1 class="cover-heading"  style="padding:0 auto;margin:10px auto;">卡通人物识别 · 以哆啦A梦为例</h1>
			<img src="img/indexbg.png" class="img-fluid" alt="Responsive image" style="width: 110%;height: auto; ">
			<p class="p-3" style="text-align:left;margin-top:20px;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;近年来，目标检测技术作为人工智能领域的研究热点问题，其思想和应用在国内外研究者的不断摸索中逐渐走向成熟。
			本站尝试以哆啦A梦第三季作品为例，将目标识别检测技术运用于动漫角色人脸，在SSD(Single Shot MultiBox Detector)目标识别模型的基础上对ドラえもん、野比のび、刚田武シァィンり、骨川スネ夫、源 静香五个主角实现视频动漫角色人脸检测并尝试呈现分类检测和可视化分析结果。
			</p>
			<p class="lead" style="margin:0 auto;">
				<a href="UploadVeo" class="btn btn-lg btn-primary">开始尝试 👆 </a>
			</p>
		<!-- </main> -->
		</div>
		
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
