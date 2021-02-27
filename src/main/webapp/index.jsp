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
	.contain{
		padding:0px 10%
	}
</style>
<body>
<jsp:include page="/components/header1.jsp" ></jsp:include>
<jsp:include page="/components/topbar.jsp" ></jsp:include>
<div class="contain">
<div class="row" style="margin-top: 85px;">
 	<div class="col-12">
 	<div class="row">
 	<c:if test="${categoryname == null}">
 	<c:forEach items="${list}" var="item">
 		<div class="col-4 mt-2 mb-2" >
 		   <div style="height:150px; border:2px solid black; background-color: #cdccf1; padding: 0px 9px;">
 			<h3 style="margin-top: 16px;">${item.name }</h3>
 			<h4 style="">Rs: ${item.price }</h4>
 			<a class="btn btn-warning" href="cartadditem?id=${item.ID}">Add To Cart</a>
 		   </div>
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