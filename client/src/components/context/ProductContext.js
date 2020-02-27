import React, { createContext, useState, useEffect } from 'react';
import { getProducts } from '../../client';

export const ProductContext = createContext();

const ProductContextProvider = props => {
  const [productsProvided, setProductsProvided] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      getProducts().then(res =>
        res.json().then(products => {
          setProductsProvided(products.content);
          setLoading(false);
        })
      );
    };
    fetchData();
  }, []);

  return (
    <ProductContext.Provider value={{ productsProvided, loading }}>
      {props.children}
    </ProductContext.Provider>
  );
};

export default ProductContextProvider;
