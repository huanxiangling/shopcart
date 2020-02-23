<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
 	request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
  <head>
  	<meta charset="UTF-8">
    <style type="text/css">
      body{ background-image:url("${path}/image/2.jpg");background-repeat:repeat }
	  
	  span{ font-size:30px; color:red; font-weight:bolder;margin-left:200px }
      .f{ width:150px; height:70px}
	    
	  .d{ text-align:center; word-spacing:20px;width:70%}
      img{ border:none }
	  
      td.TableBody1{background-color: #FFFFFF;line-height : normal ;}
      td.TableBody2{background-color: #E4F3FF;line-height : normal ;}
      .tableBorder1{width:97%;border: 1px; background-color: #AFB2C4;}
    </style>
  </head>
  <body>&nbsp;  
   
 <!-- Title --><!--  Menu Bar  -->
    
     <jsp:include page="/view/Title.jsp"></jsp:include>

   
   <!-- 正文  -->
   <form  method="post" action="${path }/a/ChangePasswordAction">
<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
  
  <tr bgcolor="lightblue">
    <td height=25 colspan=2 align="center" valign="middle" ><font color="#ffffff"><b>输入您的原有密码,新密码</b></font></td>
  </tr>
  <tr>
    <td valign="middle" class="tablebody1">请输入您的旧密码</td>
    <td valign="middle" class="tablebody1"><input name="oldPass" type="text"/></td>
  </tr>
  <tr>
    <td valign="middle" class="tablebody1">请输入您的新密码</td>
    <td valign="middle" class="tablebody1"><input name="newPass1" type="password"> &nbsp; </td>
  </tr>
    <tr>
    <td valign="middle" class="tablebody1">请再次输入您的新密码</td>
    <td valign="middle" class="tablebody1"><input name="newPass2" type="password"> &nbsp; </td>
  </tr>
  <tr>
    <td class="tablebody2" valign="middle" colspan=2 align=center><input type="submit" value="修改"></td>
  </tr>
</table>
  <c:if test="${param.ErrorMSg!=null}">
			<h3 style="color:red;text-align:center;">${param.ErrorMSg}</h3>
  </c:if>
</form>
   &nbsp;<br/>
   </body>
   </html>