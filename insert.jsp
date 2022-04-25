<%--  --------------------------- --%>
<%--  프로그램명       :  insert.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="s1" value="${param.ssn1 }-${param.ssn2 }"/>
<c:set var="t1" value="${param.tel1 }-${param.tel2 }-${param.tel3 }"/>

<sql:query var="rs" dataSource="jdbc/OracleDB">
     select m_uid from member where m_uid=?
     <sql:param value="${param.uid }"/>
</sql:query>

<c:forEach items="${rs.rows }" var="rs">
   <c:set var="muid" value="${rs.m_uid }"/>
   <c:set var="mpwd" value="${rs.m_pwd }"/>
</c:forEach>

<c:choose>
   <c:when test="${not empty muid}">
       <c:url value="img/warning.gif" var="img1"/>
       <img src="${img1 }" width="100" height="100">
              회원가입은 실패했습니다...
              다시 한번 시도해 보시기 바랍니다.
   </c:when>
   <c:otherwise>
         <sql:update dataSource="jdbc/OracleDB">
             insert into member
             (m_uid, m_pwd, m_name, m_ssn, m_email, m_phone)
             values
             (?,?,?,?,?,?)
             <sql:param value="${param.uid }"/>
             <sql:param value="${param.pwd }"/>
             <sql:param value="${param.name}"/>
             <sql:param value="${s1}"/>
             <sql:param value="${param.email}"/>
             <sql:param value="${t1}"/>
         </sql:update>
         
         <c:set var="uid" value="{param.uid}" scope="session" />
         <c:url value="img/cong.gif" var="img2"/>
         <img src="${img2 }" width="100" height="100">
                  회원 가입을 축하합니다!!!
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