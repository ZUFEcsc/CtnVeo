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
		<div class="row" style="padding-bottom: 3%;">
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
				<div class="step-line step-completed"></div>
				<div class="step step-completed">
					<div class="step-text">3</div>
					<div class="step-main">3.结果统计</div>
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
						<p class="card-text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;原视频时长为00：50，检测到其中哆啦A梦出现X秒，大雄出现X秒，胖虎出现X秒，小夫出现X秒，静香出现X秒，分析得知本段视频围绕大雄进行展开。</p>
						<a href="#" id="renderPdf" class="card-link"
							style="float: right; color: #666;">下载分析结果<< </a> <br> <a
							href="SSD" class="btn btn-outline-primary"
							style="margin-top: 0.75rem;">上一步</a> <a href="#"
							class="btn btn-primary"
							style="float: right; margin-top: 0.75rem;">下一步</a>

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
						value : 1048,
						name : 'ドラえもん'
					}, {
						value : 735,
						name : '野比のび'
					}, {
						value : 580,
						name : '刚田武シァィンり'
					}, {
						value : 484,
						name : '骨川スネ夫'
					}, {
						value : 300,
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
			<div class="col-sm" id="scatterdiv" style="height: 330px;"></div>
		</div>

		<script type="text/javascript">
			var dom = document.getElementById("scatterdiv");
			var myChart = echarts.init(dom);
			var app = {};

			var option;

			// prettier-ignore
			const hours = [ '12a', '1a', '2a', '3a', '4a', '5a', '6a', '7a',
					'8a', '9a', '10a', '11a', '12p', '1p', '2p', '3p', '4p',
					'5p', '6p', '7p', '8p', '9p', '10p', '11p' ];
			// prettier-ignore
			const days = [ 'ドラえもん', '野比のび', '刚田武シァィンり', '骨川スネ夫', '源 静香' ];
			// prettier-ignore
			const data = [ [ 0, 0, 5 ], [ 0, 1, 1 ], [ 0, 2, 0 ], [ 0, 3, 0 ],
					[ 0, 4, 0 ], [ 0, 5, 0 ], [ 0, 6, 0 ], [ 0, 7, 0 ],
					[ 0, 8, 0 ], [ 0, 9, 0 ], [ 0, 10, 0 ], [ 0, 11, 2 ],
					[ 0, 12, 4 ], [ 0, 13, 1 ], [ 0, 14, 1 ], [ 0, 15, 3 ],
					[ 0, 16, 4 ], [ 0, 17, 6 ], [ 0, 18, 4 ], [ 0, 19, 4 ],
					[ 0, 20, 3 ], [ 0, 21, 3 ], [ 0, 22, 2 ], [ 0, 23, 5 ],
					[ 1, 0, 7 ], [ 1, 1, 0 ], [ 1, 2, 0 ], [ 1, 3, 0 ],
					[ 1, 4, 0 ], [ 1, 5, 0 ], [ 1, 6, 0 ], [ 1, 7, 0 ],
					[ 1, 8, 0 ], [ 1, 9, 0 ], [ 1, 10, 5 ], [ 1, 11, 2 ],
					[ 1, 12, 2 ], [ 1, 13, 6 ], [ 1, 14, 9 ], [ 1, 15, 11 ],
					[ 1, 16, 6 ], [ 1, 17, 7 ], [ 1, 18, 8 ], [ 1, 19, 12 ],
					[ 1, 20, 5 ], [ 1, 21, 5 ], [ 1, 22, 7 ], [ 1, 23, 2 ],
					[ 2, 0, 1 ], [ 2, 1, 1 ], [ 2, 2, 0 ], [ 2, 3, 0 ],
					[ 2, 4, 0 ], [ 2, 5, 0 ], [ 2, 6, 0 ], [ 2, 7, 0 ],
					[ 2, 8, 0 ], [ 2, 9, 0 ], [ 2, 10, 3 ], [ 2, 11, 2 ],
					[ 2, 12, 1 ], [ 2, 13, 9 ], [ 2, 14, 8 ], [ 2, 15, 10 ],
					[ 2, 16, 6 ], [ 2, 17, 5 ], [ 2, 18, 5 ], [ 2, 19, 5 ],
					[ 2, 20, 7 ], [ 2, 21, 4 ], [ 2, 22, 2 ], [ 2, 23, 4 ],
					[ 3, 0, 7 ], [ 3, 1, 3 ], [ 3, 2, 0 ], [ 3, 3, 0 ],
					[ 3, 4, 0 ], [ 3, 5, 0 ], [ 3, 6, 0 ], [ 3, 7, 0 ],
					[ 3, 8, 1 ], [ 3, 9, 0 ], [ 3, 10, 5 ], [ 3, 11, 4 ],
					[ 3, 12, 7 ], [ 3, 13, 14 ], [ 3, 14, 13 ], [ 3, 15, 12 ],
					[ 3, 16, 9 ], [ 3, 17, 5 ], [ 3, 18, 5 ], [ 3, 19, 10 ],
					[ 3, 20, 6 ], [ 3, 21, 4 ], [ 3, 22, 4 ], [ 3, 23, 1 ],
					[ 4, 0, 1 ], [ 4, 1, 3 ], [ 4, 2, 0 ], [ 4, 3, 0 ],
					[ 4, 4, 0 ], [ 4, 5, 1 ], [ 4, 6, 0 ], [ 4, 7, 0 ],
					[ 4, 8, 0 ], [ 4, 9, 2 ], [ 4, 10, 4 ], [ 4, 11, 4 ],
					[ 4, 12, 2 ], [ 4, 13, 4 ], [ 4, 14, 4 ], [ 4, 15, 14 ],
					[ 4, 16, 12 ], [ 4, 17, 1 ], [ 4, 18, 8 ], [ 4, 19, 5 ],
					[ 4, 20, 3 ], [ 4, 21, 7 ], [ 4, 22, 3 ], [ 4, 23, 0 ] ];
			const title = [];
			const singleAxis = [];
			const series = [];
			days.forEach(function(day, idx) {
				title.push({
					textBaseline : 'middle',
					top : ((idx + 0.5) * 100) / 5 + '%',
					text : day
				});
				singleAxis.push({
					left : 150,
					type : 'category',
					boundaryGap : false,
					data : hours,
					top : (idx * 100) / 5 + 5 + '%',
					height : 100 / 5 - 10 + '%',
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
		</script>

		<%@ include file="footer.jsp"%>
		
		<!-- 下载pdf -->

		<script type="text/javascript" src="html2canvas.js"></script>
		<script type="text/javascript" src="jsPdf.debug.js"></script>
		<script type="text/javascript">

      var downPdf = document.getElementById("renderPdf");

      downPdf.onclick = function() {
          html2canvas(document.body, {
              onrendered:function(canvas) {

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
                  var imgHeight = 592.28/contentWidth * contentHeight;

                  var pageData = canvas.toDataURL('image/jpeg', 1.0);

                  var pdf = new jsPDF('', 'pt', 'a4');

                  //有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
                  //当内容未超过pdf一页显示的范围，无需分页
                  if (leftHeight < pageHeight) {
                      pdf.addImage(pageData, 'JPEG', 0, 0, imgWidth, imgHeight );
                  } else {
                      while(leftHeight > 0) {
                          pdf.addImage(pageData, 'JPEG', 0, position, imgWidth, imgHeight)
                          leftHeight -= pageHeight;
                          position -= 841.89;
                          //避免添加空白页
                          if(leftHeight > 0) {
                              pdf.addPage();
                          }
                      }
                  }

                  pdf.save('SSD-report.pdf');
              }
          })
      }
    </script>
		
	</div>
</body>
</html>
