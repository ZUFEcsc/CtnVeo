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
.card-text{
	margin-bottom:1.5rem;
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
	<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">

		<%@ include file="header.jsp"%>

		<!-- 步骤条  -->
		<div class="row" style="padding-bottom: 5%;">
			<div class="steps" style="margin: auto;">
				<div class="step step-completed">
					<div class="step-text">1</div>
					<div class="step-main">1.选择视频片段</div>
				</div>
				<div class="step-line step-completed"></div>
				<div class="step-line step-completed"></div>
				<div class="step step-completed">
					<div class="step-text">2</div>
					<div class="step-main">2.SSD算法解析</div>
				</div>
				<div class="step-line step-completed"></div>
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

		<div class="row">
			<!-- <div class="col-sm-1"></div> -->
			<div class="col-sm" id="scorediv" style="height: 500px;"></div>
			<div class="col-sm" style="padding: 5% 0;">
				<div class="card" style="height: 100%;">
					<div class="card-body" style="text-align: left;">
						<h5 class="card-title" style="text-align: center;margin-bottom:10%;">SSD模型应用指标分析结果</h5>

						<h6 class="card-subtitle mb-2 text-muted">精确率
							precision=正确被检索的结果/实际被检索的结果</h6>
						<p class="card-text">本次模型表现指标为：</p>

						<h6 class="card-subtitle mb-2 text-muted">召回率
							recall=正确被检索的结果/应该被检索的结果</h6>
						<p class="card-text">本次模型表现指标为：</p>

						<h6 class="card-subtitle mb-2 text-muted">fps
							每秒模型可处理的图片张数和检测框个数</h6>
						<p class="card-text">本次模型表现指标为：</p>
						
						<a href="#" class="card-link" style="float:right;">查看指标来源和参考依据</a>
						<br>
						
						<a href="UploadVeo" class="btn btn-outline-primary" style="left;margin-top:5%;">重新选择视频</a>
						<a href="Counter" class="btn btn-primary" style="float:right;margin-top:5%;">下一步</a>
						
					</div>
				</div>
			</div>
			<div class="col-sm-1"></div>

		</div>

		<script type="text/javascript">
			var dom = document.getElementById("scorediv");
			var myChart = echarts.init(dom);
			var app = {};

			var option;

			const gaugeData = [ {
				value : 75,
				name : '精确率',
				title : {
					offsetCenter : [ '0%', '-30%' ]
				},
				detail : {
					valueAnimation : true,
					offsetCenter : [ '0%', '-20%' ]
				}
			}, {
				value : 40,
				name : '召回率',
				title : {
					offsetCenter : [ '0%', '0%' ]
				},
				detail : {
					valueAnimation : true,
					offsetCenter : [ '0%', '10%' ]
				}
			}, {
				value : 60,
				name : 'FPS',
				title : {
					offsetCenter : [ '0%', '30%' ]
				},
				detail : {
					valueAnimation : true,
					offsetCenter : [ '0%', '40%' ]
				}
			} ];
			option = {
				series : [ {
					type : 'gauge',
					startAngle : 90,
					endAngle : -270,
					pointer : {
						show : false
					},
					progress : {
						show : true,
						overlap : false,
						roundCap : true,
						clip : false,
						itemStyle : {
							borderWidth : 1,
							borderColor : '#464646'
						}
					},
					axisLine : {
						lineStyle : {
							width : 40
						}
					},
					splitLine : {
						show : false,
						distance : 0,
						length : 10
					},
					axisTick : {
						show : false
					},
					axisLabel : {
						show : false,
						distance : 50
					},
					data : gaugeData,
					title : {
						fontSize : 14
					},
					detail : {
						width : 50,
						height : 14,
						fontSize : 14,
						color : 'auto',
						borderColor : 'auto',
						borderRadius : 20,
						borderWidth : 1,
						formatter : '{value}%'
					}
				} ]
			};
			setInterval(function() {
				gaugeData[0].value = 12.12;
				gaugeData[1].value = 55.55;
				gaugeData[2].value = 23.33;
				myChart.setOption({
					series : [ {
						data : gaugeData,
						pointer : {
							show : false
						}
					} ]
				});
			}, 2000);

			if (option && typeof option === 'object') {
				myChart.setOption(option);
			}
		</script>


		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>
