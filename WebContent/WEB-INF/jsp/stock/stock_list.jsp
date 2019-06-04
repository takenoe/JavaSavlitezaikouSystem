<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<%@ page import="java.util.List"%>
<%@ page import="com.example.stock.domain.Stock"%>
<%@ page import="com.example.common.constant.SessionConstant"%>
<%
	@SuppressWarnings("unchecked")
	List<Stock> stockList = (List<Stock>) session.getAttribute(SessionConstant.SESSION_STOCK_LIST);
	@SuppressWarnings("unchecked")
	List<String> errors = (List<String>) session.getAttribute(SessionConstant.SESSION_ERRORS);
	session.removeAttribute(SessionConstant.SESSION_STOCK_LIST);
	session.removeAttribute(SessionConstant.SESSION_ERRORS);
%>
<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/warehouse.css"
	rel="stylesheet" type="text/css">
<title>在庫一覧画面</title>
</head>
<body>
	<header>
		<h1>ぬる商事 倉庫</h1>
	</header>
	<%
		if (errors != null) {
			for (String error : errors) {
				out.print("<div><p>");
				out.print(error);
				out.println("</p></div>");
			}
		} else {
	%>
	<table>
		<tr>
			<th>商品コード</th>
			<th>在庫数</th>
		</tr>
		<%
				for (Stock stock : stockList) {
		%>
		<tr>
			<td><%=stock.getCode()%></td>
			<td><%=stock.getQuantity()%></td>
		</tr>
		<%
				}
			}
		%>
	</table>
	<div>
		<br>
		<a href="<%=request.getContextPath()%>/stock">倉庫メニューへ</a>
	</div>
	<footer>
		<address>Copyright(C)20xx ぬる商事 Allright Reserved.</address>
	</footer>
</body>
</html>