<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang chủ" /></title>

</head>

<body class="no-skin">




	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>
							Manage <b>Order</b>
						</h2>
					</div>
					<div class="col-sm-6">
						<a href="${pageContext.request.contextPath}/admin-order/create"
							class="btn btn-success" data-toggle="modal"><i
							class="material-icons">&#xE147;</i> <span>Add New Order</span></a>

					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>

						<th>Name</th>
						<th>Email</th>
						<th>Order Status</th>
						<th>Price</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orders}" var="o">
						<tr>
							<td><a href="${pageContext.request.contextPath}/admin-order/orderdetail?userId=${o.user.userId}&cartId=${o.cartId}"/> ${o.user.fullname}</td>
							<td>${o.user.email}</td>
							<c:if test="${o.status ==1}">
								<td>Đang xử lý</td>
							</c:if>
							<c:if test="${o.status ==2}">
								<td>Đã hoàn tất</td>
							</c:if>
							<c:if test="${o.status ==3}">
								<td>Đang tạm giữ</td>
							</c:if>
							<c:if test="${o.status ==4}">
								<td>Đã hủy bỏ</td>
							</c:if>
							<td>${o.status}</td>
							<td><a
								href="${pageContext.request.contextPath}/admin-order/edit?cartId=${o.cartId}"
								class="edit" data-toggle="modal"><i class="material-icons"
									data-toggle="tooltip" title="Edit">&#xE254;</i></a> <a
								href="${pageContext.request.contextPath}/admin-order/delete?orderId=${o.cartId}"
								class="delete" data-toggle="modal"><i class="material-icons"
									data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="clearfix" align="right">
				
				<!-- Phân trang  -->

				<%-- <ul class="pagination">
					<c:if test="${tag>1}">
						<li class="page-item disabled"><a
							href="${pageContext.request.contextPath}/admin-category?index=${tag-1}">Previous</a></li>
					</c:if>
					<c:forEach begin="1" end="${endP}" var="i">

						<li class="page-item ${tag==i?"active":""}" ><a
							href="${pageContext.request.contextPath}/admin-category?index=${i}"
							class="page-link">${i}</a></li>

					</c:forEach>
					<c:if test="${tag<endP}">
						<li class="page-item"><a
							href="${pageContext.request.contextPath}/admin-category?index=${tag+1}"
							class="page-link">Next</a></li>
					</c:if>
				</ul>
 --%>			</div>
		</div>
	</div>
	<!-- Add Modal HTML -->

	<!-- Edit Modal HTML -->

	<!-- Delete Modal HTML -->

	<script>
		$(document).ready(function() {
			// Activate tooltip
			$('[data-toggle="tooltip"]').tooltip();

			// Select/Deselect checkboxes
			var checkbox = $('table tbody input[type="checkbox"]');
			$("#selectAll").click(function() {
				if (this.checked) {
					checkbox.each(function() {
						this.checked = true;
					});
				} else {
					checkbox.each(function() {
						this.checked = false;
					});
				}
			});
			checkbox.click(function() {
				if (!this.checked) {
					$("#selectAll").prop("checked", false);
				}
			});
		});
	</script>

</body>
</html>