import React from 'react'
import {Button, Card, CardFooter, CardHeader, Container, Form} from 'reactstrap'
import "./AuthPage.css";
import CardBody from "reactstrap/es/CardBody";
import FormGroup from "reactstrap/es/FormGroup";
import InputGroup from "reactstrap/es/InputGroup";
import {Link} from "react-router-dom";

export const LoginPage = () => {
  return (
      <div className="py-5 authPage">
        <Container>
          <div className="d-flex justify-content-center h-100">
            <Card className="signin">
              <CardHeader>
                <h3>Sign In</h3>
                <div className="social_icon">
                  <span><i className="fa fa-facebook pr-3"></i></span>
                  <span><i className="fa fa-google pl-3"></i></span>
                </div>
              </CardHeader>
              <CardBody>
                <Form>
                  {/*<div className="input-group form-group">*/}
                  <FormGroup>
                    <InputGroup className="input-group-prepend">
                      <span className="input-group-text">
                        <i className="fa fa-user"></i></span>
                      <input type="text" className="form-control"
                             placeholder="username"/>
                    </InputGroup>
                  </FormGroup>
                  <FormGroup>
                    <InputGroup className="input-group-prepend">
                      <span className="input-group-text">
                        <i className="fa fa-key"></i></span>
                      <input type="password" className="form-control"
                             placeholder="password"/>
                    </InputGroup>
                  </FormGroup>

                  <div className="row align-items-center remember">
                    <input type="checkbox"/>Remember Me
                  </div>

                  <FormGroup>
                    <Button className="float-right" size="lg" outline
                            color="success">
                      Login
                    </Button>
                  </FormGroup>
                </Form>
              </CardBody>

              <CardFooter>
                <div className="d-flex justify-content-center links">
                  Don't have an account?
                  <Link to="/signup">Sign Up</Link>
                </div>
                <div className="d-flex justify-content-center">
                  <Link to="/">Forgot your password?</Link>
                </div>
              </CardFooter>
            </Card>
          </div>
        </Container>
      </div>
  )
}
