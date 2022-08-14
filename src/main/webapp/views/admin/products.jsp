<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/products.css' /> ">
<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/pagination.css' /> ">


<div class="direct">
	<span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160;
	&#62; &#160; Tất cả sản phẩm
</div>
<div class="action">
	<form action="" class="action__form">
		<input class="action__form-input" type="text"
			placeholder="Tìm kiếm sản phẩm..."> <input
			class="action__form-btn" type="submit" value="Tìm kiếm">
	</form>
	<div class="action__button">
		<a title="Thêm sản phẩm" href="${pageContext.request.contextPath}/admin-insertproduct" class="action__add">
			<i class="action-icon fas fa-plus"></i>
		</a>
	</div>
</div>
<div class="products">
	<div class="products__header">
		<p class="products__header-column products__header-choose">STT</p>
		<div class="products__header-column products__header-name">Tên
			sản phẩm</div>
		<div class="products__header-column products__header-quantity">Số
			lượng</div>
		<div class="products__header-column products__header-price">Giá</div>
		<div class="products__header-column products__header-update">Hành động</div>
	</div>
	<div class="products__body-wrap">
	<c:forEach items="${listProduct}" var="p" varStatus="loop">
	<div class="products__body">
			<div class="products__body-column products__body-choose">
				${loop.count}
			</div>
			<div style="padding: 0 10px" class="products__body-column products__body-name">${p.name}</div>
			<div class="products__body-column products__body-quantity">${p.quantity}</div>
			<div class="products__body-column products__body-price">${p.priceSaleFormat}đ</div>
			<div style="column-gap: 5px" class="products__body-column products__body-update">
				<a title="chỉnh sửa sản phẩm" href="${pageContext.request.contextPath}/admin-updateproduct?type=update&id=${p.id}"
					class="Products__body-icon far fa-edit"></a>
				<a style="color: black" title="Xóa sản phẩm" href="" class="action-icon far fa-trash-alt"></a>
			</div>
		</div>
	</c:forEach>
	</div>
</div>
<div class="pagination">
	<ul class="pagination__list">
		
	</ul>
</div>
<script src='<c:url value="/templates/admin/js/pagination.js"></c:url>'></script>
<script type="text/javascript">
	pagination('.pagination__list', {
		currentPage: ${currentPage},
		numberPage: ${numberPage}
	}, '/ProjectWeb/admin-allproduct')
</script>
<script>
    const btnDelete = document.querySelector('.action__delete');
    const checkDeletes = document.querySelectorAll('.check-delete');

    checkDeletes.forEach(check => {
        check.onclick = e => {
            const checkEl = [...checkDeletes].find(item => {
                return item.matches('.check-delete:checked');
            })
            if(checkEl) {
                btnDelete.style = `opacity: 1; pointer-events: all`;
            }else {
                btnDelete.style = `opacity: 0.5; pointer-events: none`;
            }
        }
    })

</script>