<%--  --------------------------- --%>
<%--  프로그램명       :  update.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:set var="id"  value="${uid}" scope="session"/>
<c:if test="${empty id }"><c:redirect url="login.jsp"/></c:if>
<sql:update dataSource="jdbc/OracleDB">
          update member
          set    m_pwd=?, m_phone=?, m_email=?
          where  m_uid=?
          <sql:param value="${param.pwd}"/>
          <sql:param value="${param.tel }"/>
          <sql:param value="${param.email}"/>
          <sql:param value="${id}"/>
</sql:update>
 회원 정보가 수정되었습니다.<p>Programmer : 1505041 권기문
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>