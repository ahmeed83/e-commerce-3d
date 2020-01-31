import React from "react";
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
  FormGroup,
  Input,
  InputGroup,
  InputGroupAddon,
  Row
} from "reactstrap";

import pic from "../../assets/laptop-pic.jpg";
import { Link } from "react-router-dom";

export const ProductListPage = () => {
  const products = [1, 2, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 1, 1, 1];

  return (
    <Row className="pt-5 px-5">
      <Col lg="3">
        <Col>
          <Card>
            <CardHeader>Search</CardHeader>
            <CardBody>
              <InputGroup>
                <InputGroupAddon addonType="append">
                  <Button outline color="success">
                    Search
                  </Button>
                </InputGroupAddon>
                <Input placeholder="Search Products" />
              </InputGroup>
              <br />
              <FormGroup className="pt-4" check>
                <Row style={{ color: "green" }}>
                  {/* <h4>Choose Category</h4> */}
                  <Col lg="8">
                    <Col className="pb-1">
                      <Input type="radio" /> <h5>Laptop</h5>
                    </Col>
                    <Col className="pb-1">
                      <Input type="radio" /> <h5>PC</h5>
                    </Col>
                    <Col className="pb-1">
                      <Input type="radio" /> <h5>iPhone</h5>
                    </Col>
                    <Col className="pb-1">
                      <Input type="radio" /> <h5>MacBook</h5>
                    </Col>
                    <Col className="pb-1">
                      <Input type="radio" /> <h5>Headphone</h5>
                    </Col>
                  </Col>
                </Row>
              </FormGroup>
            </CardBody>
          </Card>
        </Col>
      </Col>
      <Col lg="9">
        <Row>
          {products.map((product, id) => (
            <Col key={id} lg="3" md="2" sm="2" className="py-2 px-2">
              <Link to={`/product/${id}`}>
                <Card>
                  <CardHeader
                    style={{
                      backgroundColor: "black",
                      borderColor: "#333"
                    }}
                  >
                    PC Case
                  </CardHeader>
                  <CardImg top width="100%" src={pic} alt="Card image cap" />
                  <CardBody style={{ backgroundColor: "rgb(54, 53, 74)" }}>
                    <CardTitle>Special Game PC Case</CardTitle>
                    <CardText>Very good pc case.</CardText>
                  </CardBody>
                  <CardFooter
                    style={{
                      backgroundColor: "rgb(54, 53, 74)",
                      borderColor: "black"
                    }}
                  >
                    85 $
                  </CardFooter>
                </Card>
              </Link>
            </Col>
          ))}
        </Row>
      </Col>
    </Row>
  );
};
