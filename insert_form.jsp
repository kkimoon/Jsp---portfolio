<%--  --------------------------- --%>
<%--  프로그램명       :  insert_form.jsp --%>
<%--  작성일             :  2020/12/10 --%>
<%--  작성자             :  Kimoon Kwon --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입입력폼</title>
   <link href="m3.css" type=text/css rel=stylesheet>
<script language="JavaScript">
  var msg;
  function form_check() {
     var form = document.form_name;
     msg = "== 가입시 오류 사항 ==\n\n";
     if(form.name.value=="")
        msg += "성명을 입력하세요.\n\n";
     if(form.uid.value=="")
        msg += "회원ID를 입력하세요.\n\n";
     else if(form.uid.value.length < 5)
        msg += "회원ID는 5자 이상 입력해야 합니다.\n\n";
     else if(!a_or_d(form.uid.value))
        msg += "회원ID는 영문이나 숫자로 입력하세요.\n\n";
     if(form.pwd.value=="")
        msg += "비밀번호를 입력하세요.\n\n";
     else if(form.pwd.value.length < 5)
        msg += "비밀번호는 4자 이상 입력해야 합니다.\n\n";
     else if(!a_or_d(form.pwd.value))
        msg += "비밀번호는 영문이나 숫자로 입력하세요.\n\n";
     if(form.pwd.value != form.repwd.value)
        msg += "비밀번호와 비밀번호 확인 값이 서로 다릅니다.\n\n";
     if(form.ssn1.value == "")
        msg += "주민등록번호를 입력하세요.\n\n";

     if(msg == "== 가입시 오류 사항 ==\n\n") { 
        form.submit();
     } else {
        alert(msg);
        return;
     }
   }

   function a_or_d(str)  {	// 숫자와 영문 입력 체크
     lower_str = str.toLowerCase();

     for(i=0; i<lower_str.length; i++) {
        ch = lower_str.charAt(i);
        if(((ch < 'a') || (ch > 'z')) && ((ch < '0') ||(ch > '9')))
          return 0;
        }
     return 1;
   }

   function openuid_check() {
     if (document.form_name.uid.value == "") {
         alert("아이디를 입력하세요");
         return;
     }
     url = "id_check.jsp?uid=" + document.form_name.uid.value ;
     open(url, "id_repeat_check", "width=300, height=220");
   }
</script>
</head>
<body>
<p><table border=1 width=550 height=30 bordercolor=black>
<tr>
   <td align=center bgcolor="pink"><font size=3><b>회 원 가 입</b></font></td>
</tr>
</table><br>
<form method=post action="insert.jsp" name=form_name >
<table border=1 cellpadding=2 cellspacing=0 width=550>
<tr>
   <td width=100 bgcolor=#F5F6CE>회원 성명<font color=red>* </font></td>
   <td width=450 align=left>
      <input type=text name=name size=20 value="">성명은 빈칸없이 입력하세요.</td>
</tr>
<tr>
   <td bgcolor=#F5F6CE>주민등록번호<font color=red> *</font></td>
   <td align=left>
      <input type=text name=ssn1 size=6  value=""> - 
      <input type=text name=ssn2 size=7  value="">
   </td>
</tr>
<tr>
   <td bgcolor=#F5F6CE>회원 id<font color=red> *</font></td>
   <td align=absmiddle align=left>
      <input type=text     name=uid      size=10 maxlength=15 >
      <input type="button" name="id_chk" value="ID중복 체크" OnClick="openuid_check(document.form_name.uid.value)"> 5자 이상의 영문이나 숫자로 입력하세요.</td>
</tr>
<tr>
   <td bgcolor=#F5F6CE>비밀번호<font color=red> *</font></td>
   <td align=left>
      <input type=password name=pwd size=8 maxlength=12">&nbsp;5자 이상의 영문이나 숫자로 입력하세요.
   </td>
</tr>
<tr>
   <td bgcolor=#F5F6CE>비밀번호확인<font color=red> *</font></td>
   <td align=left>
      <input type=password name=repwd size=8 maxlength=12 value=""> &nbsp다시 한번 입력해 주세요. </td>
</tr>
<tr>
   <td bgcolor=#F5F6CE>전화번호</td>
   <td align=left>
      <input type=text name=tel1 size=3 maxlength=3 value=""> - 
      <input type=text name=tel2 size=4 maxlength=4 value=""> -
      <input type=text name=tel3 size=4 maxlength=4 value="">
   </td>
</tr>
<tr>
   <td bgcolor=#F5F6CE> e-mail</td>
   <td valign=middle align=left>
      <input type=text name=email size=30 maxlength=30 value=""></td>
</tr>
<tr>
   <td colspan=3 align=left><font color=red> * </font><font color= black>표시항목은 반드시 입력하십시요.</font>&nbsp;&nbsp;
      <input type="button" name="formcheck" value="가   입" OnClick="form_check()">
      <input type="reset"  value="취  소">
   </td>
</tr>
</table></form><p>Programmer : 1505041 권기문
</body>
</html>
