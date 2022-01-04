<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<link rel="stylesheet" href="<c:url value='/templates/web/css/cart.css' />">

<div class="grid wide">
	<div class="cart-direct">
		<span>Trang chủ</span> / <span>Giỏ hàng</span>
	</div>
	<h2 class="cart-title">GIỎ HÀNG CỦA BẠN</h2>
	<div class="cart-product">
		<div class="cart-product__none">
			<i class="cart-product__none-icon fas fa-shopping-bag"></i>
			<p class="cart-product__none-text">Không có sản phẩm nào trong
				giỏ hàng của bạn</p>
		</div>
		<div class="cart-product__has">
			<div class="cart-product__table-head">
				<div class="cart-product__table-head__info">Thông tin sản phẩm</div>
				<div class="cart-product__table-head__details">
					<span>Đơn giá</span> <span>Số lượng</span> <span>Thành tiền</span>
				</div>
			</div>
			<div data-id="1" class="cart-product__table-body">
				<div class="cart-product__table-info-product">
					<div class="cart-product__table-info-product__img">
						<img
							src="https://tse2.mm.bing.net/th?id=OIP.vc5yadKye0v27xWU9lFExAHaKX&pid=Api&P=0&w=300&h=300"
							alt="image product">
					</div>
					<div class="cart-product__table-info-product__info">
						<span>Áo phông cộc tay</span> <span>S / vàng</span> <span
							class="btn-remove-enjoyproduct" data-id="1">xóa</span>
					</div>
				</div>
				<div class="cart-product__table-details-product">
					<span data-id="1"
						class="cart-product__table-details-product__price">360000</span>
					<div class="cart-product__table-details-product__quantity">
						<span data-id="1" class="minus">-</span> <span data-id="1"
							class="number">1</span> <span data-id="1" class="plus">+</span>
					</div>
					<span data-id="1"
						class="cart-product__table-details-product__total">360000</span>
				</div>
			</div>
			<div data-id="2" class="cart-product__table-body">
				<div class="cart-product__table-info-product">
					<div class="cart-product__table-info-product__img">
						<img
							src="https://tse2.mm.bing.net/th?id=OIP.vc5yadKye0v27xWU9lFExAHaKX&pid=Api&P=0&w=300&h=300"
							alt="image product">
					</div>
					<div class="cart-product__table-info-product__info">
						<span>Áo phông cộc tay</span> <span>S / vàng</span> <span
							class="btn-remove-enjoyproduct" data-id="2">xóa</span>
					</div>
				</div>
				<div class="cart-product__table-details-product">
					<span data-id="2"
						class="cart-product__table-details-product__price">360000</span>
					<div class="cart-product__table-details-product__quantity">
						<span data-id="2" class="minus">-</span> <span data-id="2"
							class="number">1</span> <span data-id="2" class="plus">+</span>
					</div>
					<span data-id="2"
						class="cart-product__table-details-product__total">360000</span>
				</div>
			</div>
		</div>
		<div class="cart-product__pay">
			<span class="cart-product__pay-total">Tổng tiền: <span>720000</span></span>
			<a href="${pageContext.request.contextPath}/views/web/pay.jsp" class="cart-product__pay-btn-pay">Thanh toán</a>
		</div>
	</div>
</div>