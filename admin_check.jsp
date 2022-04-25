<%--  --------------------------- --%>
<%--  프로그램명       :  admin_check.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="aid" value="admin" />
<c:set var="apw" value="12345" />
<c:if test="${param.aid  != aid}"><c:redirect url="admin_login.jsp" /></c:if>
<c:if test="${param.apwd != apw}"><c:redirect url="admin_login.jsp" /></c:if>
<c:out value="관리자 로그인 성공!!!"/><p>
<c:out value="메뉴에서 회원명부를 출력할 수 있습니다."/>  
<c:set var="aid" value="${aid}" scope="session" />
<p>Programmer : 1505041 권기문