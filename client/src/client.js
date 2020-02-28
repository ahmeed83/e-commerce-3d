export const getProducts = () => fetch('api/resources/products');

export const getOneProduct = productId =>
  fetch(`/api/resources/products/${productId}`);

export const getProductsPageFilter = (name, categoryName, page, sortBy) =>
  fetch(
    `api/resources/products?name=${name}&categoryName=${categoryName}&page=${page}&sortBy=${sortBy}`
  );
