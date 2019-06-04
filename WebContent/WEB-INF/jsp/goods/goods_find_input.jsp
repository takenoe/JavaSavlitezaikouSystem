<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<%@ page import="java.util.List"%>
<%@ page import="com.example.common.constant.SessionConstant"%>
<%
	//↓使わていない変数があると警告してるのを抑える
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品検索（入力）</title>
</head>
<body>
	<header>
		<h1>ぬる商事 本社</h1>
	</header>
	<form method="post" action="complete">
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
			<br> <a href="<%=request.getContextPath()%>/goods">本社メニューへ</a>
		</div>
	</form>
	<footer>
	<address>Copyright(C)20xx ぬる商事 Allright Reserved.</address>
	</footer>
</body>
</html>