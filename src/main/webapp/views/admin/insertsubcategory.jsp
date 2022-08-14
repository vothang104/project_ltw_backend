<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/insertsubcategory.css' />">
<c:choose>
	<c:when test="${subCategoryModel ne null}">
	<div class="direct">
	<span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160;
	&#62; &#160; Chỉnh sửa danh mục sản phẩm
</div>
<form action="${pageContext.request.contextPath}/admin-editsubcategory" method="post" class="form">
	<h2 class="form__title">CHỈNH SỬA DANH MỤC SẢN PHẨM</h2>
	<div class="form-group">
		<lable class="form__label">Tên danh mục:</lable>
		<input name="name" id="subcategory-name" value="${subCategoryModel.name}" type="text" class="form__input"
			placeholder="Áo nam">
	</div>
	<input hidden value="${subCategoryModel.id}" name="id" />
	<input hidden value="update" name="type" />
	<div class="form-group-button">
		<input id="reset" class="form__btn" type="reset" value='Nhập lại'>
		<input class="form__btn" type="submit" value='Chỉnh sửa'>
	</div>
</form>
	</c:when>
	
	<c:otherwise>
	<div class="direct">
	<span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160;
	&#62; &#160; Thêm danh mục sản phẩm
</div>
<form action="${pageContext.request.contextPath}/admin-insertsubcategory" method="post" class="form">
	<h2 class="form__title">THÊM DANH MỤC SẢN PHẨM</h2>
	<div class="form-group">
		<lable class="form__label">Tên danh mục:</lable>
		<input id="subcategory-name" name="name" type="text" class="form__input"
			placeholder="Áo nam">
	</div>
	<input hidden value="add" name="type" />
	<div class="form-group-button">
		<input id="reset" class="form__btn" type="reset" value='Nhập lại'>
		<input class="form__btn" type="submit" value='Tạo mới'>
	</div>
</form>
	</c:otherwise>
</c:choose>


