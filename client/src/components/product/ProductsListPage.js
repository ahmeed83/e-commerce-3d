import React, { useContext, useState } from 'react';
import { Card, CardBody, CardHeader, Col, Row } from 'reactstrap';

import { Carousel3D } from '../shared/Carousel3D';
import './Product.css';
import SearchProductsRadio from './SearchProductsRadio';
import SearchProductsInput from './SearchProductsInput';
import SearchProductsReset from './SearchProductsReset';
import Products from './Products';
import ProductPagination from './ProductPagination';
import Loading from '../shared/Loading';
import { ProductContext } from '../../context/ProductContext';


export const ProductListPage = () => {
  const products = useContext(ProductContext);
  const reset = resetFun(
    products.setPageNumber,
    products.setProductName,
    products.setCategoryName
  );
  const searchHandlerText = searchText(
    products.setPageNumber,
    products.setProductName
  );
  const searchHandlerRadio = searchRadio(
    products.setPageNumber,
    products.setCategoryName
  );

  return (
    <div>
      <Col style={{ color: 'skyblue' }}>
        <div className='pt-2 px-1'>
          <Carousel3D />
        </div>

        <Row className='pt-2 px-2'>
          <Col lg='3'>
            <Card>
              <CardHeader>Search</CardHeader>
              <CardBody>
                <SearchProductsReset reset={reset} />
                <SearchProductsInput searchHandler={searchHandlerText} />
                <SearchProductsRadio searchHandler={searchHandlerRadio} />
              </CardBody>
            </Card>
          </Col>
          <Col lg='9'>
            <Card>
              <CardHeader>
                Products
                <div className='float-right'>
                  <ProductPagination
                    setPageNumber={products.setPageNumber}
                    totalPages={products.totalPages}
                  />
                </div>
              </CardHeader>
              {products.loading ? (
                <Loading />
              ) : (
                <CardBody>
                  <Products
                    productsProvidedFiltered={products.productsProvidedFiltered}
                  />
                </CardBody>
              )}
            </Card>
          </Col>
        </Row>
      </Col>
    </div>
  );
};

function searchText(setPageNumber, setProductName) {
  return event => {
    if (event.type === 'click') {
      setPageNumber(0);
      setProductName(document.getElementById('searchInput').value);
      document.getElementById('searchInput').value = '';
    }
  };
}

function searchRadio(setPageNumber, setCategoryName) {
  return event => {
    setPageNumber(0);
    setCategoryName(event.target.value);
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
