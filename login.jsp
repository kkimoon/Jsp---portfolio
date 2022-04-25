<%--  --------------------------- --%>
<%--  프로그램명       :  login.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>
	<link href="m3.css" type=text/css rel=stylesheet>
<script language="JavaScript">
   function checkInput() {
	if (document.fname.uid.value == "") {
	    alert("ID를 입력하세요");
	    return;
	}
	if (document.fname.pwd.value == "") {
	    alert("비밀번호를 입력하세요");
	    return;
	} 
	document.fname.submit();
   }
</script>
</head>
<body>
 <p>
 <form  method=post action="login_ok.jsp" name=fname>
 <table width="300" border="1" cellspacing="0" cellpadding="0">
 <tr>
    <td height="28" align="center"><font size=3>회원로그인</font></td>
 </tr>
 </table>
 <table width="300" border="1" cellspacing="0" cellpadding="1">
 <tr> 
    <td width="100" align=center>아 이 디</td>
    <td><input type=text name="uid" size=20 style="width:200"></td>
 </tr>
 <tr> 
    <td align=center>비밀번호</td>
    <td><input type=password name="pwd" size=22 style="width:200"></td>
 </tr>
 <tr height=35 valign=middle>
    <td colspan=2 align=center>
	<input type="button" value="로그인" OnClick="checkInput()">
	<input type="reset"  value="취 소"></td>
 </tr>
 </table>
 <table width="300" border="1" cellspacing="0" cellpadding="1">
 <tr> 
    <td bgcolor="#ffffff" align=center> 
	아이디(ID)와 패스워드를 입력하세요!!!.<p>
        아이디가 없으신 분은 <a href="insert_form.jsp">회원가입
        </a>을 하세요!!!<br></p>
    </td>
  </tr>
</table><p>Programmer : 1505041 권기문
</form>
</body>
</html>
