import React from 'react';
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

const Products = props => {
  return (
    <Row>
      {props.productsProvidedFiltered.map((product, id) => (
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
  );
};

export default Products;
