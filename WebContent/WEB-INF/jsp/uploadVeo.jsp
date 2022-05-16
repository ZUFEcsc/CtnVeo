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
					<div class="step-main">选择视频片段</div>
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

		<div class="row">
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v1.png" alt="SVID_1">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为00:30，内含小夫向大雄炫耀刚买的钢达姆机器人情节。</h6>
						<a href="SSD" class="btn btn-primary"> 查看示例</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v2.png" alt="SVID_6">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为00:30，内含众人在教室里面讨论星座知识，大雄闹笑话的情节。</h6>
						<a href="SSD" class="btn btn-primary"> 查看示例</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v3.png" alt="SVID_7">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为01:00，内含大雄知道了无上王座的功能后指使大家游街的情节。</h6>
						<a href="SSD" class="btn btn-primary"> 查看示例</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="padding-top: 2%;">
			<div class="col-sm-8"></div>
			<div class="col-sm">
				<form method="post" action="SSD">
				<button class=" btn btn-outline-primary btn-sm" style="float: right;">
					请选择你的视频文件 <input id="uploaderInput" class="weui-uploader__input"
						onchange="chooseVideoInput()" accept="video/*" multiple=""
						type="file"
						style="position: absolute; overflow: hidden; right: 0; top: 0; opacity: 0;">
				</button>
				<div id="uploadBtn" style="display:none;">
					<button class=" btn btn-outline-primary btn-sm"
						style="float: left;" type="submit">确认上传</button>
				</div>
				</form>
			</div>
		</div>
		<div class="row" style="padding-bottom: 1%;">
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v4.png" alt="SVID_10">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为01:00，内含哆啦A梦帮助胖虎实现在电视台唱歌梦想的情节。</h6>
						<a href="SSD" class="btn btn-primary"> 查看示例</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v5.png" alt="SVID_13">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted" style="text-align:left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该片段时长为01:00，内含大雄和哆啦A梦介绍哆啦美送来的徽章道具的情节。</h6>
						<a href="SSD" class="btn btn-primary"> 查看示例</a>
					</div>
				</div>
			</div>

			<div class="col-sm">

				<video src="" controls id="video" class="img-thumbnail"
					style="width: 120%; height: 100%"></video>
				<script>
					function chooseVideoInput(event) {
						var files = document.getElementById("uploaderInput").files[0];
						var url = URL.createObjectURL(files);
						$('#video').attr('src', url);

						var div1 = document.getElementById("uploadBtn");
						div1.style.display="block";
					}
				</script>

			</div>
		</div>



		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>
