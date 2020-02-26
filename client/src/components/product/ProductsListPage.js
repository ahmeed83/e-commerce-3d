import React, {useContext} from 'react';
import {
  Card,
  CardBody,
  CardFooter,
  CardHeader,
  CardImg,
  CardText,
  CardTitle,
  Col,
  Row
} from 'reactstrap';

import { Link } from 'react-router-dom';
import { Carousel3D } from '../shared/Carousel3D';
import ProductSearch from './ProductSearch';
import { ProductContext } from '../context/ProductContext';

export const ProductListPage = () => {
  const products = useContext(ProductContext);
  return (
    <Col>
      <div className='pt-2 px-1'>
        <Carousel3D />
      </div>
      <Row className='pt-2 px-3'>
        <Col lg='3'>
          <ProductSearch value={products}/>
        </Col>
        <Col lg='9'>
          <Row>
            {products.products.map((product, id) => (
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
                    <CardImg top width='100%' src={product.picLocation} alt='Card image cap' />
                    <CardBody style={{ backgroundColor: 'rgb(54, 53, 74)' }}>
                      <CardTitle>{product.name}</CardTitle>
                      <CardText>Very good pc case.</CardText>
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
