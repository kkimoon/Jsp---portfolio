<%--  --------------------------- --%>
<%--  프로그램명       :  left_menu.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원관리 메뉴</title>
     <link href="m3.css" type=text/css rel=stylesheet>
</head>
<body>
  <table width=100 border=1 cellspacing=1 cellpadding=0>
    <tr bgcolor="pink" align="center">
      <td valign="center"><font size=3><b>회  원  관  리</b></font></td>
    </tr>
  </table>
  <table width=100 cellspacing=0 cellpadding=0 border="1">
    <tr bgcolor="#F2F5A9">
      <td align=left><font color=#0101DF><b>회  원    메  뉴</b></font></td>
    </tr>
    <tr>
      <td align=right><a href="login.jsp" target=right>로그인</a></td>
    </tr>
    <tr>
      <td align=right><a href="insert_form.jsp" target=right>회원가입</a></td>
    </tr>
    <tr>
      <td align=right><a href="update_form.jsp" target=right>회원정보수정</a></td>
    </tr>
    <tr>
      <td align=right><a href="delete.jsp" target=right>회원탈퇴</a></td>
    </tr>
    <tr>
      <td align=right><a href="logout.jsp" target=right>로그아웃</a></td>
    </tr>
  </table>
  <table width=100 cellspacing=0 cellpadding=0 border="1">
    <tr bgcolor="#F2F5A9">
      <td align=left><font color=#0101DF><b>관리자 메뉴</b></font></td>
    </tr>
    <tr>
      <td align=right><a href="admin_login.jsp" target=right>로그인</a></td>
    </tr>
    <tr>
      <td align=right><a href="member_list.jsp" target=right>회원명부 출력</a></td>
    </tr>
      <td align=right><a href="admin_logout.jsp" target=right>로그아웃</a></td>
    </tr>
  </table>
</body>
</html>