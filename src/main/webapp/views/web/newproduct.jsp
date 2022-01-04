<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>


<link rel="stylesheet" href="<c:url value='/templates/web/css/newproduct.css' />">
<link rel="stylesheet" href="<c:url value='/templates/web/css/sidebar.css' />">
<link rel="stylesheet" href="<c:url value='/templates/web/css/product.css' />">
<link rel="stylesheet" href="<c:url value='/templates/web/css/sortproduct.css' />">
<link rel="stylesheet" href="<c:url value='/templates/web/css/pagination.css' />">


<div class="toast-wrap">
</div>

<div class="grid wide">
                <div class="container-newproduct__direct">
                    <a href="./index.html">Trang chủ</a> <span>/</span> <span>Sản phẩm mới</span>
                </div>
                <div class="row">
                    <div class="col l-3 m-4 c-0 min-0">
                        <div class="sidebar">
                            <div class="sidebar__category">
                                <h2 class="sidebar__category-title">Danh mục</h2>
                                <ul class="sidebar__category-list">
                                    <li class="sidebar__category-item">
                                        <a href="" class="sidebar__category-link">Sản phẩm</a>
                                        <i class="sidebar__category-icon fas fa-sort-down"></i>                                       
                                    </li>
                                    <ul class="sidebar__category-sublist">
                                        <li class="sidebar__category-sublist-item">
                                            <a href="" class="sidebar__category-sublist-link">Áo nam</a>
                                            <i class="sidebar__category-icon2 fas fa-sort-down"></i>                                       
                                        </li>
                                        <ul class="sidebar__category-sublist__sublist">
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Sơ mi nam</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Áo thun nam</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Polo nam</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Áo khoác nam</a>
                                            </li>
                                        </ul>
                                        <li class="sidebar__category-sublist-item">
                                            <a href="" class="sidebar__category-sublist-link">Áo nữ</a>
                                            <i class="sidebar__category-icon2 fas fa-sort-down"></i>                                       
                                        </li>
                                        <ul class="sidebar__category-sublist__sublist">
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Sơ mi nữ</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Áo thun nữ</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Polo nữ</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Áo khoác nữ</a>
                                            </li>
                                        </ul>
                                        <li class="sidebar__category-sublist-item">
                                            <a href="" class="sidebar__category-sublist-link">Quần nam</a>
                                            <i class="sidebar__category-icon2 fas fa-sort-down"></i>                                       
                                        </li>
                                        <ul class="sidebar__category-sublist__sublist">
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Quần jean nam</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Quần kaki nam</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Quần jogger nam</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Quần short nam</a>
                                            </li>
                                        </ul>
                                        <li class="sidebar__category-sublist-item">
                                            <a href="" class="sidebar__category-sublist-link">Quần nữ</a>
                                            <i class="sidebar__category-icon2 fas fa-sort-down"></i>                                       
                                        </li>
                                        <ul class="sidebar__category-sublist__sublist">
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Quần jean nữ</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Quần kaki nữ</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Quần xuông nữ</a>
                                            </li>
                                            <li class="sidebar__category-sublist__sublist-item">
                                                <a href="" class="sidebar__category-sublist__sublist-link">Quần short nữ</a>
                                            </li>
                                        </ul>
                                    </ul>
                                    <li class="sidebar__category-item">
                                        <a href="" class="sidebar__category-link">Tin tức</a>
                                        <i class="sidebar__category-icon fas fa-sort-down"></i>
                                    </li>
                                    <!--tin tuc-->
                                    <ul class="sidebar__category-sublist">
                                        <li class="sidebar__category-sublist-item">
                                            <a href="" class="sidebar__category-sublist-link">Tin xu hướng</a>                                       
                                        </li>
                                        <li class="sidebar__category-sublist-item">
                                            <a href="" class="sidebar__category-sublist-link">Tin mẹo vặt</a>                                       
                                        </li>
                                        <li class="sidebar__category-sublist-item">
                                            <a href="" class="sidebar__category-sublist-link">Tin khuyến mãi</a>                                       
                                        </li>
                                        <li class="sidebar__category-sublist-item">
                                            <a href="" class="sidebar__category-sublist-link">Thẻ quà tặng</a>                                       
                                        </li>
                                    </ul>


                                    <li class="sidebar__category-item">
                                        <a href="" class="sidebar__category-link">Câu hỏi</a>
                                    </li>
                                    <li class="sidebar__category-item">
                                        <a href="" class="sidebar__category-link">Liên hệ</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="sidebar__filter">
                                <div class="sidebar__filter-title">
                                    <h3>Lọc thông minh</h3>
                                    <p>Tối ưu thời gian tìm kiếm sản phẩm</p>
                                </div>
                                <div class="sidebar__filter-brand">
                                    <h3 class="sidebar__filter-brand__title">Thương hiệu</h3>
                                    <div class="sidebar__filter-brand__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Ego Wear</span>
                                    </div>
                                    <div class="sidebar__filter-brand__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Korean</span>
                                    </div>
                                    <div class="sidebar__filter-brand__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Local Brand</span>
                                    </div>
                                    <div class="sidebar__filter-brand__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Made im Viet Nam</span>
                                    </div>
                                    <div class="sidebar__filter-brand__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Men wear</span>
                                    </div>
                                    <div class="sidebar__filter-brand__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Yody</span>
                                    </div>
                                </div>
                                <div class="sidebar__filter-price">
                                    <h3 class="sidebar__filter-price__title">Khoảng giá</h3>
                                    <div class="sidebar__filter-price__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Dưới 100.000đ</span>
                                    </div>
                                    <div class="sidebar__filter-price__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Từ 100.000đ đến 200.000đ</span>
                                    </div>
                                    <div class="sidebar__filter-price__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Từ 200.000đ đến 400.000đ</span>
                                    </div>
                                    <div class="sidebar__filter-price__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Từ 400.000đ đến 600.000đ</span>
                                    </div>
                                    <div class="sidebar__filter-price__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Từ 800.000đ đến 1.000.000đ</span>
                                    </div>
                                    <div class="sidebar__filter-price__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Từ 1.000.000đ đến 2.000.000đ</span>
                                    </div>
                                    <div class="sidebar__filter-price__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Trên 2.000.000đ</span>
                                    </div>
                                </div>
                                <div class="sidebar__filter-material">
                                    <h3 class="sidebar__filter-material__title">Chất liệu</h3>
                                    <div class="sidebar__filter-material__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Cotton lạnh</span>
                                    </div>
                                    <div class="sidebar__filter-material__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Crepe Hàn Quốc</span>
                                    </div>
                                    <div class="sidebar__filter-material__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Lụa Hàn Quốc</span>
                                    </div>
                                    <div class="sidebar__filter-material__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Sợi cafe</span>
                                    </div>
                                    <div class="sidebar__filter-material__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Thun Cotton</span>
                                    </div>
                                    <div class="sidebar__filter-material__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Tuytsi</span>
                                    </div>
                                    <div class="sidebar__filter-material__choose">
                                        <div class="toggle">
                                            <div class="toggle__btn"></div>
                                        </div>
                                        <span class="toggle-label">Twill Hàn Quốc</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-9 m-8 c-12 min-12">
                        <div class="sort-product">
                            <ul class="sort-product__list">
                                <div class="sort-product__list-move"></div>
                                <li class="sort-product__item active">Mặc định <div class="underline"></div></li>
                                <li class="sort-product__item">Từ A-Z</li>
                                <li class="sort-product__item">Từ Z-A</li>
                                <li class="sort-product__item">Rẻ nhất</li>
                                <li class="sort-product__item">Giá giảm dần</li>
                                <li class="sort-product__item">Mới nhất</li>
                            </ul>
                        </div>
                        <div class="row">
                            <div class="col l-3 m-6 c-4 min-6">
                                <div class="product product--sale">
                                    <div class="product-sale">
                                        <div style = '--rotate: 2' class="product-sale__item"></div>
                                        <div style = '--rotate: 1' class="product-sale__item"></div>
                                        <div style = '--rotate: 0' class="product-sale__item">
                                            <span>Giảm</span> <span>10%</span>
                                        </div>
                                    </div>
                                    <div class="view-more">
                                        <a href="./newproduct.html" class="view-more__link">Xem thêm <i
                                                class="fas fa-arrow-right"></i></a>
                                    </div>
                                    <a href="./productdetail.html" class="product__img"
                                        style='background-image: url(https://bizweb.dktcdn.net/thumb/large/100/434/926/products/polo-cam-2.jpg?v=1628955290000)'>
                                        <form data-id='1' action="" method="get" class="hide-on-taplet product__size">
                                            <div class="product__color">
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="yellow">
                                                <label for="yellow" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="red">
                                                <label for="red" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                            </div>
                                            <div class="product__size-wrap">
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="s">
                                                <label for="s" class="product__size-label">S</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="m">
                                                <label for="m" class="product__size-label">M</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="l">
                                                <label for="l" class="product__size-label">L</label>
                                            </div>
                                        </form>
                                    </a>
                                    <div class="product__info">
                                        <p class="product__brand">ego wear</p>
                                        <p data-id='sp' class="product__name">Áo polo phối khóa cổ</p>

                                        <div class="product__action">
                                            <div class="product__action-wrap">
                                                <div class="product__price">
                                                    <span class="product__price-sell">399000 đ</span>
                                                    <span class="product__price-sale">460000 đ</span>
                                                </div>
                                                <div class="product__action-option">
                                                    <button data-id = 'sp' class="btn-action prouct__action-like"><i
                                                            class="far fa-heart"></i></button>
                                                    <button data-id= 'sp' class="btn-action product__action-cart">
                                                        <i class="fas fa-shopping-basket"></i></button>
                                                    <button data-id='1' class="btn-action product__action-buy"><i
                                                            class="fas fa-shopping-basket"></i> Mua ngay</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-4 min-6">
                                <div class="product product--sale">
                                    <div class="product-sale">
                                        <div style = '--rotate: 2' class="product-sale__item"></div>
                                        <div style = '--rotate: 1' class="product-sale__item"></div>
                                        <div style = '--rotate: 0' class="product-sale__item">
                                            <span>Giảm</span> <span>10%</span>
                                        </div>
                                    </div>
                                    <div class="view-more">
                                        <a href="./newproduct.html" class="view-more__link">Xem thêm <i
                                                class="fas fa-arrow-right"></i></a>
                                    </div>
                                    <a href="./productdetail.html" class="product__img"
                                        style='background-image: url(https://bizweb.dktcdn.net/thumb/large/100/434/926/products/phong-vang-2.jpg?v=1628955779000)'>
                                        <form data-id='1' action="" method="get" class="hide-on-taplet product__size">
                                            <div class="product__color">
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="yellow">
                                                <label for="yellow" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="red">
                                                <label for="red" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                            </div>
                                            <div class="product__size-wrap">
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="s">
                                                <label for="s" class="product__size-label">S</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="m">
                                                <label for="m" class="product__size-label">M</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="l">
                                                <label for="l" class="product__size-label">L</label>
                                            </div>
                                        </form>
                                    </a>
                                    <div class="product__info">
                                        <p class="product__brand">ego wear</p>
                                        <p data-id='sp' class="product__name">Áo polo phối khóa cổ</p>

                                        <div class="product__action">
                                            <div class="product__action-wrap">
                                                <div class="product__price">
                                                    <span class="product__price-sell">399000 đ</span>
                                                    <span class="product__price-sale">460000 đ</span>
                                                </div>
                                                <div class="product__action-option">
                                                    <button data-id = 'sp' class="btn-action prouct__action-like"><i
                                                            class="far fa-heart"></i></button>
                                                    <button data-id= 'sp' class="btn-action product__action-cart">
                                                        <i class="fas fa-shopping-basket"></i></button>
                                                    <button data-id='1' class="btn-action product__action-buy"><i
                                                            class="fas fa-shopping-basket"></i> Mua ngay</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-4 min-6">
                                <div class="product product--sale">
                                    <div class="product-sale">
                                        <div style = '--rotate: 2' class="product-sale__item"></div>
                                        <div style = '--rotate: 1' class="product-sale__item"></div>
                                        <div style = '--rotate: 0' class="product-sale__item">
                                            <span>Giảm</span> <span>10%</span>
                                        </div>
                                    </div>
                                    <div class="view-more">
                                        <a href="./newproduct.html" class="view-more__link">Xem thêm <i
                                                class="fas fa-arrow-right"></i></a>
                                    </div>
                                    <a href="./productdetail.html" class="product__img"
                                        style='background-image: url(https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pt04116tr-9.jpg?v=1629001480000)'>
                                        <form data-id='1' action="" method="get" class="hide-on-taplet product__size">
                                            <div class="product__color">
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="yellow">
                                                <label for="yellow" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="red">
                                                <label for="red" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                            </div>
                                            <div class="product__size-wrap">
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="s">
                                                <label for="s" class="product__size-label">S</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="m">
                                                <label for="m" class="product__size-label">M</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="l">
                                                <label for="l" class="product__size-label">L</label>
                                            </div>
                                        </form>
                                    </a>
                                    <div class="product__info">
                                        <p class="product__brand">ego wear</p>
                                        <p data-id='sp' class="product__name">Áo polo phối khóa cổ</p>

                                        <div class="product__action">
                                            <div class="product__action-wrap">
                                                <div class="product__price">
                                                    <span class="product__price-sell">399000 đ</span>
                                                    <span class="product__price-sale">460000 đ</span>
                                                </div>
                                                <div class="product__action-option">
                                                    <button data-id = 'sp' class="btn-action prouct__action-like"><i
                                                            class="far fa-heart"></i></button>
                                                    <button data-id= 'sp' class="btn-action product__action-cart">
                                                        <i class="fas fa-shopping-basket"></i></button>
                                                    <button data-id='1' class="btn-action product__action-buy"><i
                                                            class="fas fa-shopping-basket"></i> Mua ngay</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-4 min-6">
                                <div class="product product--sale">
                                    <div class="product-sale">
                                        <div style = '--rotate: 2' class="product-sale__item"></div>
                                        <div style = '--rotate: 1' class="product-sale__item"></div>
                                        <div style = '--rotate: 0' class="product-sale__item">
                                            <span>Giảm</span> <span>10%</span>
                                        </div>
                                    </div>
                                    <div class="view-more">
                                        <a href="./newproduct.html" class="view-more__link">Xem thêm <i
                                                class="fas fa-arrow-right"></i></a>
                                    </div>
                                    <a href="./productdetail.html" class="product__img"
                                        style='background-image: url(https://bizweb.dktcdn.net/thumb/large/100/434/926/products/lc03105ke-6.jpg?v=1628997037000)'>
                                        <form data-id='1' action="" method="get" class="hide-on-taplet product__size">
                                            <div class="product__color">
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="yellow">
                                                <label for="yellow" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="red">
                                                <label for="red" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                            </div>
                                            <div class="product__size-wrap">
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="s">
                                                <label for="s" class="product__size-label">S</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="m">
                                                <label for="m" class="product__size-label">M</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="l">
                                                <label for="l" class="product__size-label">L</label>
                                            </div>
                                        </form>
                                    </a>
                                    <div class="product__info">
                                        <p class="product__brand">ego wear</p>
                                        <p data-id='sp' class="product__name">Áo polo phối khóa cổ</p>

                                        <div class="product__action">
                                            <div class="product__action-wrap">
                                                <div class="product__price">
                                                    <span class="product__price-sell">399000 đ</span>
                                                    <span class="product__price-sale">460000 đ</span>
                                                </div>
                                                <div class="product__action-option">
                                                    <button data-id = 'sp' class="btn-action prouct__action-like"><i
                                                            class="far fa-heart"></i></button>
                                                    <button data-id= 'sp' class="btn-action product__action-cart">
                                                        <i class="fas fa-shopping-basket"></i></button>
                                                    <button data-id='1' class="btn-action product__action-buy"><i
                                                            class="fas fa-shopping-basket"></i> Mua ngay</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-4 min-6">
                                <div class="product product--sale">
                                    <div class="product-sale">
                                        <div style = '--rotate: 2' class="product-sale__item"></div>
                                        <div style = '--rotate: 1' class="product-sale__item"></div>
                                        <div style = '--rotate: 0' class="product-sale__item">
                                            <span>Giảm</span> <span>10%</span>
                                        </div>
                                    </div>
                                    <div class="view-more">
                                        <a href="" class="view-more__link">Xem thêm <i
                                                class="fas fa-arrow-right"></i></a>
                                    </div>
                                    <a href="" class="product__img"
                                        style='background-image: url(https://bizweb.dktcdn.net/thumb/large/100/434/926/products/lc03106de-02.jpg?v=1629001304000)'>
                                        <form data-id='1' action="" method="get" class="hide-on-taplet product__size">
                                            <div class="product__color">
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="yellow">
                                                <label for="yellow" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="red">
                                                <label for="red" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                            </div>
                                            <div class="product__size-wrap">
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="s">
                                                <label for="s" class="product__size-label">S</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="m">
                                                <label for="m" class="product__size-label">M</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="l">
                                                <label for="l" class="product__size-label">L</label>
                                            </div>
                                        </form>
                                    </a>
                                    <div class="product__info">
                                        <p class="product__brand">ego wear</p>
                                        <p data-id='sp' class="product__name">Áo polo phối khóa cổ</p>

                                        <div class="product__action">
                                            <div class="product__action-wrap">
                                                <div class="product__price">
                                                    <span class="product__price-sell">399000 đ</span>
                                                    <span class="product__price-sale">460000 đ</span>
                                                </div>
                                                <div class="product__action-option">
                                                    <button data-id = 'sp' class="btn-action prouct__action-like"><i
                                                            class="far fa-heart"></i></button>
                                                    <button data-id= 'sp' class="btn-action product__action-cart">
                                                        <i class="fas fa-shopping-basket"></i></button>
                                                    <button data-id='1' class="btn-action product__action-buy"><i
                                                            class="fas fa-shopping-basket"></i> Mua ngay</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-4 min-6">
                                <div class="product product--sale">
                                    <div class="product-sale">
                                        <div style = '--rotate: 2' class="product-sale__item"></div>
                                        <div style = '--rotate: 1' class="product-sale__item"></div>
                                        <div style = '--rotate: 0' class="product-sale__item">
                                            <span>Giảm</span> <span>10%</span>
                                        </div>
                                    </div>
                                    <div class="view-more">
                                        <a href="" class="view-more__link">Xem thêm <i
                                                class="fas fa-arrow-right"></i></a>
                                    </div>
                                    <a href="" class="product__img"
                                        style='background-image: url(https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pt04119do-7.jpg?v=1629001012000)'>
                                        <form data-id='1' action="" method="get" class="hide-on-taplet product__size">
                                            <div class="product__color">
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="yellow">
                                                <label for="yellow" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="red">
                                                <label for="red" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                            </div>
                                            <div class="product__size-wrap">
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="s">
                                                <label for="s" class="product__size-label">S</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="m">
                                                <label for="m" class="product__size-label">M</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="l">
                                                <label for="l" class="product__size-label">L</label>
                                            </div>
                                        </form>
                                    </a>
                                    <div class="product__info">
                                        <p class="product__brand">ego wear</p>
                                        <p data-id='sp' class="product__name">Áo polo phối khóa cổ</p>

                                        <div class="product__action">
                                            <div class="product__action-wrap">
                                                <div class="product__price">
                                                    <span class="product__price-sell">399000 đ</span>
                                                    <span class="product__price-sale">460000 đ</span>
                                                </div>
                                                <div class="product__action-option">
                                                    <button data-id = 'sp' class="btn-action prouct__action-like"><i
                                                            class="far fa-heart"></i></button>
                                                    <button data-id= 'sp' class="btn-action product__action-cart">
                                                        <i class="fas fa-shopping-basket"></i></button>
                                                    <button data-id='1' class="btn-action product__action-buy"><i
                                                            class="fas fa-shopping-basket"></i> Mua ngay</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-4 min-6">
                                <div class="product product--sale">
                                    <div class="product-sale">
                                        <div style = '--rotate: 2' class="product-sale__item"></div>
                                        <div style = '--rotate: 1' class="product-sale__item"></div>
                                        <div style = '--rotate: 0' class="product-sale__item">
                                            <span>Giảm</span> <span>10%</span>
                                        </div>
                                    </div>
                                    <div class="view-more">
                                        <a href="" class="view-more__link">Xem thêm <i
                                                class="fas fa-arrow-right"></i></a>
                                    </div>
                                    <a href="" class="product__img"
                                        style='background-image: url(https://bizweb.dktcdn.net/thumb/large/100/434/926/products/ls041148tr-5.jpg?v=1628997261000)'>
                                        <form data-id='1' action="" method="get" class="hide-on-taplet product__size">
                                            <div class="product__color">
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="yellow">
                                                <label for="yellow" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="red">
                                                <label for="red" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                            </div>
                                            <div class="product__size-wrap">
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="s">
                                                <label for="s" class="product__size-label">S</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="m">
                                                <label for="m" class="product__size-label">M</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="l">
                                                <label for="l" class="product__size-label">L</label>
                                            </div>
                                        </form>
                                    </a>
                                    <div class="product__info">
                                        <p class="product__brand">ego wear</p>
                                        <p data-id='sp' class="product__name">Áo polo phối khóa cổ</p>

                                        <div class="product__action">
                                            <div class="product__action-wrap">
                                                <div class="product__price">
                                                    <span class="product__price-sell">399000 đ</span>
                                                    <span class="product__price-sale">460000 đ</span>
                                                </div>
                                                <div class="product__action-option">
                                                    <button data-id = 'sp' class="btn-action prouct__action-like"><i
                                                            class="far fa-heart"></i></button>
                                                    <button data-id= 'sp' class="btn-action product__action-cart">
                                                        <i class="fas fa-shopping-basket"></i></button>
                                                    <button data-id='1' class="btn-action product__action-buy"><i
                                                            class="fas fa-shopping-basket"></i> Mua ngay</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col l-3 m-6 c-4 min-6">
                                <div class="product product--sale">
                                    <div class="product-sale">
                                        <div style = '--rotate: 2' class="product-sale__item"></div>
                                        <div style = '--rotate: 1' class="product-sale__item"></div>
                                        <div style = '--rotate: 0' class="product-sale__item">
                                            <span>Giảm</span> <span>10%</span>
                                        </div>
                                    </div>
                                    <div class="view-more">
                                        <a href="" class="view-more__link">Xem thêm <i
                                                class="fas fa-arrow-right"></i></a>
                                    </div>
                                    <a href="" class="product__img"
                                        style='background-image: url(https://bizweb.dktcdn.net/thumb/large/100/434/926/products/thun-cotton-trang-2.jpg?v=1628996155000)'>
                                        <form data-id='1' action="" method="get" class="hide-on-taplet product__size">
                                            <div class="product__color">
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="yellow">
                                                <label for="yellow" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                                <input class="product__color-option" hidden type="radio" name="color"
                                                    id="red">
                                                <label for="red" class="product__color-label">
                                                    <img src="https://bizweb.dktcdn.net/thumb/large/100/434/926/products/pc-ao-dam-2019-large-1605601954-6629.jpg?v=1629002946000"
                                                        alt="" class="product__color-img">
                                                </label>
                                            </div>
                                            <div class="product__size-wrap">
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="s">
                                                <label for="s" class="product__size-label">S</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="m">
                                                <label for="m" class="product__size-label">M</label>
                                                <input class="product__size-option" hidden type="radio" name="size"
                                                    id="l">
                                                <label for="l" class="product__size-label">L</label>
                                            </div>
                                        </form>
                                    </a>
                                    <div class="product__info">
                                        <p class="product__brand">ego wear</p>
                                        <p data-id='sp' class="product__name">Áo polo phối khóa cổ</p>

                                        <div class="product__action">
                                            <div class="product__action-wrap">
                                                <div class="product__price">
                                                    <span class="product__price-sell">399000 đ</span>
                                                    <span class="product__price-sale">460000 đ</span>
                                                </div>
                                                <div class="product__action-option">
                                                    <button data-id = 'sp' class="btn-action prouct__action-like"><i
                                                            class="far fa-heart"></i></button>
                                                    <button data-id= 'sp' class="btn-action product__action-cart">
                                                        <i class="fas fa-shopping-basket"></i></button>
                                                    <button data-id='1' class="btn-action product__action-buy"><i
                                                            class="fas fa-shopping-basket"></i> Mua ngay</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="pagination">
                            <li class="pagination__item pagination--active"><a href="" class="pagination__link">1</a></li>
                            <li class="pagination__item"><a href="" class="pagination__link">2</a></li>
                            <li class="pagination__item"><a href="" class="pagination__link"><i class="fas fa-chevron-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            
<script src="<c:url value='/templates/web/js/sidebar.js' />"></script>
<script src="<c:url value='/templates/web/js/buy.js' />"></script>
<script src="<c:url value='/templates/web/js/addtocart.js' />"></script>
<script src="<c:url value='/templates/web/js/addtoenjoy.js' />"></script>
<script src="<c:url value='/templates/web/js/sortproduct.js' />"></script>