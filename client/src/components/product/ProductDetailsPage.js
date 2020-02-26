import React, { useState, useEffect } from 'react';
import {
  Button,
  Card,
  CardBody,
  CardHeader,
  Col,
  Container,
  Row
} from 'reactstrap';
import { useParams } from 'react-router-dom';
import { getOneProduct } from '../../client';
import { Spinner3d } from '../../common/Spinner3d';

export const ProductDetailsPage = () => {
  let { id } = useParams();

  const [loading, setLoading] = useState(false);
  const [product, setProduct] = useState({});

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      getOneProduct(id).then(res =>
        res.json().then(product => {
          setProduct(product);
          setLoading(false);
        })
      );
    };
    fetchData();
  }, [id]);

  return (
    <div>
      {loading ? (
        <Spinner3d />
      ) : (
        <Container>
          <Row>
            <Col lg='8'>
              <h1 className='mt-4'>{product.name}</h1>
              <hr />
              <p>Price: {product.price}</p>
              <img
                className='img-fluid rounded'
                src={product.picLocation}
                alt=''
              />
              <hr />
              <p className='lead'>Some information about the product!</p>
            </Col>
            <Col md='4'>
              <Card className='mt-5 my-4'>
                <CardHeader>Information</CardHeader>
                <CardBody>
                  <p>Add Product to the shopping card!</p>

                  <Button color='success' outline block>
                    Add to shopping card
                  </Button>
                </CardBody>
              </Card>
            </Col>
          </Row>
        </Container>
      )}
    </div>
  );
};
