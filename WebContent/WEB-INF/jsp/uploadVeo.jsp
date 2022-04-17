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
<!-- 
<style>
/* 使用弹性居中布局让所有分部居中水平排列 */
.steps {
	padding: 20px;
	display: flex;
	justify-content: center;
}

/* 进度线宽，4份，25% */
.step {
	width: 25%;
	height: 20px;
}

/* 进度线和序号，使用弹性居中布局让序号和进度线居中 */
.step-progress {
	display: flex;
	justify-content: center;
}

/* 文本居中 */
.step-text {
	width: 100%;
	margin-top: 10px;
	text-align: center;
}

/* 进度线 */
.step-line {
	width: 100%;
	height: 5px;
	margin-top: 7px;
	background-color: #cccccc;
}

/* 数字序号 */
.step-num {
	width: 18px;
	height: 18px;
	line-height: 17px;
	/* 圆角背景 */
	border-radius: 50%;
	color: #ffffff;
	font-size: 16px;
	/* 序号居中显示 */
	text-align: center;
	background-color: #cccccc;
	border: 2px solid #cccccc;
	/* 使用相对于父元素定位，强行回到原来的位置 */
	position: absolute;
}

/* 使用渐变背景处理两边 */
.step-progress.right div {
	background: linear-gradient(to right, #cccccc 0%, #cccccc 50%, transparent 51%,
		transparent 100%);
}

.step-progress.left div {
	background: linear-gradient(to left, #cccccc 0%, #cccccc 50%, transparent 51%,
		transparent 100%);
}

/* 完成效果 */
.step-progress.done div {
	background: #4395ff;
}

.step-progress.done span {
	background-color: #4395ff;
	border: 2px solid #4395ff;
}

/* 完成效果左右两边特制 */
.step-progress.right.done div {
	background: linear-gradient(to right, #4395ff 0%, #4395ff 50%, transparent 51%,
		transparent 100%);
}

.step-progress.left.done div {
	background: linear-gradient(to left, #4395ff 0%, #4395ff 50%, transparent 51%,
		transparent 100%);
}
</style>
 -->

<style>
.steps {
	position: relative;
	padding: 25px 0 25px 20px;
}

.step, .step-line {
	float: left;
}

.step {
	display: block;
	width: 21px;
	height: 21px;
	border-radius: 50%;
	line-height: 17px;
	text-align: center;
	font-size: 15px;
	border: 2px solid #cdcdcd;
	background: #cdcdcd;
	font: 16px Helvetica Neue, Helvetica, PingFang SC, 微软雅黑, Tahoma, Arial,
		sans-serif;
}

.step-line {
	width: 50px;
	position: relative;
	top: 9px;
	height: 5px;
	background-color: #cdcdcd;
}

.step-text {
	/*margin-left: -1px;*/
	line-height: 21px;
	color: #fff;
}

.step-circle {
	margin: 4px;
	width: 10px;
	height: 10px;
	border-radius: 50%;
	background-color: #bfcbd9;
}

.step-main {
	font: 14px Helvetica Neue, Helvetica, PingFang SC, 微软雅黑, Tahoma, Arial,
		sans-serif;
	padding: 8px 0;
	display: block;
	width: 100px;
	text-align: center;
	position: relative;
	left: -34px;
	color: #313131;
}

.steps>.step-completed {
	background: #74acdd;
	border-color: #74acdd;
}

/*.step-completed > .step-main {
    color: #2f318e;
}*/
.step-completed>.step-circle {
	background-color: #2f318e;
}

.step-completed.step-line {
	background-color: #74acdd;
}
</style>

<%@ include file="indexcss.jsp"%>

</head>
<body class="text-center">
	<!-- <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column"> -->
	<div class="container  d-flex w-100 h-100 p-3 mx-auto flex-column">

		<%@ include file="header.jsp"%>

		<!-- 步骤条  -->
		<div class="row" style="padding-bottom: 3%;">
			<div class="steps" style="margin: auto;">
				<div class="step step-completed">
					<div class="step-text">1</div>
					<div class="step-main">1.选择视频片段</div>
				</div>
				<div class="step-line step-completed"></div>
				<div class="step-line"></div>
				<div class="step">
					<div class="step-text">2</div>
					<div class="step-main">2.SSD算法解析</div>
				</div>
				<div class="step-line"></div>
				<div class="step-line"></div>
				<div class="step">
					<div class="step-text">3</div>
					<div class="step-main">3.结果统计</div>
				</div>
				<div class="step-line"></div>
				<div class="step-line"></div>
				<div class="step">
					<div class="step-text">4</div>
					<div class="step-main">4.人物关系分析</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v1.jpg" alt="v53_150">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted">该片段为哆啦A梦第三季主题曲：<br>实现梦想的哆啦A梦。</h6>
						<a href="#" class="btn btn-primary"> 查看示例</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v2.jpg" alt="v54_150">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted">该片段属于第三季第三集，内含哆啦A梦偷吃妹妹菠萝包下午茶的情节。</h6>
						<a href="#" class="btn btn-primary"> 查看示例</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v3.jpg" alt="v55_150">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted">该片段属于第三季第三集，内含主角五人对二十二世纪吸血鬼讨论的情节。</h6>
						<a href="#" class="btn btn-primary"> 查看示例</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="padding-top: 3%;">
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
		<div class="row" style="padding-bottom: 2%;">
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v4.jpg" alt="v53_150">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted">该片段为哆啦A梦第三季片尾曲：<br>野比的奇妙冒险。</h6>
						<a href="#" class="btn btn-primary"> 查看示例</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/v5.jpg" alt="v54_150">
					<div class="card-body">
						<h6 class="card-subtitle mb-4 text-muted">该片段属于第三季第三集，内含哆啦A梦与哆啦美吵架，后者负气离开的情节。</h6>
						<a href="#" class="btn btn-primary"> 查看示例</a>
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
