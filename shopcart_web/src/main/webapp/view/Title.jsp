<%@ page pageEncoding="UTF-8" contentType="text/html; utf-8" session="false" isELIgnored="false" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%
 	request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
  <head>
  	<meta charset="UTF-8">
  </head>
  <body>
  	<!-- Title -->
     <img src="${path}/image/zgc_px.jpg" align="middle" class="f"/>
     <span>欢迎访问我的购物网站</span>
     <hr/>
   <center>
   <div class="d">
     <a href="${path }/a/QueryProductAction"><img src="${path}/image/index.gif"/></a>
     <a href="${path }/view/UserManageView.jsp"><img src="${path}/image/reg.gif"/></a>
     <a href="${path }/view/ShopCarView.jsp"><img src="${path}/image/cart.gif"/></a>
     <a href=""><img src="${path}/image/order.gif"/></a>
     <a href="${path }/a/SafeExitAction"><img src="${path}/image/exit.gif"/></a>
   </div> 
  </center>
  
  </body>
  
</html>