import React, { useState } from 'react';
import CounterInput from 'react-counter-input';

const ShoppingCartProductItemList = () => {
  const products = [];
  const [productCount, setProductCount] = useState(1);

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
            <a href="#-">
              <img
                style={{ width: '150px', height: '150px' }}
                src={item.picLocation}
                alt=""
              />
            </a>
          </td>
          <td className="cart-plus-minus-shopping-card">
            <CounterInput
              count={2 - 1}
              min={1}
              max={10}
              onCountChange={count => setProductCount(count)}
            />
          </td>
          <td className="product-name">
            <a href="#-">{item.name}</a>
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
