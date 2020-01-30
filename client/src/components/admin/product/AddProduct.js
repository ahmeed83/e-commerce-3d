import React from "react";
import {Button, ButtonToggle, Col, Container, Form, FormGroup, Input, Label} from "reactstrap";

export const AddProduct = () => {
    return (
        <Container>
            <h1 className="pt-3">Add Product</h1>
            <Form className="pt-4">
                <FormGroup row>
                    <Label for="productName" sm={2}>
                        Email
                    </Label>
                    <Col>
                        <Input
                            type="text"
                            name="productName"
                            id="productName"
                            placeholder="Insert product name"
                        />
                    </Col>
                </FormGroup>
                <FormGroup row>
                    <Label for="proudPrice" sm={2}>
                        Price
                    </Label>
                    <Col>
                        <Input
                            type="text"
                            name="proudPrice"
                            id="proudPrice"
                            placeholder="Insert product price"
                        />
                    </Col>
                </FormGroup>
                <FormGroup row className="pt-lg-3">
                    <Label for="pic" sm={2}>
                        Pictures
                    </Label>
                    <Col>
                        <ButtonToggle size="lg" outline color="info">
                            Upload
                        </ButtonToggle>
                    </Col>
                </FormGroup>
                <FormGroup className="pt-5">
                    <Button size="lg" className="float-right" outline color="success">
                        Add Product
                    </Button>
                </FormGroup>
            </Form>
        </Container>
    );
};
