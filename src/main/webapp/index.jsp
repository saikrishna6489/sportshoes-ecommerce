<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
	.box{
		height:200px;
		width:200px;
		background-image:url("images/bg11.png");
	}
</style>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/topbar.jsp" ></jsp:include>
<div class="container">
<div class="row" style="margin-top: 85px;">
	<div class="col-3" style=" padding: 0px 16px 0px 16px;">
	  <div class="" style="background-color: antiquewhite;padding: 9px; border-radius: 14px;">
	  <h3>CATEGORIES</h3>
	  <p><a class="btn btn-primary" href="home">ALL</a></p>
 	  <c:if test="${categorylist != null}">
 	   	<c:forEach items="${categorylist}" var="catitem">
 	  			<p><a class="btn btn-primary" href="bycategory?categoryname=${catitem.getName()}">${catitem.getName()}</a></p>
 	  </c:forEach>
 	  </c:if>
 	  </div>
 	</div>
 	
 	<div class="col-9">
 	<div class="row">
 	<c:forEach items="${list}" var="item">
 	  <c:if test="${mapCats.get(item.ID) == categoryname}">
 		<div class="col-3" style="height:200px; border:2px solid black;margin: 0px 14px 22px 7px; background-color: darkseagreen; border-radius: 15px;">
 			<h3>${item.name }</h3>
 			<h4>Rs: ${item.price }</h4>
 			<a class="btn btn-warning" href="cartadditem?id=${item.ID}">Add To Cart</a>
 		</div>
 	  </c:if>
 	</c:forEach>
 	<c:if test="${categoryname == null}">
 	<c:forEach items="${list}" var="item">
 		<div class="col-3" style="height:200px; border:2px solid black;margin: 0px 14px 22px 7px; background-color: darkseagreen; border-radius: 15px;">
 			<h3 style="margin-top: 16px;">${item.name }</h3>
 			<h4 style="margin-top: 50px;">Rs: ${item.price }</h4>
 			<a class="btn btn-warning" href="cartadditem?id=${item.ID}">Add To Cart</a>
 		</div>
 	</c:forEach>
 	</c:if>
 	</div>
 	</div>
</div>
</div>
<jsp:include page="/components/footer.jsp"></jsp:include>
</body>
</html>