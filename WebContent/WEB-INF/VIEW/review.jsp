<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${empty review}">
		<h3>ȸ���� ���� ������ �������� �ʽ��ϴ�.</h3>
	</c:if>

	<c:if test="${!empty review}">
		<h3> �ش� ȸ���� �ۼ��� ���� ����Դϴ�. </h3>
		<c:forEach items="${review}" var="review">
			${review.m_no}    ${review.review}  	<br>
		</c:forEach>
	</c:if>
</body>
</html>