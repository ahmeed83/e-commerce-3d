import React, { createContext, useState, useEffect } from 'react';

export const OrderContext = createContext();

const OrderContextProvider = props => {
  const products = [];

  Object.keys(localStorage).forEach(function(key) {
    products.push(JSON.parse(localStorage.getItem(key)));
  });

  const [totalPrice, setTotalPrice] = useState(0);
  const [triggerCount, setTriggerCount] = useState(0);

  useEffect(() => {
    setTotalPrice(
      products.reduce(function(index, product) {
        return index + parseInt(product.price * product.count);
      }, 0)
    );
  }, [products, triggerCount]);

  return (
    <OrderContext.Provider
      value={{
        totalPrice,
        setTriggerCount,
        products,
      }}
    >
      {props.children}
    </OrderContext.Provider>
  );
};

export default OrderContextProvider;
