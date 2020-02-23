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
      .c1{ text-align:right ;margin-right:50px }
      .c2{ text-align:right ;margin-right:50px ; color:blue; font-size:150% }
      body{ background-image:url("${path}/image/2.jpg");background-repeat:repeat }
	  
	  span{ font-size:30px; color:red; font-weight:bolder;margin-left:200px }
      .f{ width:150px; height:70px}
	  
	  
	  .d{ text-align:center; word-spacing:20px;width:70%}
      img{ border:none }
	  
	  
	  .b{ background-color:yellow;
          background-image:url("${path}/image/button12.gif") ;
          width:60px;height:30px; border:none
         }
	  
    </style>
  </head>
  <body>&nbsp;  
    
  <!-- Title -->
     <jsp:include page="/view/Title.jsp"></jsp:include>
	 
   <div class="c2"> 欢迎${sessionScope.username } </div>
   <div class="c2"> 这里是模糊查询 </div>
	
   <!--  按条件搜索表单 -->
   <center>
  <form action="${path }/a/QueryByProductNameAction" method="post">
   ProductName:<input type="text" name="productName" placeholder="请输入商品名" />&nbsp;
    	<input type="submit"   value="" class="b"/>
  </form>
  
  <form action="${path }/a/QueryByPriceAction" method="post">
   Price:<select name="opt">
                 <option value="1">小于</option>
                <option value="2">大于</option>
         </select>
         <input type="text" name="price" placeholder="商品价格" size="6" /> &nbsp;&nbsp;
    	<input type="submit"   value="" class="b"/>
  </form>
  </center>
   
   <table border="1" bordercolor="blue" cellspacing=0 align="center" width="70%">
     <tr align="center" bgcolor="lightblue">
       <td><b>Id</b></td>
        <td><b>Name</b></td>
		<td><b>图片</b></td>
         <td><b>Price</b></td>
        <td><b><img src="${path}/image/car_new.gif"/></b></td>
     </tr>
        
        <c:forEach items="${list}" var="p">
        	<tr align="center">
	          <td>${p.getId()}</td>
	          <td>${p.getProductName()}</td>
			  <td><img src="${path}${p.getPicpath()}"/></td>
	          <td>${p.getPrice()}</td>     
	          <td align="center"><a href="${path }/a/AddCartItemAction?id=${p.getId()}"><img src="${path}/image/car_new.gif"/></a></td>
	   		</tr>
	    </c:forEach>   
        
   </table>
   <p>&nbsp;</p>
   
   <!-- 分页 --> 
   <center>
   <c:if test="${currentPage!=1}">
     <a href="${path}/a/QueryByProductNameAction?currentPage=${currentPage-1}">上一页</a>
    </c:if>
    &nbsp;
    这是第 <font color="red">${currentPage}</font> 页
    &nbsp;
    
    <c:forEach begin="1" end="${totalPage}" var="currentPage">
    	<a href="${path}/a/QueryByProductNameAction?currentPage=${currentPage}">${currentPage}</a>
    </c:forEach>
    
   <c:if test="${currentPage!=totalPage}">
    <a href="${path}/a/QueryByProductNameAction?currentPage=${currentPage+1}">下一页</a>
    </c:if>
    &nbsp;
    
</center>
   
  </body>
</html>