<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<%@ page import="com.example.inout.domain.InOut"%>
<%@ page import="com.example.common.constant.SessionConstant"%>
<%
	InOut inout = (InOut) session.getAttribute(SessionConstant.SESSION_STOCK_INOUTBOUND_LINE);
%>

<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/warehouse.css"
	rel="stylesheet" type="text/css">
<title>出荷画面（確認）</title>
</head>
<body>
	<header>
		<h1>ぬる商事 倉庫</h1>
	</header>
	<form method="post" action="complete">
		<p>
			以下の在庫商品を数量分、出荷します。<br> よろしいですか？
		</p>
		<br>
		<table>
			<tr>
				<th>商品コード</th>
				<td><%=inout.getCode()%></td>
			</tr>
						<tr>
				<th>数量</th>
				<td><%=inout.getQuantity()%></td>
			</tr>

		</table>
		<div>
			<br>
			<input type="submit" value="戻る" onclick="history.back(); return false;" />
			<input type="submit" value="登録" /> <br>
			<br> <a href="<%=request.getContextPath()%>/stock">倉庫メニューへ</a>
		</div>
	</form>
	<footer>
		<address>Copyright(C)20xx ぬる商事 Allright Reserved.</address>
	</footer>
</body>
</html>
