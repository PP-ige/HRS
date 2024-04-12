const addToCartButtons = document.querySelectorAll('.add-to-cart');
const cartButton = document.getElementById('cart-btn');
const cartItems = document.getElementById('cart-items');
const cartList = document.getElementById('cart-list');
let cartCount = 0;

addToCartButtons.forEach(button => {
  button.addEventListener('click', () => {
    const product = button.getAttribute('data-product');
    addToCart(product);
  });
});

function addToCart(product) {
  cartCount++;
  cartButton.textContent = `View Cart (${cartCount})`;

  const listItem = document.createElement('li');
  listItem.textContent = product;
  cartList.appendChild(listItem);
}

cartButton.addEventListener('click', () => {
  cartItems.classList.toggle('hidden');
});
    
