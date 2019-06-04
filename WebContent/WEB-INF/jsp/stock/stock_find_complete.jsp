<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<%@ page import="java.util.List"%>
<%@ page import="com.example.stock.domain.Stock"%>
<%@ page import="com.example.common.constant.SessionConstant"%>
<%
	Stock stock = (Stock) session.getAttribute(SessionConstant.SESSION_STOCK);
	@SuppressWarnings("unchecked")
	List<String> errors = (List<String>) session.getAttribute(SessionConstant.SESSION_ERRORS);
	session.removeAttribute(SessionConstant.SESSION_ERRORS);
%>
<head>
	<meta charset="utf-8">
	<link href="${pageContext.request.contextPath}/css/reset.css"
		rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/warehouse.css"
		rel="stylesheet" type="text/css">
	<title>在庫検索画面（完了）</title>
</head>
<body>
	<header>
		<h1>ぬる商事 倉庫</h1>
	</header>
	<form method="post" action="input">
		<table>
			<tr>
				<th>商品コード</th>
				<td><%=stock.getCode()%></td>
			</tr>
			<tr>
				<th>在庫数</th>
				<td><%=stock.getQuantity()%></td>
			</tr>

		</table>
		<div>
			<br> <input type="submit" value="戻る" /><br> <br> <a
				href="<%=request.getContextPath()%>/stock">倉庫メニューへ</a>
		</div>
		</form>
</body>
</html>