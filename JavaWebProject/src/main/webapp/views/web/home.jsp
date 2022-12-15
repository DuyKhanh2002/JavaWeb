<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<core:if test="${thongbao >0}">																		
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Thông Báo!</strong> Thêm vào giỏ hàng thành công.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
</core:if>

	<!-- Section-->
	<section class="jumbotron text-center">
	<div class="container">
		<h1 class="jumbotron-heading">BookStore</h1>
		<p class="lead text-muted mb-0">Có rất nhiều lựa chọn dành cho bạn</p>
	</div>
	
</section>
	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">

			<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="card  ">
					<div class="card-header bg-light text-black text-uppercase" >
						<i class="fa fa-list-alt"></i> Categories
					</div>
					<ul class="list-group ">
						<c:forEach items="${listCC}" var="o">
							<li  ><a class="list-group-item text-back ${tagCate == o.categoryId ? "active":""}"
								href="${pageContext.request.contextPath}/category/productfind?categoryId=${o.categoryId}">${o.categoryName}</a></li>
						</c:forEach>

					</ul>
				</div>
				
			</div>

			<div class="col-sm-9">
				<div id="content" class="row">
					<c:forEach items="${listP}" var="o">
						<div class="product col-12 col-md-6 col-lg-4">
							<div class="card">
								<img class="card-img-top" src="${o.images}" width="400" height="290" alt="Card image cap">
								<div class="card-body">
									<h4 class="card-title show_txt">
										<a href="${pageContext.request.contextPath}/product/detail?pid=${o.productId}" title="View Product">${o.productName}</a>
									</h4>
									<p class="card-text show_txt"></p>
									<div class="row">
										<div class="col">
											<p class="btn btn-danger btn-block">${o.price} đ</p>
										</div>
										<core:if test="${empty USERMODEL}">
						
					                  <div class="col">
												<a href="${pageContext.request.contextPath}/login" class="btn btn-success btn-block">Add
													to cart</a>
											</div>
					                      </core:if>
					     <core:if test="${not empty USERMODEL}">

											<div class="col">
												<a href="${pageContext.request.contextPath}/cart/add?productid=${o.productId}&price=${o.price}" class="btn btn-success btn-block">Add
													to cart</a>
											</div>

					</core:if>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- 	Phan trang -->
	<div class="clearfix" align="right">


				<ul class="pagination">
					<c:if test="${tag>1}">
						<li class="page-item disabled"><a
							href="${pageContext.request.contextPath}/category/list?index=${tag-1}">Previous</a></li>
					</c:if>
					<c:forEach begin="1" end="${endP}" var="i">

						<li class="page-item ${tag==i?"active":""}" ><a
							href="${pageContext.request.contextPath}/category/list?index=${i}"
							class="page-link">${i}</a></li>

					</c:forEach>
					<c:if test="${tag<endP}">
						<li class="page-item"><a
							href="${pageContext.request.contextPath}/category/list?index=${tag+1}"
							class="page-link">Next</a></li>
					</c:if>
				</ul>
			</div>
			</div>
			

		</div>

	</div>
	</div>
	

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

</body>
</html>