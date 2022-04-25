<%--  --------------------------- --%>
<%--  프로그램명       :  member_list.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:set var="id" value="${aid }" scope="session"/>
<c:if test="${id == null }"><c:redirect url="admin_login.jsp"/></c:if>

<!-- 페이지 네비게이션 변수 선언 -->
<c:set var="pageSize"    value="5"/>
<c:set var="grpSize"     value="5"/>
<c:set var="pageNUM"     value="1"/>
<c:set var="pageCount"   value="1"/>
<c:set var="skipRow"     value="1"/>
<c:set var="dbCount"/>

<sql:query var="rs1" dataSource="jdbc/OracleDB">
    select m_uid from member
</sql:query>
<c:set var="dbCount" value="${rs1.rowCount}"/>

<!--  총 페이지 수 계산 -->
<c:choose>
    <c:when test="${dbCount % pageSize == 0 }">
        <c:set var="pageCount" value="${dbCount / pageSize }"/>
    </c:when>
    <c:otherwise>
        <c:set var="pageCount" value="${dbCount / pageSize + 1 }"/>
    </c:otherwise>
</c:choose>

<!-- 요청페이지 번호 구하기  -->
<c:if test="${param.pageNUM != null }">
    <c:set var="pageNUM" value="${param.pageNUM }"/>
    <c:set var="skipRow" value="${(pageNUM - 1) * pageSize + 1 }"/>
</c:if>

<sql:query var="rs" dataSource="jdbc/OracleDB" startRow="${skipRow - 1 }" maxRows="${pageSize }">
    SELECT   m_uid, m_name, m_phone, m_email, m_visit
    FROM     member
    ORDER BY m_regdate desc
</sql:query>

<table cellpadding=3 border=1 width=550>
 <tr height=30>
   <th width=420 align=center><font size=3><b>회원명부</b></font></th>
   <th width=130>총회원  : ${dbCount }명</th>
 </tr>
</table>
<table cellpadding=3 border=1 width=550>
 <tr bgcolor=#9FF781 align=center>
   <th width="40">순번</th>
   <th width="60">아이디</th>
   <th width="60">이름</th>
   <th width="100">전화번호</th>
   <th width="80">email주소</th>
   <th width="80">방문횟수</th>
 </tr>

 <!-- 현재 페이지에 해당하는 회원만 출력 -->
 <c:if test="${param.pageNUM != null }">
    <c:set var="i" value="${param.pageNUM }"/>
    <c:set var="dbCount" value="${(dbCount -(i-1) * pageSize) }"/>
 </c:if>
 <c:forEach var="rs1" items="${rs.rows }" varStatus="vs">
  <tr bgcolor="#ffffff">
     <td align=center>${dbCount - (vs.count)+1 }</td>
     <td>${rs1.m_uid }</td>
     <td>${rs1.m_name }</td>
     <td>${rs1.m_phone }</td>
     <td>${rs1.m_email }</td>
     <td align=center>${rs1.m_visit }</td>
  </tr>
 </c:forEach>
 
 <!-- 페이지 네비게이션 -->
  <c:set var="temp" value="${(pageNUM - 1) % grpSize }"/>
  <c:set var="startPage" value="${pageNUM - temp }"/>
  <table width=500 border=0>
  <tr bgcolor=ffffff>
      <td width=360 align=center height=50>
      <c:if test="${(startPage - grpSize) > 0 }">
       <a href='member_list.jsp?pageNUM=${startPage - 1 }'>[이전]</a>
      </c:if>
      
      <c:forEach var="i" begin="${startPage }" end="${(startPage+grpSize) - 1 }" step="1">
        <c:choose>
           <c:when test="${i == pageNUM }">&nbsp;${i }&nbsp;</c:when>
           <c:when test="${i > pageCount}">
           <c:set var="i" value="${(startPage+grpSize) - 1 }"/></c:when>
           <c:otherwise>
               <a href='member_list.jsp?pageNUM=${i }'> [${i }] </a>
           </c:otherwise>
        </c:choose>
      </c:forEach>
 
      
      <c:if test="${(startPage + grpSize) <= pageCount }">
         <a href='member_list.jsp?pageNUM=${startPage+grpSize }'>[다음]</a>
      </c:if>
      </td>
      </tr>
</table>
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