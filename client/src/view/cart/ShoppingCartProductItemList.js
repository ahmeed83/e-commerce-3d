import React from 'react';
import ShoppingCartProductItem from './ShoppingCartProductItem';

const ShoppingCartProductItemList = props => {
  return (
    <tbody>
      {props.order.products.map((item, i) => (
        <tr key={i}>
          {/* <th scope="row"></th> */}
          <ShoppingCartProductItem item={item} />
        </tr>
      ))}
    </tbody>
  );
};

export default ShoppingCartProductItemList;
