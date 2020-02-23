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
    </style>
  </head>
  <body>&nbsp;  
   <center>
   	<c:if test="${ErrorMsg!=null}">
   		<h2 style="color:red">${ErrorMsg}</h2>
   	</c:if>
     <img src="${path}/image/success.gif"/>
     <h1> 已成功将${param.productName }商品添加至购物车</h1>
     <h1><a href="${path }/a/QueryProductAction">继续购物</a>&nbsp;&nbsp;
         <a href="${path }/view/ShopCarView.jsp">去购物车结算</a>
     </h1>
   </center>
 </body>
</html>