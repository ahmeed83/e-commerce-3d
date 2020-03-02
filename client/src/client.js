import { ACCESS_TOKEN } from './common/constants';
const checkStatus = response => {
  if (response.ok) {
    return response;
  } else {
    let error = new Error(response.statusText);
    error.response = response;
    response.json().then(e => {
      error.error = e;
    });
    return Promise.reject(error);
  }
};

export const getProducts = () => fetch('api/resources/products');

export const getOneProduct = productId =>
  fetch(`/api/resources/products/${productId}`);

export const getProductsPageFilter = (name, categoryName, page, sortBy) =>
  fetch(
    `api/resources/products?name=${name}&categoryName=${categoryName}&page=${page}&sortBy=${sortBy}`
  );

export const login = loginInfo =>
  fetch('api/login', {
    headers: { 'Content-Type': 'application/json' },
    method: 'POST',
    body: JSON.stringify(loginInfo)
  }).then(checkStatus);

export const getCustomers = () =>
  fetch('api/management/v1/customers', {
    headers: {
      Authorization: 'Bearer ' + localStorage.getItem(ACCESS_TOKEN),
      'Content-Type': 'application/json'
    },
    method: 'GET'
  });
