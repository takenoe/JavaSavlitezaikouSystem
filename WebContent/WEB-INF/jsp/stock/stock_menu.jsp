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
<title>在庫管理：メニュー画面</title>
</head>
<body>
	<header>
		<h1>ぬる商事 倉庫</h1>
	</header>
	<div>
		<ul>
			<li><a href="stock/inbound/input">入荷</a></li>
			<li><a href="stock/outbound/input">出荷</a></li>
			<li><a href="inoutbound/history">入出荷履歴</a></li>
			<li><a href="stock/list">在庫商品一覧</a></li>
			<li><a href="stock/find/input">在庫商品検索</a></li>
			<li><a href="stock/create/input">在庫商品登録</a></li>
			<li><a href="stock/delete/input">在庫商品削除</a></li>
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