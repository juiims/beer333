<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body style="font-size: 2.5em; padding: 200px 100px 100px 100px;">
	<c:if test="${!empty result}">
		��û�� ���������� ����Ǿ����ϴ�.
	</c:if>

	<c:if test="${empty result}">
		������� ��û�� ���������� �̷������ �ʾҽ��ϴ�<br>
	</c:if>
</body>
</html>