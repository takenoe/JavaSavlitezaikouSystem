<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<%@ page import="com.example.common.constant.SessionConstant"%>
<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/warehouse.css"
	rel="stylesheet" type="text/css">
<title>商品管理：メニュー画面</title>
</head>
<body>
	<header>
		<h1>ぬる商事 本社</h1>
	</header>
	<div>
		<ul>
			<li><a href="goods/create/input">商品登録</a></li>
			<li><a href="goods/list">商品一覧</a></li>
			<li><a href="goods/find/input">商品検索</a></li>
			<li><a href="goods/delete/input">商品削除</a></li>
		</ul>
	</div>
	<div>
		<br>
		<a href="<%=request.getContextPath()%>">ぬる商事メインメニューへ</a>
	</div>
	<footer>
		<address>Copyright(C)20xx ぬる商事 Allright Reserved.</address>
	</footer>
</body>
<%
	request.getSession().removeAttribute(SessionConstant.SESSION_GODDS);
	request.getSession().removeAttribute(SessionConstant.SESSION_ERRORS);
%>
</html>