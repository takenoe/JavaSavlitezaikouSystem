<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<%@ page import="java.util.List"%>
<%@ page import="com.example.inout.domain.InOut"%>
<%@ page import="com.example.common.constant.SessionConstant"%>
<%
	@SuppressWarnings("unchecked")
	List<InOut> inoutlist = (List<InOut>) session.getAttribute(SessionConstant.SESSION_INOUTBOUND_HISTORY );
	@SuppressWarnings("unchecked")
	List<String> errors = (List<String>) session.getAttribute(SessionConstant.SESSION_ERRORS);
	session.removeAttribute(SessionConstant.SESSION_INOUTBOUND_HISTORY );
	session.removeAttribute(SessionConstant.SESSION_ERRORS);
%>
<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/warehouse.css"
	rel="stylesheet" type="text/css">
<title>入出荷履歴画面</title>
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
			<th>No.</th>
			<th>入出荷</th>
			<th>商品コード</th>
			<th>数量</th>
		</tr>
		<%
			for (InOut inout : inoutlist) {
		%>
		<tr>
			<td><%=inout.getNo()%></td>
			<td><%=inout.getType()%></td>
			<td><%=inout.getCode()%></td>
			<td><%=inout.getQuantity()%></td>
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