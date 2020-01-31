import React from 'react'
import {
  Button,
  Card,
  CardBody,
  CardHeader,
  Col,
  Container,
  Row
} from "reactstrap";
import pic from "../../assets/laptop-pic.jpg"

export const ProductDetailsPage = () => {

  return (
      <Container>
        <Row>
          <Col lg="8">
            <h1 className="mt-4">Post Title</h1>
            <hr/>
            <p>Posted on January 1, 2019 at 12:00 PM</p>
            <img className="img-fluid rounded" src={pic}
                 alt=""/>
            <hr/>

            <p className="lead">Some information about the product!</p>

          </Col>
          <Col md="4">
            <Card className="mt-5" my-4>
              <CardHeader>
                Information
              </CardHeader>
              <CardBody>
                <p>Add Product to the shopping card!</p>

                <Button color="success" outline block>Add to shopping card</Button>
              </CardBody>
            </Card>
          </Col>
        </Row>
      </Container>
  )
}
