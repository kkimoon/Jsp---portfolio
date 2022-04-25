<%--  --------------------------- --%>
<%--  프로그램명       :  update_form.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:set var="id" value="${uid}" scope="session"/>
<c:if test="${id == null}"><c:redirect url="login.jsp" /></c:if>
<sql:query var="rs1" dataSource="jdbc/OracleDB">
     select * from member where m_uid=?
     <sql:param value="${id}" />
</sql:query>

<c:forEach items="${rs1.rows}" var="rs" >	
     <c:set var="m_uid"    value="${rs.m_uid}" />
     <c:set var="m_pwd"    value="${rs.m_pwd}" />
     <c:set var="m_name"   value="${rs.m_name}" />
     <c:set var="m_ssn"    value="${rs.m_ssn}" />
     <c:set var="m_email"  value="${rs.m_email}" />
     <c:set var="m_phone"  value="${rs.m_phone}" />
</c:forEach>

<html>
<head>
<title>회원정보수정화면</title>
     <link href="m3.css" type=text/css rel=stylesheet>
<head>
<script>
   function checkInput() {
	if(document.mform.pwd.value == "") {
	   alert("비밀번호를 입력하세요.");
	return;
	}
	document.mform.submit();
   }   
</script>
</head>
<body bgcolor="#F7F2E0">
 <p>
 <form name=mform method=post action="update.jsp" >
 <table cellpadding=3 border=1 width=550>
 <tr bgcolor=#7aaad5 height=30>
    <td align=center bgcolor="#0000FF" colspan=2><font color="#ffffff"><b>회원정보 수정</b></font></td>
 </tr>
 <tr>
    <td bgcolor=#eff4f8>&nbsp;회원 성명</td>
    <td><input type=text name="name" size=20 readonly value= "${m_name}"></td>
 </tr>
 <tr>
    <td bgcolor="#eff4f8">&nbsp;주민등록번호</td>
    <td><input type=text name=ssn size=13 value="${m_ssn}" readonly></td>
 </tr>
 <tr>
    <td bgcolor="#eff4f8">&nbsp;회원 id</td>
    <td>${id}</td>
 </tr>
 <tr>
    <td bgcolor="#eff4f8">&nbsp;비밀번호<font color=red>&nbsp; *</font></td>
    <td><input type=password name=pwd size=8 maxlength=15 style="width:80" value="${m_pwd}"></td>
 </tr>
 <tr>
    <td bgcolor="#eff4f8">&nbsp;비밀번호확인<font color=red> &nbsp;*</font></td>
    <td><input type=password name=repwd size=8 maxlength=12 value= "${m_pwd}" style="width:80">&nbsp;비밀번호를 한 번 더 입력해 주세요.</td>
 </tr>
 <tr>
    <td bgcolor="#eff4f8">&nbsp;전화번호<font color=red>&nbsp; *</font></td>
    <td><input type=text name=tel size=12 maxlength=12 value="${m_phone}"></td>
 </tr>
 <tr>
    <td bgcolor="#eff4f8">&nbsp;e-mail<font color=red>&nbsp; *</font></td>
    <td><input type=text name=email size=30 maxlength=30 value="${m_email}"></td>
 </tr>
 <tr bgcolor=#ffffff>
    <td colspan=4>&nbsp;<font color=red>*</font> 표시만 수정할 수 있습니다&nbsp;&nbsp;
    <input type="button" name="modify" value="수 정" OnClick= "checkInput()"></td>
 </tr>
 </table> <p>Programmer : 1505041 권기문
 </form>
</body>
</html>
