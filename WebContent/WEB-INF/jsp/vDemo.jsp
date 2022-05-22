<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Chen Shan">
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
<%@ include file="stepcss.jsp" %>

</head>
<body class="text-center">
	<!-- <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column"> -->
	<div class="container  d-flex w-100 h-100 p-3 mx-auto flex-column">

		<%@ include file="header.jsp"%>

		<!-- 步骤条  -->
		<div class="row" style="padding-bottom: 2%;">
			<div class="steps" style="margin: auto;">
				<div class="step step-completed">
					<div class="step-text">1</div>
					<div class="step-main"><a href="#">选择视频示例</a></div>
				</div>
				<div class="step-line step-completed"></div>
				<div class="step-line step-completed"></div>
				<div class="step-line"></div>
				<div class="step-line"></div>
				<div class="step">
					<div class="step-text">2</div>
					<div class="step-main">算法解析</div>
				</div>
				<div class="step-line"></div>
				<div class="step-line"></div>
				<div class="step-line"></div>
				<div class="step-line"></div>
				<div class="step">
					<div class="step-text">3</div>
					<div class="step-main">结果统计</div>
				</div>
			</div>
		</div>

		<div class="row" style="padding-top: 2%;">
			<div class="col-sm">
				<div class="card">
					<video class="card-img-top" poster="img/vd1.png" controls>
					<source src="videos/SVID_1.mp4" type="video/mp4" />
					</video>
					<!--  <img class="card-img-top" src="img/v1.png" alt="SVID_1"> -->
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为00:30，内含小夫向大雄炫耀刚买的钢达姆机器人，大雄萌生自己制作机器人想法的情节。</h6>
						<a href="SSD?vname=SVID_1" class="btn btn-outline-primary"> 查看 👆</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<video class="card-img-top" poster="img/vd2.png" controls>
					<source src="videos/SVID_6.mp4" type="video/mp4" />
					</video>
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为00:40，内含众人在教室里面讨论星座知识，大雄加入随后谐音梗闹笑话的情节。</h6>
						<a href="SSD?vname=SVID_6" class="btn btn-outline-primary"> 查看 👆</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<video class="card-img-top" poster="img/vd3.png" controls>
					<source src="videos/SVID_7.mp4" type="video/mp4" />
					</video>
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为01:00，内含大雄知道了无上王座的功能后，趁哆啦A梦不注意坐上王座之后指使大家游街的情节。</h6>
						<a href="SSD?vname=SVID_7" class="btn btn-outline-primary"> 查看 👆</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="padding-top: 3%;">
			<div class="col-sm">
				<div class="card">
					<video class="card-img-top" poster="img/vd4.png" controls>
					<source src="videos/SVID_10.mp4" type="video/mp4" />
					</video>
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为01:00，内含哆啦A梦帮助胖虎实现在电视台唱歌梦想的情节。</h6>
						<a href="SSD?vname=SVID_10" class="btn btn-outline-primary"> 查看 👆</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<video class="card-img-top" poster="img/vd5.png" controls>
					<source src="videos/SVID_13.mp4" type="video/mp4" />
					</video>
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为01:00，内含大雄和哆啦A梦介绍哆啦美送来的徽章道具的情节。</h6>
						<a href="SSD?vname=SVID_13" class="btn btn-outline-primary"> 查看 👆</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<video class="card-img-top" poster="img/vd6.png" controls>
					<source src="videos/SVID_14.mp4" type="video/mp4" />
					</video>
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为01:00，内含大雄、小夫和其他小伙伴在空地上玩耍的情节。</h6>
						<a href="SSD?vname=SVID_14" class="btn btn-outline-primary"> 查看 👆</a>
					</div>
				</div>
			</div>
		</div>

		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>
