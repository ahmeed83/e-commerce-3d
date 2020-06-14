import React from 'react';

const ProductListItemShoppingCartSideBar = props => {
  return (
    <div style={{ all: 'unset' }}>
      {props.products.map((item, i) => (
        <li key={i} className="single-product-cart">
          <div className="cart-img">
            <a href="/">
              <img
                style={{ width: '80px', height: '80px' }}
                src={item.picLocation}
                alt=""
              />
            </a>
          </div>
          <div className="cart-title">
            <h3>
              <a href="/">{item.name}</a>
            </h3>
            <span>$ {item.price}</span>
          </div>
          <div className="cart-delete">
            <a href="#-" onClick={() => props.deleteProductFromCart(item.id)}>
              <i className="ion-ios-trash-outline"></i>
            </a>
          </div>
        </li>
      ))}
    </div>
  );
};

export default ProductListItemShoppingCartSideBar;
