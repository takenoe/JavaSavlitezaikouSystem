<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<%@ page import="com.example.goods.domain.Goods"%>
<%@ page import="com.example.common.constant.SessionConstant"%>
<%
	Goods goods = (Goods) session.getAttribute(SessionConstant.SESSION_GODDS);
%>

<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/warehouse.css"
	rel="stylesheet" type="text/css">
<title>商品削除画面（完了）</title>
</head>
<body>
	<header>
		<h1>ぬる商事 本社</h1>
	</header>
	<form method="post" action="input">
		<p>以下の商品を削除しました。</p>
		<br>
		<table>
			<tr>
				<th>商品コード</th>
				<td>	<%=goods.getCode()%></td>
			</tr>
			<tr>
				<th>商品名</th>
				<td>	<%=goods.getName()%></td>
			</tr>
			<tr>
				<th>価格</th>
				<td>	<%=goods.getPrice()%></td>
			</tr>
		</table>
		<div>
			<br> <input type="submit" value="了解" /><br> <br>
			<a href="<%=request.getContextPath()%>/goods">本社メニューへ</a>
		</div>
	</form>
	<footer>
		<address>Copyright(C)20xx ぬる商事 Allright Reserved.</address>
	</footer>
</body>
<%
	request.getSession().removeAttribute(SessionConstant.SESSION_GODDS);
%>
</html>
