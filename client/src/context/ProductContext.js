import React, { createContext, useState, useEffect } from 'react';
import { getProductsPageFilter } from '../client';

export const ProductContext = createContext();

const ProductContextProvider = props => {
  const [loading, setLoading] = useState(false);
  const [productName, setProductName] = useState('');
  const [categoryName, setCategoryName] = useState('');
  const [productsProvidedFiltered, setProductsProvidedFiltered] = useState([]);
  const [pageNumber, setPageNumber] = useState(0);
  const [totalPages, setTotalPages] = useState(0);

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      getProductsPageFilter(productName, categoryName, pageNumber, 'name').then(
        res =>
          res.json().then(products => {
            setTotalPages(products.totalPages);
            setProductsProvidedFiltered(products.content);
            setLoading(false);
          })
      );
    };
    fetchData();
  }, [productName, categoryName, pageNumber]);

  return (
    <ProductContext.Provider
      value={{
        pageNumber,
        setProductName,
        setCategoryName,
        setPageNumber,
        productsProvidedFiltered,
        totalPages,
        loading
      }}
    >
      {props.children}
    </ProductContext.Provider>
  );
};

export default ProductContextProvider;
