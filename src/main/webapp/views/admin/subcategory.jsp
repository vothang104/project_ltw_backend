<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/category.css' /> ">
<link rel="stylesheet"
	href="<c:url value='/templates/admin/css/pagination.css' /> ">

 <div class="direct">
            <span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160; &#62; &#160; Danh mục sản phẩm
        </div>
        <div class="action">
            <a title="Thêm mục sản phẩm" href="${pageContext.request.contextPath}/admin-insertsubcategory" class="action__add"> <i class="action-icon fas fa-plus"></i>
            </a>
        </div>
       <div class="categories">
            <div class="categories__header">
                <p class="categories__header-column categories__header-choose">STT</p>
                <div class="categories__header-column categories__header-name">Tên mục sản phẩm</div>
                <div class="categories__header-column categories__header-update">Hành động</div>
            </div>
            <input hidden value="delete" name="type" />
            <div class="categories__body-wrap">
                <c:forEach items="${SubCategories}" var="subCate" varStatus="loop">
                    <div class="categories__body">
                        <div class="categories__body-column categories__body-choose">
                            ${loop.count}
                        </div>
                        <div class="categories__body-column categories__body-name">${subCate.name}</div>
                        <div style="column-gap: 5px" class="categories__body-column categories__body-update">
                            <a title="chỉnh sửa mục loại" href="${pageContext.request.contextPath}/admin-editsubcategory?id=${subCate.id}" class="categories__body-icon far fa-edit"></a>
                            <a data-name="${subCate.name}" onclick="window.confirm('Bạn có chắc muốn xóa ${subCate.name}')" title="Xóa mục sản phẩm" href="${pageContext.request.contextPath}/admin-deletesubcategory?type=delete&id=${subCate.id}" class="btn-delete categories__body-icon far fa-trash-alt">
                            </a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>


<div class="pagination">
	<ul class="pagination__list">
		<li class="pagination__list-item"><a href=""
			class="pagination__list-item__link active">1</a></li>
		<li class="pagination__list-item"><a href=""
			class="pagination__list-item__link">2</a></li>
		<li class="pagination__list-item"><a href=""
			class="pagination__list-item__link"><i
				class="fas fa-chevron-right"></i></a></li>
	</ul>
</div>
<script src='<c:url value="/templates/admin/js/pagination.js"></c:url>'></script>
 <script type="text/javascript">
            pagination('.pagination__list', {
                currentPage: ${currentPage},
                numberPage: ${numberPage}
            }, '/ProjectWeb/admin-subcategory')
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