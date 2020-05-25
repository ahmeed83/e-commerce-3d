import React from 'react';
import {
  Button,
  Card,
  CardBody,
  CardHeader,
  Col,
  Container,
  Row
} from 'reactstrap';
import { useLocation } from 'react-router-dom';

export const ProductDetailsPage = () => {
  let location = useLocation();
  const product = location.state.product;

  return (
    <div>
      <Container>
        <Row>
          <Col lg='8'>
            <h1 className='mt-4'>{product.name}</h1>
            <p>Price: {product.price}</p>
            <img
              className='img-fluid rounded'
              src={product.picLocation}
              alt=''
            />
            <p className='lead'>Some information about the product!</p>
          </Col>
          <Col md='4'>
            <Card className='mt-5 my-4'>
              <CardHeader>Information</CardHeader>
              <CardBody>
                <p>Add Product to the shopping card!</p>

                <Button color='primary' outline block>
                  Add to shopping card
                </Button>
              </CardBody>
            </Card>
          </Col>
        </Row>
      </Container>
    </div>
  );
};
