<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/insertcategory.css' />">
<c:choose>
	<c:when test="${categoryModel ne null}">
	<div class="direct">
	<span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160;
	&#62; &#160; Chỉnh sửa danh mục loại
</div>
<form action="${pageContext.request.contextPath}/admin-editcategory" action="post" class="form">
	<h2 class="form__title">CHỈNH SỬA DANH MỤC LOẠI</h2>
	<div class="form-group">
		<lable class="form__label">Tên danh mục:</lable>
		<input name="name" id="category-name" value="${categoryModel.name}" type="text" class="form__input"
			placeholder="Áo nam">
	</div>
	<input hidden value="${cate } name="id" />
	<div class="form-group-button">
		<input id="reset" class="form__btn" type="reset" value='Nhập lại'>
		<input class="form__btn" type="submit" value='Chỉnh sửa'>
	</div>
</form>
	</c:when>
	
	<c:otherwise>
	<div class="direct">
	<span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160;
	&#62; &#160; Thêm danh mục loại
</div>
<form action="" class="form">
	<h2 class="form__title">THÊM DANH MỤC LOẠI</h2>
	<div class="form-group">
		<lable class="form__label">Tên danh mục:</lable>
		<input id="category-name" type="text" class="form__input"
			placeholder="Áo nam">
	</div>
	<div class="form-group-button">
		<input id="reset" class="form__btn" type="reset" value='Nhập lại'>
		<input class="form__btn" type="submit" value='Tạo mới'>
	</div>
</form>
	</c:otherwise>
</c:choose>