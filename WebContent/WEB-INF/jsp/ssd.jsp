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
		<div class="row" style="padding-bottom: 8%;">
			<div class="steps" style="margin:auto;">
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
					<div class="step-main">4.结果统计</div>
				</div>
			</div>
		</div>

		<div class="row" style="padding-bottom: 10%;">
			
		</div>

		<div class="row" style="padding-bottom: 10%;">
		
		</div>
		
		

		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>
