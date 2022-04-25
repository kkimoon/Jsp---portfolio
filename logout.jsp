<%--  --------------------------- --%>
<%--  프로그램명       :  logout.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="id" value="${uid }" scope="session"/>
<c:choose>
   <c:when test="${id == null }"><c:redirect url="login.jsp"/></c:when>
   <c:otherwise>
      <c:remove var="uid" scope="session"/>
      <c:out value="로그아웃 되었습니다."/><br>
      <c:url value="img/logout.gif" var="img1"/>
         <img src="${img1 }" width="100" height="100">
   </c:otherwise>
</c:choose>
<p>Programmer : 1505041 권기문
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>