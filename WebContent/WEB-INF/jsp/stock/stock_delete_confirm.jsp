<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<%@ page import="com.example.stock.domain.Stock"%>
<%@ page import="com.example.common.constant.SessionConstant"%>
<%
	Stock stock = (Stock) session.getAttribute(SessionConstant.SESSION_STOCK);
%>

<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/warehouse.css"
	rel="stylesheet" type="text/css">
<title>在庫商品削除画面（確認）</title>
</head>
<body>
	<header>
		<h1>ぬる商事 倉庫</h1>
	</header>
	<form method="post" action="complete">
		<p>
			以下の商品を削除します。<br> よろしいですか？
		</p>
		<table>
			<tr>
				<th>商品コード</th>
				<td>	<%=stock.getCode()%></td>
			</tr>
		</table>
		<div>
			<br> <input type="submit" value="戻る" onclick="history.back(); return false;" />
			<input type="submit" value="削除" /> <br>
			<br> <a href="<%=request.getContextPath()%>/stock">倉庫メニューへ</a>
		</div>
	</form>
	<footer>
		<address>Copyright(C)20xx ぬる商事 Allright Reserved.</address>
	</footer>
</body>
</html>
