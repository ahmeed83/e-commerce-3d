import React, { useEffect, useState } from 'react';
import { Card, CardBody, CardHeader, Col, Row } from 'reactstrap';
import { getProductsPageFilter } from '../../client';

import { Carousel3D } from '../shared/Carousel3D';
import './Product.css';
import SearchProductsRadio from './SearchProductsRadio';
import SearchProductsInput from './SearchProductsInput';
import SearchProductsReset from './SearchProductsReset';
import Products from './Products';
import ProductPagination from './ProductPagination';

export const ProductListPage = () => {
  const [productsProvidedFiltered, setProductsProvidedFiltered] = useState([]);
  const [productName, setProductName] = useState('');
  const [categoryName, setCategoryName] = useState('');
  const [pageNumber, setPageNumber] = useState(0);
  const [totalPages, setTotalPages] = useState(0);
  const reset = resetFun(setPageNumber, setProductName, setCategoryName);
  const searchHandler = searchFun(
    productName,
    setCategoryName,
    categoryName,
    setProductName
  );
  useProducts(
    productName,
    categoryName,
    pageNumber,
    setTotalPages,
    setProductsProvidedFiltered
  );

  return (
    <Col style={{color: 'skyblue'}}>
      <div className='pt-2 px-1'>
        <Carousel3D />
      </div>
      <Row className='pt-2 px-2'>
        <Col lg='3'>
          <Card>
            <CardHeader>Search</CardHeader>
            <CardBody>
              <SearchProductsReset reset={reset} />
              <SearchProductsInput searchHandler={searchHandler} />
              <SearchProductsRadio searchHandler={searchHandler} />
            </CardBody>
          </Card>
        </Col>
        <Col lg='9'>
          <Card>
            <CardHeader>
              Products
              <div className='float-right'>
                <ProductPagination
                  setPageNumber={setPageNumber}
                  totalPages={totalPages}
                  pageNumber={pageNumber}
                />
              </div>
            </CardHeader>
            <CardBody>
              <Products productsProvidedFiltered={productsProvidedFiltered} />
            </CardBody>
          </Card>
        </Col>
      </Row>
    </Col>
  );
};

function useProducts(
  productName,
  categoryName,
  pageNumber,
  setTotalPages,
  setProductsProvidedFiltered
) {
  useEffect(() => {
    const fetchData = async () => {
      getProductsPageFilter(productName, categoryName, pageNumber, 'name').then(
        res =>
          res.json().then(products => {
            console.log(products);
            setTotalPages(products.totalPages);
            setProductsProvidedFiltered(products.content);
          })
      );
    };
    fetchData();
  }, [
    productName,
    categoryName,
    pageNumber,
    setTotalPages,
    setProductsProvidedFiltered
  ]);
}

function searchFun(productName, setCategoryName, categoryName, setProductName) {
  return event => {
    if (productName && event.target.type === 'radio') {
      setCategoryName(event.target.value);
      return;
    } else if (categoryName && event.type === 'click') {
      setProductName(event.target.value);
      event.target.value = '';
    }
    if (event.type === 'click') {
      setProductName(document.getElementById('searchInput').value);
      document.getElementById('searchInput').value = '';
    }
    if (event.target.type === 'radio') {
      setCategoryName(event.target.value);
    }
  };
}

function resetFun(setPageNumber, setProductName, setCategoryName) {
  return () => {
    setPageNumber(0);
    setProductName('');
    setCategoryName('');
    document.getElementById('searchInput').value = '';
    document.getElementById('Laptop').checked = false;
    document.getElementById('PC').checked = false;
    document.getElementById('Headphone').checked = false;
    document.getElementById('MacBook').checked = false;
    document.getElementById('iPhone').checked = false;
  };
}
