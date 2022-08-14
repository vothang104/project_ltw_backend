<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/insert.css' />">
<c:choose>
	<c:when test="${product ne null}">
		<div class="direct">
	<span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160;
	&#62; &#160; Sửa sản phẩm
</div>
<form action="${pageContext.request.contextPath}/admin-updateproduct" method="post" class="form" enctype="multipart/form-data">
	<h2 class="form__title">SỬA SẢN PHẨM</h2>
	<div class="form-group">
		<lable class="form__label">Tên sản phẩm:</lable>
		<input value="${product.name}" name="name" id="product-name" type="text" class="form__input"
			placeholder="Áo polo phối khóa cổ">
		<input hidden name="type" value="update" />
		<input hidden name="id" value="${product.id}" />
	</div>
	<div class="form-group">
		<lable class="form__label">Thương hiệu:</lable>
		<input name="brand" id="product-name" value="${product.branch}" type="text" class="form__input"
			placeholder="Dior">
	</div>
	<div class="form-group">
		<lable class="form__label">Chất liệu:</lable>
		<input value="${product.material}" name="material" id="product-name" type="text" class="form__input"
			placeholder="Cotton">
	</div>
	<div class="form-group">
		<lable class="form__label">Giá sản phẩm (VND):</lable>
		<input value="${product.price}" name="price" id="product-price" type="text" class="form__input"
			placeholder="399000">
	</div>
	<div class="form-group">
		<lable class="form__label">Số lượng:</lable>
		<input value="${product.quantity}" name="quantity" id="product-quantity" type="text" class="form__input"
			placeholder="10">
	</div>
	<div class="form-group">
		<lable class="form__label">Phần trăm giảm giá (nếu có):</lable>
		<input value="${product.salePercent}" name="salepercent" id="product-sale" type="text" class="form__input"
			placeholder="5">
	</div>
	<div class="form-group">
		<lable class="form__label">Loại sản phẩm:</lable>
		<select name="subcategoryid" id="product-sale" class="form__input">
			<option value="">Chọn loại sản phẩm</option>
			<c:forEach items="${listSub}" var="sub">
				<option <c:if test="${sub.id eq product.subCategoryId}">selected</c:if> value="${sub.id}">${sub.name}</option>
			</c:forEach>
		</select>
	</div>
	<label for="" class="form__label">Chọn ảnh:</label>
	<div class="form-group-img">
		<div class="form__img-wrap">
			<label for='img1' class="form__img-icon fas fa-plus"></label>
			<c:choose>
				<c:when test="${listImage.get(0).isLinkOnline ne true}">
				<img
				id="form__img1"
				src="${pageContext.request.contextPath}/upload/${listImage.get(0).link}"
				alt="" class="form__img">
				</c:when>
				<c:otherwise>
				<img
				id="form__img1"
				src="${listImage.get(0).link}"
				alt="" class="form__img">
				</c:otherwise>
			</c:choose>
		</div>
		<div class="form__img-wrap">
			<label for="img2" class="form__img-icon fas fa-plus"></label>
			<c:choose>
				<c:when test="${listImage.get(0).isLinkOnline ne true}">
				<img
				id="form__img2"
				src="${pageContext.request.contextPath}/upload/${listImage.get(1).link}"
				alt="" class="form__img">
				</c:when>
				<c:otherwise>
				<img
				id="form__img2"
				src="${listImage.get(1).link}"
				alt="" class="form__img">
				</c:otherwise>
			</c:choose>
		</div>
		<input name="image1" hidden id="img1" type="file" class="form__input">
		<input name="image2" hidden id="img2" type="file" class="form__input">
	</div>
	<div class="form-group-button">
		<input id="reset" class="form__btn" type="reset" value='Nhập lại'>
		<input class="form__btn" type="submit" value='Chỉnh sửa'>
	</div>
</form>
	</c:when>
	
	
	<c:otherwise>
		<div class="direct">
	<span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160;
	&#62; &#160; Thêm sản phẩm
</div>
<form action="${pageContext.request.contextPath}/admin-insertproduct" method="post" class="form" enctype="multipart/form-data">
	<h2 class="form__title">THÊM SẢN PHẨM</h2>
	<div class="form-group">
		<lable class="form__label">Tên sản phẩm:</lable>
		<input name="name" id="product-name" type="text" class="form__input"
			placeholder="Áo polo phối khóa cổ">
	</div>
	<div class="form-group">
		<lable class="form__label">Thương hiệu:</lable>
		<input name="brand" id="product-name" type="text" class="form__input"
			placeholder="Dior">
	</div>
	<div class="form-group">
		<lable class="form__label">Chất liệu:</lable>
		<input name="material" id="product-name" type="text" class="form__input"
			placeholder="Cotton">
	</div>
	<div class="form-group">
		<lable class="form__label">Giá sản phẩm (VND):</lable>
		<input name="price" id="product-price" type="text" class="form__input"
			placeholder="399000">
	</div>
	<div class="form-group">
		<lable class="form__label">Số lượng:</lable>
		<input name="quantity" id="product-quantity" type="text" class="form__input"
			placeholder="10">
	</div>
	<div class="form-group">
		<lable class="form__label">Phần trăm giảm giá (nếu có):</lable>
		<input name="salepercent" id="product-sale" type="text" class="form__input"
			placeholder="5">
	</div>
	<div class="form-group">
		<lable class="form__label">Loại sản phẩm:</lable>
		<select name="subcategoryid" id="product-sale" class="form__input">
			<option value="">Chọn loại sản phẩm</option>
			<c:forEach items="${listSub}" var="sub">
				<option value="${sub.id}">${sub.name}</option>
			</c:forEach>
		</select>
	</div>
	<label for="" class="form__label">Chọn ảnh:</label>
	<div class="form-group-img">
		<div class="form__img-wrap">
			<label for='img1' class="form__img-icon fas fa-plus"></label> <img
				id="form__img1"
				src="https://tse1.explicit.bing.net/th?id=OIP.f5HFfATvhFIhdbj2mQeAKwHaEo&pid=Api&P=0&w=244&h=153"
				alt="" class="form__img">
		</div>
		<div class="form__img-wrap">
			<label for="img2" class="form__img-icon fas fa-plus"></label> <img
				id="form__img2"
				src="https://tse1.explicit.bing.net/th?id=OIP.f5HFfATvhFIhdbj2mQeAKwHaEo&pid=Api&P=0&w=244&h=153"
				alt="" class="form__img">
		</div>
		<input name="image1" hidden id="img1" type="file" class="form__input">
		<input name="image2" hidden id="img2" type="file" class="form__input">
	</div>
	<div class="form-group-button">
		<input id="reset" class="form__btn" type="reset" value='Nhập lại'>
		<input class="form__btn" type="submit" value='Tạo mới'>
	</div>
</form>
	</c:otherwise>
</c:choose>

<script>
    const img1 = document.getElementById('form__img1');
    const img2 = document.getElementById('form__img2');
    const inputImg1 = document.getElementById('img1');
    const inputImg2 = document.getElementById('img2');
    const btnReset = document.getElementById('reset');

    let file1, file2;

    inputImg1.onchange = e => {
        file1 ? URL.revokeObjectURL(file1) : undefined;
        file1 = URL.createObjectURL(e.target.files[0]);
        img1.setAttribute('src', file1);
    }
    inputImg2.onchange = e => {
        file2 ? URL.revokeObjectURL(file2) : undefined;
        file2 = URL.createObjectURL(e.target.files[0]);
        img2.setAttribute('src', file2);
    }
    btnReset.onclick = e => {
        URL.revokeObjectURL(file1);
        URL.revokeObjectURL(file2);
        img1.setAttribute('src', 'https://tse1.explicit.bing.net/th?id=OIP.f5HFfATvhFIhdbj2mQeAKwHaEo&pid=Api&P=0&w=244&h=153');
        img2.setAttribute('src', 'https://tse1.explicit.bing.net/th?id=OIP.f5HFfATvhFIhdbj2mQeAKwHaEo&pid=Api&P=0&w=244&h=153');
    }
    
</script>