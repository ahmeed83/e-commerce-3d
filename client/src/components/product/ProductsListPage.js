import React, { useContext, useEffect, useState } from 'react';
import {
  Button,
  Card,
  CardBody,
  CardFooter,
  CardHeader,
  CardImg,
  CardText,
  CardTitle,
  Col,
  CustomInput,
  Form,
  FormGroup,
  Input,
  InputGroup,
  InputGroupAddon,
  Label,
  Row
} from 'reactstrap';

import { Link } from 'react-router-dom';
import { Carousel3D } from '../shared/Carousel3D';
import { ProductContext } from '../context/ProductContext';
import Pagination3D from './Pagination3D';
import './Product.css';

export const ProductListPage = () => {
  const products = useContext(ProductContext);
  const productList = products.productsProvided;
  const [searchInput, setSearchInput] = useState('');
  const [filteredProducts, setFilteredProducts] = useState(productList);
  const [searchTextState, setSearchTextState] = useState(false);
  const [searchRadioState, setSearchRadioState] = useState(false);

  useEffect(() => {
    setFilteredProducts(productList);
  }, [productList]);

  const reset = () => {
    setFilteredProducts(productList);
    document.getElementById('searchInput').value = '';
    document.getElementById('Laptop').checked = false;
    document.getElementById('PC').checked = false;
    document.getElementById('Headphone').checked = false;
    document.getElementById('MacBook').checked = false;
    document.getElementById('iPhone').checked = false;
    setSearchTextState(false);
    setSearchRadioState(false);
  };

  const searchTextHandler = () => {
    if (searchRadioState) {
      setFilteredProducts(
        filteredProducts.filter(product =>
          product.name.toLowerCase().includes(searchInput.toLowerCase())
        )
      );
    } else {
      setFilteredProducts(
        productList.filter(product =>
          product.name.toLowerCase().includes(searchInput.toLowerCase())
        )
      );
      setSearchTextState(true);
    }
    document.getElementById('searchInput').value = '';
  };

  const searchRadioHandler = event => {
    if (searchTextState) {
      setFilteredProducts(
        filteredProducts.filter(product =>
          product.category.name.includes(event.target.value)
        )
      );
    } else {
      setFilteredProducts(
        productList.filter(product =>
          product.category.name.includes(event.target.value)
        )
      );
      setSearchRadioState(true);
    }
  };

  const inputHandler = event => {
    if (event.key === 'Enter') {
      event.preventDefault();
      setSearchInput(event.target.value);
      searchTextHandler();
      event.target.value = '';
    } else {
      setSearchInput(event.target.value);
    }
  };

  return (
    <Col>
      <div className='pt-2 px-1'>
        <Carousel3D />
      </div>
      <Row className='pt-2 px-2'>
        <Col lg='3'>
          <Form>
            <Card>
              <CardHeader>Search</CardHeader>
              <CardBody>
                <FormGroup className='pb-3'>
                  <Button onClick={reset} outline color='success' block>
                    Reset
                  </Button>
                </FormGroup>
                <FormGroup>
                  <InputGroup>
                    <InputGroupAddon addonType='prepend'>
                      <Button onClick={searchTextHandler} outline color='success'>
                        Search
                      </Button>
                    </InputGroupAddon>
                    <Input
                      id='searchInput'
                      onChange={inputHandler}
                      onKeyPress={inputHandler}
                      placeholder='Search Products'
                    />
                  </InputGroup>
                </FormGroup>
                <FormGroup className='pl-2' style={{ color: 'green' }}>
                  <Label>Choose Category</Label>
                  <div>
                    <CustomInput
                      type='radio'
                      id='Laptop'
                      name='customRadio'
                      label='Laptop'
                      value='Laptop'
                      onClick={searchRadioHandler}
                    />
                    <CustomInput
                      type='radio'
                      id='PC'
                      name='customRadio'
                      label='PC'
                      value='PC'
                      onClick={searchRadioHandler}
                    />
                    <CustomInput
                      type='radio'
                      id='Headphone'
                      name='customRadio'
                      label='Headphone'
                      value='Headphone'
                      onClick={searchRadioHandler}
                    />
                    <CustomInput
                      type='radio'
                      id='MacBook'
                      name='customRadio'
                      label='MacBook'
                      value='MacBook'
                      onClick={searchRadioHandler}
                    />
                    <CustomInput
                      type='radio'
                      id='iPhone'
                      name='customRadio'
                      label='iPhone'
                      value='iPhone'
                      onClick={searchRadioHandler}
                    />
                  </div>
                </FormGroup>
              </CardBody>
            </Card>
          </Form>
        </Col>
        <Col lg='9'>
          <Row>
            <Col lg='8'> </Col>
            <Col lg='4' className='pt-3 float-right'>
              <Pagination3D />
            </Col>
          </Row>
          <Row>
            {filteredProducts.map((product, id) => (
              <Col key={id} lg='3' md='2' sm='2' className='py-2 px-2'>
                <Link to={`/product/${product.id}`}>
                  <Card>
                    <CardHeader
                      style={{
                        backgroundColor: 'black',
                        borderColor: '#333'
                      }}
                    >
                      {product.name}
                    </CardHeader>
                    <CardImg
                      top
                      width='100%'
                      src={product.picLocation}
                      alt='Card image cap'
                    />
                    <CardBody style={{ backgroundColor: 'rgb(54, 53, 74)' }}>
                      <CardTitle>{product.name}</CardTitle>
                      <CardText>{product.category.name}</CardText>
                    </CardBody>
                    <CardFooter
                      style={{
                        backgroundColor: 'rgb(54, 53, 74)',
                        borderColor: 'black'
                      }}
                    >
                      {product.price} $
                    </CardFooter>
                  </Card>
                </Link>
              </Col>
            ))}
          </Row>
        </Col>
      </Row>
    </Col>
  );
};
