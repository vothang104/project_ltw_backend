

function handleLike() {
	const _this = this;
	const labelNames = document.querySelectorAll('.product__name');
	const p = [...labelNames].find(labelName => labelName.dataset.id === _this.dataset.id);
	const toastEl = document.createElement('div');
	toastEl.classList.add('toast');
	const html = `
      <div class="toast__icon">
          <i class="fas fa-check-circle"></i>
      </div>
      <p class="toast__message">
          Bạn đã thêm sản phẩm ${p.innerText} vào yêu thích
      </p>
  `;
	toastEl.innerHTML = html;
	const toastBounding = document.querySelector('.toast-wrap');
	toastBounding.insertAdjacentElement('afterbegin', toastEl);
	timeout = setTimeout(() => {
		toastBounding.removeChild(toastEl);
	}, 3000);
}
