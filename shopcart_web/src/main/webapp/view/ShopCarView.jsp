<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.entity.*" %>
<%
 	request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
  <head>
  	<meta charset="UTF-8">
    <script src="${path}/js/shopcar.js"></script>
	   <style type="text/css">
         body{ background-image:url("${path}/image/2.jpg");background-repeat:repeat }
		 
		 span{ font-size:30px; color:red; font-weight:bolder;margin-left:200px }
      .f{ width:150px; height:70px}
	  
	  .d{ text-align:center; word-spacing:20px;width:70%}
      img{ border:none }
	  
      </style>
  </head>
  <body>&nbsp;  
    
	<!-- Title --><!--  Menu Bar  -->
    
     <jsp:include page="/view/Title.jsp"></jsp:include>
  
	<!-- 购物车 -->
	
     <form action="${path }/a/UpdateCartAction" method="post">
  	 <table border="1" bordercolor="blue" cellspacing="0" align="center" width="80%">
  		<tbody id="tbody">
  			<tr bgcolor="lightblue" align="center">
  			    <td><b>&nbsp;</b></td>
  				<td><b>商品编号</b></td>
  				<td><b>商品名称</b></td>
				<td><b>图片</b></td>
  				<td><b>商品单价</b></td>
  				<td><b>数量</b></td>
  				<td><b>总价</b></td>
  				<td><b>删除</b></td>
  			</tr>
			
			<c:forEach items="${sessionScope.map}" var="cart">
  	    	<tr onmouseover="over(this);" onmouseout="out(this);" align="center">
  			  <td><input type="checkbox" name="product" value="${cart.value.id }" /></td>
  			  
  	          <td>${cart.value.id}</td>
  	          <td>${cart.value.productName}</td>
		       <td><img src="${path }${cart.value.picpath}"/></td>
  	           <td>${cart.value.price}</td><td>
  	      	    <input type="button" value="-" onclick="sub(this);"/><input type="text" value="${cart.value.num}" size="1" maxlength="1" name="1"/><input type="button" value="+" onclick="add(this);"/>
  	          </td><td>${cart.value.price*cart.value.num}</td>
  	          <td><input type="button" value="delete" onclick="delRow(this);"/></td>
  	        </tr>
  	   		 </c:forEach>
  	      <tr align="center">
  	          <td colspan="7">
  	              <input type="button" value="选中所有行" onclick="selectAll();"/>
  		          <input type="button" value="取消选中" onclick="quxiao();"/>
  		          <input type="button" value="删除选中的行" onclick="deleteSelected();"/>
  	          </td>
  	      </tr>
  		</tbody>
  	</table>
  	<center><p><input type="submit" value="提交修改" onclick="selectAll();"/></p></center>
  	</form>
  	<center>
  	    <hr/>
  	    <a href="">提交订单</a>
  	</center>
  	
  	<!-- 被删除物品车 -->
	
     <form action="${path}/a/RecoverAction" method="post">
  	 <table border="1" bordercolor="blue" cellspacing="0" align="center" width="80%">
  		<tbody id="tbody">
  			<tr bgcolor="lightblue" align="center">
  			    <td><b>&nbsp;</b></td>
  				<td><b>商品编号</b></td>
  				<td><b>商品名称</b></td>
				<td><b>图片</b></td>
  				<td><b>商品单价</b></td>
  				<td><b>数量</b></td>
  				<td><b>总价</b></td>
  				
  			</tr>
			
			<c:forEach items="${sessionScope.deletemap}" var="cart">
  	    	<tr onmouseover="over(this);" onmouseout="out(this);" align="center">
  			  <td><input type="checkbox" name="product" value="${cart.value.id }" /></td>
  			  
  	          <td>${cart.value.id}</td>
  	          <td>${cart.value.productName}</td>
		       <td><img src="${path }${cart.value.picpath}"/></td>
  	           <td>${cart.value.price}</td><td>
  	      	    <input type="button" value="-" onclick="sub(this);"/><input type="text" value="${cart.value.num}" size="1" maxlength="1" name="1"/><input type="button" value="+" onclick="add(this);"/>
  	          </td><td>${cart.value.price*cart.value.num}</td>
  	          
  	        </tr>
  	   		 </c:forEach>
  	   		 <tr align="center">
  	          <td colspan="7">
  	              <input type="button" value="选中所有行" onclick="selectAll();"/>
  		          <input type="button" value="取消选中" onclick="quxiao();"/>
  	          </td>
  	      </tr>
  		</tbody>
  	</table>
  		<center><input type="submit" value="将选中的商品恢复到购物车中" /></center>
  	</form>
  	
  </body>
</html>