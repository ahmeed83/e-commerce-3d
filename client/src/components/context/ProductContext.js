import React, { createContext, useState, useEffect } from 'react';
import { getProducts } from '../../client';

export const ProductContext = createContext();

const ProductContextProvider = props => {
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      getProducts().then(res =>
        res.json().then(products => {
          setProducts(products);
          setLoading(false);
        })
      );
    };
    fetchData();
  }, []);

  return (
    <ProductContext.Provider value={{ products, loading }}>
      {props.children}
    </ProductContext.Provider>
  );
};

export default ProductContextProvider;
