<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/insertcategory.css' />">

<div class="direct">
	<span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160;
	&#62; &#160; Thêm hoặc sửa
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