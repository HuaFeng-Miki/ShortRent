<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- version :1.0.0
	date:2016.6.1
	author:hevean -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 分页的样式 -->
<style type="text/css">
#pagination {
	margin-top: 10px;
}

#pagination>a {
	border: 1px solid #ccc;
	display: inline-block;
	text-decoration: none;
/*	font-size: 16px;*/
	padding: 6px 6px 6px 6px;
}

#pagination>#num{
	/*	font-size: 16px;*/
	margin-left: 2px;
	margin-right: 2px;
	border: 1px solid #ccc;
	width: 30px;
	padding: 6px 5px 6px 5px;
}
/*
#pagination>#jump {
/*	font-size: 16px;*/
	padding:  6px 6px 6px 6px;
}
*/
</style>
<script type="text/javascript">
<!--
	//全选按钮的响应函数
	function Goto2() {
		var num = document.getElementById("num").value;
		//跳转到相应页面
		window.open('${curPath}?pId='+num, '_self');
	}
//-->
</script>
<c:set value="${requestScope['javax.servlet.forward.request_uri']} " var="curPath"/>
<div id="pagination">
	<c:if test="${pager.currentPageNum>1}">
		<a href="${curPath}?pId=1">首页</a>
	</c:if>
		<c:if test="${pager.currentPageNum>1}">
	<a href="${curPath}?pId=${pager.previous}">上一页</a>
	</c:if>
	第${pager.currentPageNum}页
	<c:if test="${pager.currentPageNum<pager.pageCount}">
		<a href="${curPath}?pId=${pager.next}">下一页</a>
	</c:if>
	<c:if test="${pager.currentPageNum<pager.pageCount}">
		<a href="${curPath}?pId=${pager.pageCount}">尾页</a>
	</c:if>
	跳转到第<input type="text" name="n" id="num" value="${pager.currentPageNum}">页
	<input id="jump" class="btn btn-success" type="button" value="确定" onClick="Goto2()">
	当前${pager.currentPageNum}/${pager.pageCount},共${pager.rowCount}记录
</div>