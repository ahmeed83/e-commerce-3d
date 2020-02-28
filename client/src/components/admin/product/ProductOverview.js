import React from "react";
import { Container, Table, Button, Row, Col } from "reactstrap";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faEdit } from "@fortawesome/free-solid-svg-icons";
import { faTrash } from "@fortawesome/free-solid-svg-icons";
import { Link } from "react-router-dom";

export const ProductOverview = () => {
  const editIcon = <FontAwesomeIcon icon={faEdit} />;
  const deleteIcon = <FontAwesomeIcon icon={faTrash} />;

  const products = [1, 2, 3, 4, 1, 1, 1, 1, 1, 1];

  return (
    <Container className="pt-4">
      <Row>
        <Col>
          <h1 className="pb-3">Products overview</h1>
        </Col>
        <Col>
          <Link to="/add-product">
            <Button className="float-right" outline color="primary">
              Add new Product
            </Button>
          </Link>
        </Col>
      </Row>
      <Table>
        <thead>
          <tr>
            <th style={{ width: "5%" }}>#</th>
            <th style={{ width: "45%" }}>Name</th>
            <th style={{ width: "30%" }}>Price</th>
            <th style={{ width: "10%" }}>Edit</th>
            <th style={{ width: "10%" }}>Delete</th>
          </tr>
        </thead>
        <tbody>
          {products.map((product, id) => (
            <tr key={id}>
              <th scope="row">1</th>
              <td>MacBook 15</td>
              <td>1300 $</td>
              <td>
                <Button size="md" color="primary">
                  {editIcon}
                </Button>
              </td>
              <td>
                <Button size="md" color="danger">
                  {deleteIcon}
                </Button>
              </td>
            </tr>
          ))}
        </tbody>
      </Table>
    </Container>
  );
};
