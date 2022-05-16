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
.pimg {
	width: 115%;
}

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
		<div id="stepdiv" class="row" style="padding-bottom: 3%;">
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
					<div class="step-main">SSD算法解析</div>
				</div>
				<div class="step-line step-completed"></div>
				<div class="step-line step-completed"></div>
				<div class="step-line step-completed"></div>
				<div class="step-line step-completed"></div>
				<div class="step step-completed">
					<div class="step-text">3</div>
					<div class="step-main">结果统计</div>
				</div>

			</div>
		</div>

		<div class="row">
			<!-- <div class="col-sm-1"></div>  -->
			<div class="col-sm" id="piediv" style="height: 300px;"></div>
			<div class="col-sm" style="padding-bottom: 3%;">
				<div class="card" style="height: 100%;">
					<div class="card-body" style="text-align: left;">
						<h5 class="card-title"
							style="text-align: center; margin-bottom: 1.5rem;">SSD模型应用 ·
							结果统计</h5>
						<h6 class="card-subtitle mb-2 text-muted">对于该片段，SSD模型的精确率为12.12%，召回率为55.55%，FPS为23.33。</h6>
						<p></p>
						<p class="card-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;原视频时长为01：00，检测到其中哆啦A梦出现32秒，大雄出现38秒，胖虎出现22秒，小夫出现16秒，静香出现12秒，分析得知本段视频围绕大雄进行展开。</p>
						<a href="#" id="renderPdf" class="card-link"
							style="float: right; color: #666;">下载分析结果<< </a> <br> <a
							href="SSD" class="btn btn-outline-primary"
							style="margin-top: 0.75rem;">上一步</a> <a href="UploadVeo"
							class="btn btn-primary"
							style="float: right; margin-top: 0.75rem;">再来一次 ：D</a>

					</div>
				</div>
			</div>
			<div class="col-sm-1"></div>
		</div>


		<!-- 角色市场占比 饼图 -->
		<script type="text/javascript">
			var dom = document.getElementById("piediv");
			var myChart = echarts.init(dom);
			var app = {};

			var option;

			option = {
				tooltip : {
					trigger : 'item'
				},
				legend : {
					top : '5%',
					left : 'center'
				},
				series : [ {
					name : 'Access From',
					type : 'pie',
					radius : [ '40%', '70%' ],
					avoidLabelOverlap : false,
					itemStyle : {
						borderRadius : 10,
						borderColor : '#fff',
						borderWidth : 2
					},
					label : {
						show : false,
						position : 'center'
					},
					emphasis : {
						label : {
							show : true,
							fontSize : '40',
							fontWeight : 'bold'
						}
					},
					labelLine : {
						show : false
					},
					data : [ {
						value : 204,
						name : 'ドラえもん'
					}, {
						value : 312,
						name : '野比のび'
					}, {
						value : 140,
						name : '刚田武シァィンり'
					}, {
						value : 96,
						name : '骨川スネ夫'
					}, {
						value : 112,
						name : '源 静香'
					} ]
				} ]
			};

			if (option && typeof option === 'object') {
				myChart.setOption(option);
			}
		</script>

		<div class="row">
			<div class="col-sm-1">
				<table class="table table-borderless">
					<tbody>
						<tr>
							<th><img alt="ドラえもん" src="img/duola.jpg" class="pimg">
							</th>
						</tr>
						<tr>
							<th><img alt="野比のび" src="img/dax.jpg" class="pimg"></th>
						</tr>
						<tr>
							<th><img alt="刚田武シァィンり" src="img/panh.jpg" class="pimg">
							</th>
						</tr>
						<tr>
							<th><img alt="骨川スネ夫" src="img/xiaof.jpg" class="pimg">
							</th>
						</tr>
						<tr>
							<th><img alt="源 静香" src="img/jingx.jpg" class="pimg">
							</th>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-sm" id="scatterdiv" style="height: 490px;"></div>
		</div>

		<script type="text/javascript">
			var dom = document.getElementById("scatterdiv");

			var myChart = echarts.init(dom, null, {
				renderer : 'canvas',
				useDirtyRect : false,
			});
			var app = {};

			var option;

			// prettier-ignore
			const hours = [ '00:00', '00:02', '00:04', '00:06', '00:08',
					'00:10', '00:12', '00:14', '00:16', '00:18', '00:20',
					'00:22', '00:24', '00:26', '00:28', '00:30', '00:32',
					'00:34', '00:36', '00:38', '00:40', '00:42', '00:44',
					'00:46', '00:48', '00:50', '00:52', '00:54', '00:56',
					'00:58', '01:00' ];
			// prettier-ignore
			const days = [ 'ドラえもん', '野比のび', '刚田武シァィンり', '骨川スネ夫', '源 静香' ];
			// prettier-ignore
			const data = [ [ 0, 0, 5 ], [ 0, 1, 0 ], [ 0, 2, 9 ], [ 0, 3, 0 ],
					[ 0, 4, 5 ], [ 0, 5, 0 ], [ 0, 6, 0 ], [ 0, 7, 0 ],
					[ 0, 8, 0 ], [ 0, 9, 0 ], [ 0, 10, 8 ], [ 0, 11, 5 ],
					[ 0, 12, 5 ], [ 0, 13, 8 ], [ 0, 14, 5 ], [ 0, 15, 0 ],
					[ 0, 16, 12 ], [ 0, 17, 8 ], [ 0, 18, 5 ], [ 0, 19, 2 ],
					[ 0, 20, 0 ], [ 0, 21, 5 ], [ 0, 22, 0 ], [ 0, 23, 12 ],
					[ 0, 24, 0 ], [ 0, 25, 0 ], [ 0, 26, 2 ], [ 0, 27, 0 ],
					[ 0, 28, 12 ], [ 0, 29, 0 ], [ 0, 30, 0 ], [ 1, 0, 5 ],
					[ 1, 1, 0 ], [ 1, 2, 12 ], [ 1, 3, 8 ], [ 1, 4, 5 ],
					[ 1, 5, 10 ], [ 1, 6, 0 ], [ 1, 7, 5 ], [ 1, 8, 0 ],
					[ 1, 9, 0 ], [ 1, 10, 8 ], [ 1, 11, 0 ], [ 1, 12, 9 ],
					[ 1, 13, 10 ], [ 1, 14, 5 ], [ 1, 15, 11 ], [ 1, 16, 12 ],
					[ 1, 17, 8 ], [ 1, 18, 5 ], [ 1, 19, 10 ], [ 1, 20, 0 ],
					[ 1, 21, 5 ], [ 1, 22, 0 ], [ 1, 23, 0 ], [ 1, 24, 11 ],
					[ 1, 25, 5 ], [ 1, 26, 0 ], [ 1, 27, 12 ], [ 1, 28, 0 ],
					[ 1, 29, 0 ], [ 1, 30, 0 ], [ 2, 0, 0 ], [ 2, 1, 0 ],
					[ 2, 2, 0 ], [ 2, 3, 0 ], [ 2, 4, 0 ], [ 2, 5, 0 ],
					[ 2, 6, 0 ], [ 2, 7, 0 ], [ 2, 8, 0 ], [ 2, 9, 0 ],
					[ 2, 10, 0 ], [ 2, 12, 0 ], [ 2, 12, 0 ], [ 2, 13, 0 ],
					[ 2, 14, 0 ], [ 2, 15, 6 ], [ 2, 16, 0 ], [ 2, 17, 8 ],
					[ 2, 18, 5 ], [ 2, 19, 0 ], [ 2, 20, 6 ], [ 2, 21, 5 ],
					[ 2, 22, 0 ], [ 2, 23, 0 ], [ 2, 24, 0 ], [ 2, 25, 5 ],
					[ 2, 26, 6 ], [ 2, 27, 4 ], [ 2, 28, 7 ], [ 2, 29, 12 ],
					[ 2, 30, 5 ], [ 3, 0, 0 ], [ 3, 1, 0 ], [ 3, 2, 0 ],
					[ 3, 3, 0 ], [ 3, 4, 0 ], [ 3, 5, 0 ], [ 3, 6, 0 ],
					[ 3, 7, 0 ], [ 3, 8, 3 ], [ 3, 9, 7 ], [ 3, 10, 4 ],
					[ 3, 11, 0 ], [ 3, 12, 0 ], [ 3, 13, 0 ], [ 3, 14, 0 ],
					[ 3, 15, 6 ], [ 3, 16, 0 ], [ 3, 17, 0 ], [ 3, 18, 0 ],
					[ 3, 19, 0 ], [ 3, 20, 6 ], [ 3, 21, 0 ], [ 3, 22, 6 ],
					[ 3, 23, 0 ], [ 3, 24, 0 ], [ 3, 25, 0 ], [ 3, 26, 3 ],
					[ 3, 27, 0 ], [ 3, 28, 13 ], [ 3, 29, 0 ], [ 3, 30, 0 ],
					[ 4, 0, 0 ], [ 4, 1, 0 ], [ 4, 2, 10 ], [ 4, 3, 8 ],
					[ 4, 4, 15 ], [ 4, 5, 4 ], [ 4, 6, 0 ], [ 4, 7, 0 ],
					[ 4, 8, 0 ], [ 4, 9, 0 ], [ 4, 10, 0 ], [ 4, 11, 0 ],
					[ 4, 12, 9 ], [ 4, 13, 0 ], [ 4, 14, 0 ], [ 4, 15, 0 ],
					[ 4, 16, 10 ], [ 4, 17, 0 ], [ 4, 18, 0 ], [ 4, 19, 0 ],
					[ 4, 20, 0 ], [ 4, 21, 0 ], [ 4, 22, 0 ], [ 4, 23, 0 ],
					[ 4, 24, 0 ], [ 4, 25, 0 ], [ 4, 26, 0 ], [ 4, 27, 0 ],
					[ 4, 28, 0 ], [ 4, 29, 0 ], [ 4, 30, 0 ], ];
			const title = [];
			const singleAxis = [];
			const series = [];
			days.forEach(function(day, idx) {
				title.push({
					textBaseline : 'middle',
					top : ((idx + 0.5) * 100) / 7 + '%',
					text : day
				});
				singleAxis.push({
					left : 150,
					type : 'category',
					boundaryGap : false,
					data : hours,
					top : (idx * 100) / 7 + 5 + '%',
					height : 100 / 7 - 10 + '%',
					axisLabel : {
						interval : 2
					}
				});
				series.push({
					singleAxisIndex : idx,
					coordinateSystem : 'singleAxis',
					type : 'scatter',
					data : [],
					symbolSize : function(dataItem) {
						return dataItem[1] * 4;
					}
				});
			});
			data.forEach(function(dataItem) {
				series[dataItem[0]].data.push([ dataItem[1], dataItem[2] ]);
			});
			option = {
				tooltip : {
					position : 'top'
				},
				title : title,
				singleAxis : singleAxis,
				series : series
			};

			if (option && typeof option === 'object') {
				myChart.setOption(option);
			}

			window.addEventListener('resize', myChart.resize);
		</script>

		<%@ include file="footer.jsp"%>

		<!-- 下载pdf -->

		<script type="text/javascript" src="html2canvas.js"></script>
		<script type="text/javascript" src="jsPdf.debug.js"></script>
		<script type="text/javascript">
			var downPdf = document.getElementById("renderPdf");

			var stepdiv = document.getElementById("stepdiv");
			var header = document.getElementById("header");
			var footer = document.getElementById("footer");

			downPdf.onclick = function() {

				stepdiv.style.display = "none";
				header.style.display = "none";
				footer.style.display = "none";

				html2canvas(document.body, {
					onrendered : function(canvas) {

						var contentWidth = canvas.width;
						var contentHeight = canvas.height;

						//一页pdf显示html页面生成的canvas高度;
						var pageHeight = contentWidth / 592.28 * 841.89;
						//未生成pdf的html页面高度
						var leftHeight = contentHeight;
						//pdf页面偏移
						var position = 0;
						//a4纸的尺寸[595.28,841.89]，html页面生成的canvas在pdf中图片的宽高
						var imgWidth = 595.28;
						var imgHeight = 592.28 / contentWidth * contentHeight;

						var pageData = canvas.toDataURL('image/jpeg', 1.0);

						var pdf = new jsPDF('', 'pt', 'a4');

						//有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
						//当内容未超过pdf一页显示的范围，无需分页
						if (leftHeight < pageHeight) {
							pdf.addImage(pageData, 'JPEG', 0, 0, imgWidth,
									imgHeight);
						} else {
							while (leftHeight > 0) {
								pdf.addImage(pageData, 'JPEG', 0, position,
										imgWidth, imgHeight)
								leftHeight -= pageHeight;
								position -= 841.89;
								//避免添加空白页
								if (leftHeight > 0) {
									pdf.addPage();
								}
							}
						}

						pdf.save('SSD-report.pdf');
					}
				})

				stepdiv.style.display = "flex";

				header.style.display = "block";
				footer.style.display = "block";

			}
		</script>

	</div>
</body>
</html>
