import React from 'react'
import {
  Button,
  Col,
  Container,
  FormGroup,
  Input,
  Label,
  Row,
  Table
} from 'reactstrap'
import {Link} from "react-router-dom";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faTrash} from "@fortawesome/free-solid-svg-icons";

export const ShoppingCardPage = () => {
  const deleteIcon = <FontAwesomeIcon icon={faTrash}/>;
  return (
      <Container className="pt-4">
        <Row>
          <Col>
            <h1 className="pb-3">Shopping card</h1>
          </Col>
          <Col>
            <Link to="/add-product">
              <Button className="float-right" outline color="success">
                Product
              </Button>
            </Link>
          </Col>
        </Row>
        <Table>
          <thead>
          <tr>
            <th style={{width: "5%"}}>#</th>
            <th style={{width: "45%"}}>Product Name</th>
            <th style={{width: "20%"}}>Quantity</th>
            <th style={{width: "20%"}}>Price</th>
            <th style={{width: "20%"}}>Total</th>
            <th style={{width: "20%"}}>Remove</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <th scope="row">1</th>
            <td>MacBook 15</td>
            <td>
              <FormGroup className="mb-2 mr-sm-2 mb-sm-0">
                <Input type="email" name="email" id="exampleEmail"/>
              </FormGroup>
            </td>
            <td>
              1300 $
            </td>
            <td>
              $ 1500
            </td>
            <td>
              <Button size="md" color="danger">
                {deleteIcon}
              </Button>
            </td>
          </tr>
          <hr/>
          </tbody>
        </Table>
        <ColoredLine color="black" height={1}/>
        <Row>
          <Col lg="6">{""}</Col>
          <Col lg="3">
            Subtotal
          </Col>
          <Col lg="3">
            $24.59
          </Col>
        </Row>
        <br/>
        <ColoredLine color="black" height={5}/>
        <Row>
          <Col lg="6">{""}</Col>
          <Col lg="3">
            <h5>Subtotal</h5>
          </Col>
          <Col lg="3">
            <h3>$24.59</h3>
          </Col>
        </Row>
        <ColoredLine color="black" height={1}/>
        <Row>
          <Col lg="6">{""}</Col>
          <Col lg="3">
            <Button color="secondary">Continue Shopping</Button>
          </Col>
          <Col lg="3">
            <Button color="success">Check out</Button>
          </Col>
          <ColoredLine color="black" height={1}/>
        </Row>
      </Container>
  )
}

const ColoredLine = ({color, height}) => (
    <hr
        style={{
          color: color,
          backgroundColor: color,
          height: height
        }}
    />
);