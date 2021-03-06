<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	background: #5c7bd9;
	border-color: #5c7bd9;
}

/*.step-completed > .step-main {
    color: #2f318e;
}*/
.step-completed>.step-circle {
	background-color: #2f318e;
}

.step-completed.step-line {
	background-color: #5c7bd9;
}
</style>