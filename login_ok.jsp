<%--  --------------------------- --%>
<%--  프로그램명       :  login_ok.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:set var="srow" value="0" />
<c:set var="mrow" value="1" />
<sql:query var="rs" dataSource="jdbc/OracleDB" maxRows="${mrow }" startRow="${srow }">
   select m_uid, m_pwd from member where m_uid=?
   <sql:param value="${param.uid }"/>
</sql:query>
<c:forEach items="${rs.rows }" var="rs">
   <c:set var="mpwd" value="${rs.m_pwd }"/>
</c:forEach>

<c:choose>
        <c:when test="${param.pwd == mpwd }">로그인  성공!!!<p>
             <sql:update dataSource="jdbc/OracleDB">
                         update member
                         set    m_visit=m_visit+1, m_lastvisit=sysdate
                         where  m_uid = ?
                      <sql:param value="${param.uid }"/>
                   </sql:update>
                   <c:set var="uid" value="${param.uid }" scope="session"/>
                   <c:url value="img/love.gif" var="ok1" />
                             <img src="${ok1 }" width="100" height="100">
                </c:when>
                <c:otherwise>로그인  실패!!!<p>
                      <c:url value="img/warning.gif" var="ok2"/>
                           <img src="${ok2 }" width="100" height="100">
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