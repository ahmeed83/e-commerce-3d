import React, { useState, Fragment, useContext } from 'react';
import CounterInput from 'react-counter-input';
import { OrderContext } from '../../services/context/OrderContext';

const ShoppingCartProductItem = props => {
  const [productCount, setProductCount] = useState(props.item.count);

  const order = useContext(OrderContext);

  let product = props.item;

  const deleteProductFromCart = productId => {
    window.location.reload();
    localStorage.removeItem(productId);
  };

  const addCount = e => {
    setProductCount(e);
    order.setTriggerCount(e);
    let newProductCount = { count: e };
    product = { ...product, ...newProductCount };
    localStorage.setItem(props.item.id, JSON.stringify(product));
  };

  return (
    <Fragment>
      <td className="product-remove">
        <a href="#-" onClick={() => deleteProductFromCart(props.item.id)}>
          <i className="ion-android-close"></i>
        </a>
      </td>
      <td className="product-thumbnail">
        <a href="#-">
          <img
            style={{ width: '150px', height: '150px' }}
            src={props.item.picLocation}
            alt=""
          />
        </a>
      </td>
      <td className="product-price">
        <span className="amount">$ {props.item.price * productCount}</span>
      </td>
      <td className="product-price">
        <a href="#-">{productCount}</a>
      </td>
      <td className="cart-plus-minus-shopping-card">
        <CounterInput
          count={productCount}
          min={1}
          max={10}
          onCountChange={addCount}
        />
      </td>
      <td className="product-price">
        <a href="#-">{props.item.price}</a>
      </td>
      <td className="product-price">
        <a href="#-">
          <b style={{ color: 'blue' }}>{props.item.name}</b>
        </a>
      </td>
    </Fragment>
  );
};

export default ShoppingCartProductItem;
