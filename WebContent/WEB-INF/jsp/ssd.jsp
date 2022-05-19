<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh_CN">
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

.card-text {
	margin-bottom: 1.5rem;
}
</style>

<%@ include file="indexcss.jsp"%>

<%@ include file="stepcss.jsp"%>

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
					<div class="step-main">选择视频片段</div>
				</div>
				<div class="step-line step-completed"></div>
				<div class="step-line step-completed"></div>
				<div class="step-line step-completed"></div>
				<div class="step-line step-completed"></div>
				<div class="step step-completed">
					<div class="step-text">2</div>
					<div class="step-main">算法解析</div>
				</div>
				<div class="step-line step-completed"></div>
				<div class="step-line step-completed"></div>
				<div class="step-line"></div>
				<div class="step-line"></div>
				<div class="step">
					<div class="step-text">3</div>
					<div class="step-main">结果统计</div>
				</div>

			</div>
		</div>

		<div class="row">
			<!-- <div class="col-sm-1"></div> -->
			<!-- <div class="col-sm" id="scorediv" style="height: 500px;"></div> -->
			<div class="col-sm-3">
				<div class="card" style="height: 100%;">
					<h5 class="card-title"
						style="text-align: center; margin-top: 25px;">视频帧检测部分结果</h5>
					<hr>
					<div>
					<img class="card-img-top" src="img/s1.png">
					<p class="card-text" style="color:#666;margin-bottom:15px;">截取时间 00：15</p>
					</div>
					<div >
					<img class="card-img-top" src="img/s2.png">
					<p class="card-text" style="color:#666;margin-bottom:15px;">截取时间 00：36</p>
					</div>
					<div>
					<img class="card-img-top" src="img/s3.png" style="margin: auto;">
					<p class="card-text" style="color:#666;margin-bottom:15px;">截取时间 00：39</p>
					</div>
				</div>

			</div>

			<div class="col-sm-9">
				<div class="card" style="height: 100%;">
					<h5 class="card-title"
						style="text-align: center; margin-top: 25px;">SSD指标分析结果</h5>
					<hr>
					<div class="card-body" style="text-align: left;">
						<div style="display: inline-block; width: 57%;">
							<div id="scorediv" style="height: 300px;"></div>

							<h6 class="card-subtitle mb-2 text-muted">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mAP = P-R曲线积分所得 / 5
								(类别数)</h6>
							<p class="card-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次模型表现指标为：78.08%</p>


							<h6 class="card-subtitle mb-2 text-muted">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FPS&nbsp;:&nbsp;每秒模型可处理的图片张数和检测框个数</h6>
							<p class="card-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次模型表现指标为：2.98</p>


						</div>
						<div style="display: inline-block; width: 41%;">
							<p class="card-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次实验选区的指标包括精确率、召回率、F1值、mAP和FPS五个指标。</p>
							
							<h6 class="card-subtitle mb-2 text-muted">精确率 Precision =
								正确被检索的结果/实际被检索的结果</h6>
							<p class="card-text">本次模型表现指标为：95.76%</p>

							<h6 class="card-subtitle mb-2 text-muted">召回率 Recall =
								正确被检索的结果/应该被检索的结果</h6>
							<p class="card-text">本次模型表现指标为：87.94%</p>

							<h6 class="card-subtitle mb-2 text-muted">F-Measure =
								精确率 * 召回率 * 2 / (精确率 + 召回率)</h6>
							<p class="card-text">本次模型表现指标为：0.9</p>

							<a href="#" class="card-link" style="float: right;">查看指标来源和参考依据<<</a>
							<br> <a href="UploadVeo" class="btn btn-outline-primary"
								style="margin-top: 5%;">重新选择视频</a> <a href="Counter"
								class="btn btn-primary" style="float: right; margin-top: 5%;">下一步</a>
						</div>


					</div>
				</div>
			</div>
			<div class="col-sm-1"></div>
		</div>

		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/echarts.js"></script>
		<!-- 得分jsp -->
		<script type="text/javascript">
			var chartDom = document.getElementById('scorediv');
			var scoreChart = echarts.init(chartDom);

			var option;

			option = {
				xAxis : {
					type : 'category',
					data : [ 'Precision', 'Recall', 'F-Measure', 'mAP' ]
				},
				yAxis : {
					type : 'value'
				},
				tooltip : {
					trigger : 'axis',
					axisPointer : {
						type : 'shadow',
						label : {
							show : true
						}
					}
				},
				toolbox : {
					show : true,
					feature : {
						mark : {
							show : true
						},
						dataView : {
							show : true,
							readOnly : false
						},
						magicType : {
							show : true,
							type : [ 'line', 'bar', 'tiled' ]
						},
						restore : {
							show : true
						},
						saveAsImage : {
							show : true
						}
					}
				},
				series : [ {
					name : 'SSD模型评估指标',
					type : 'bar',
					data : [ {
						value : 0.9576,
						itemStyle : {
							color : '#fa983a'
						}
					}, {
						value : 0.8794,
						itemStyle : {
							color : '#eb2f06'
						}
					}, {
						value : 0.9,
						itemStyle : {
							color : '#1e3799'
						}
					}, {
						value : 0.7808,
						itemStyle : {
							color : '#38ada9'
						}
					} ],
					showBackground : true,
					backgroundStyle : {
						color : 'rgba(180, 180, 180, 0.2)'
					}
				} ]
			};

			if (option && typeof option === 'object') {
				scoreChart.setOption(option);
			}
		</script>
		<!-- 
		<script type="text/javascript">
			var dom = document.getElementById("scorediv");
			var myChart = echarts.init(dom);
			var app = {};
			var option;
			const gaugeData = [ {
				value : 75,
				//name : '精确率',
				title : {
					offsetCenter : [ '0%', '-30%' ]
				},
				detail : {
					valueAnimation : true,
					offsetCenter : [ '0%', '-20%' ]
				}
			}, {
				value : 40,
				//name : '召回率',
				title : {
					offsetCenter : [ '0%', '0%' ]
				},
				detail : {
					valueAnimation : true,
					offsetCenter : [ '0%', '10%' ]
				}
			}, {
				value : 60,
				//name : 'FPS',
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
						borderRadius : 10,
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
		-->
		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>
