<%--  --------------------------- --%>
<%--  프로그램명       :  admin_logout.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="aid" value="${aid}" scope="session"/>
<c:choose>
   <c:when test="${aid == null}"><c:redirect url="admin_login.jsp"/></c:when>
   <c:otherwise>
     <c:out    value="관리자는 로그아웃 되었습니다."/><p>
     <c:remove var="aid" scope="session" /> 
   </c:otherwise>
</c:choose>
<p>Programmer : 1505041 권기문
