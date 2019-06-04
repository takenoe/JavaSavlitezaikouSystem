<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<%@ page import="java.util.List"%>
<%@ page import="com.example.goods.domain.Goods"%>
<%@ page import="com.example.common.constant.SessionConstant"%>
<%
	@SuppressWarnings("unchecked")
	List<Goods> goodsList = (List<Goods>) session.getAttribute(SessionConstant.SESSION_GODDS_LIST);
	@SuppressWarnings("unchecked")
	List<String> errors = (List<String>) session.getAttribute(SessionConstant.SESSION_ERRORS);
	session.removeAttribute(SessionConstant.SESSION_GODDS_LIST);
	session.removeAttribute(SessionConstant.SESSION_ERRORS);
%>
<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/warehouse.css"
	rel="stylesheet" type="text/css">
<title>商品一覧画面</title>
</head>
<body>
	<header>
		<h1>ぬる商事 本社</h1>
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
			<th>商品名</th>
			<th>価格</th>
		</tr>
		<%
				for (Goods goods : goodsList) {
		%>
		<tr>
			<td><%=goods.getCode()%></td>
			<td><%=goods.getName()%></td>
			<td><%=goods.getPrice()%></td>
		</tr>
		<%
				}
			}
		%>
	</table>
	<div>
		<br>
		<a href="<%=request.getContextPath()%>/goods">本社メニューへ</a>
	</div>
	<footer>
		<address>Copyright(C)20xx ぬる商事 Allright Reserved.</address>
	</footer>
</body>
</html>