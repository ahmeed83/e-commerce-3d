export const getProducts = () => fetch('api/resources/products');

export const getOneProduct = productId =>
  fetch(`/api/resources/products/${productId}`);
