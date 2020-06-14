import React from 'react';

const ShoppingCartProductItemList = () => {
  const products = [];

  Object.keys(localStorage).forEach(function(key) {
    products.push(JSON.parse(localStorage.getItem(key)));
  });

  const deleteProductFromCart = productId => {
    localStorage.removeItem(productId);
  };

  return (
    <tbody>
      {products.map((item, i) => (
        <tr key={i}>
          <td className="product-remove">
            <a href="#-" onClick={() => deleteProductFromCart(item.id)}>
              <i className="ion-android-close"></i>
            </a>
          </td>
          <td className="product-thumbnail">
            <a href="/">
              <img
                style={{ width: '100px', height: '100px' }}
                src={item.picLocation}
                alt=""
              />
            </a>
          </td>
          <td className="product-name">
            <a href="/">{item.name}</a>
          </td>
          <td className="product-price">
            <span className="amount">$ {item.price}</span>
          </td>
        </tr>
      ))}
    </tbody>
  );
};

export default ShoppingCartProductItemList;
