<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<%@ page import="java.util.List"%>
<%@ page import="com.example.common.constant.SessionConstant"%>
<%
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
<title>在庫商品削除画面（入力）</title>
</head>
<body>
	<header>
		<h1>ぬる商事 倉庫</h1>
	</header>
	<form method="post" action="confirm">
		<div>
			<%
				if (errors != null) {
					for (String error : errors) {
						out.print("<p>");
						out.print(error);
						out.println("</p>");
					}
				}
			%>

			<ul>
				<li>
					<label>
						<span>商品コード</span>
						<input type="text" name="code" placeholder="数字を入力" />
					</label>
				</li>
			</ul>

			<br>
			<input type="submit" value="確認" /><br>
			<br> <a href="<%=request.getContextPath()%>/stock">倉庫メニューへ</a>
		</div>
	</form>
	<footer>
		<address>Copyright(C)20xx ぬる商事 Allright Reserved.</address>
	</footer>
</body>
</html>
