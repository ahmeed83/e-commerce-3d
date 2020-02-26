import React from 'react';
import {
  Col,
  Card,
  CardHeader,
  CardBody,
  InputGroup,
  InputGroupAddon,
  Button,
  Input,
  FormGroup,
  Row
} from 'reactstrap';

const ProductSearch = () => {
  return (
    <Col>
      <Card>
        <CardHeader>Search</CardHeader>
        <CardBody>
          <InputGroup>
            <InputGroupAddon addonType='append'>
              <Button outline color='success'>
                Search
              </Button>
            </InputGroupAddon>
            <Input placeholder='Search Products' />
          </InputGroup>
          <FormGroup className='pt-4' check>
            <Row style={{ color: 'green' }}>
              <h5>Choose Category</h5>
              <Col lg='8'>
                <Col className='pb-1'>
                  <Input type='radio' /> Laptop
                </Col>
                <Col className='pb-1'>
                  <Input type='radio' /> PC
                </Col>
                <Col className='pb-1'>
                  <Input type='radio' /> iPhone
                </Col>
                <Col className='pb-1'>
                  <Input type='radio' /> MacBook
                </Col>
                <Col className='pb-1'>
                  <Input type='radio' /> Headphone
                </Col>
              </Col>
            </Row>
          </FormGroup>
        </CardBody>
      </Card>
    </Col>
  );
};

export default ProductSearch;
