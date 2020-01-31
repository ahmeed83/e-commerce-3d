import React from 'react'
import {Button, Card, CardFooter, CardHeader, Container, Form} from 'reactstrap'
import "./AuthPage.css";
import CardBody from "reactstrap/es/CardBody";
import FormGroup from "reactstrap/es/FormGroup";
import InputGroup from "reactstrap/es/InputGroup";
import {
  FacebookLoginButton,
  GoogleLoginButton
} from "react-social-login-buttons";

export const SignUpPage = () => {
  return (
      <div className="py-5 authPage">
        <Container>
          <div className="d-flex justify-content-center h-100">
            <Card className="signup">
              <CardHeader>
                <h3>Sign Up</h3>
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

                  <FormGroup>
                    <InputGroup className="input-group-prepend">
                      <span className="input-group-text">
                        <i className="fa fa-mobile"></i></span>
                      <input type="number" className="form-control"
                             placeholder="mobile number"/>
                    </InputGroup>
                  </FormGroup>
                  <FormGroup>
                    <InputGroup className="input-group-prepend">
                      <span className="input-group-text">
                        <i className="fa fa-mail-forward"></i></span>
                      <input type="mail" className="form-control"
                             placeholder="e-mail"/>
                    </InputGroup>
                  </FormGroup>

                  <FormGroup>
                    <Button className="float-right" size="lg" outline
                            color="success">
                      Sign UP
                    </Button>
                  </FormGroup>
                </Form>
              </CardBody>

              <CardFooter>
                <div className="d-flex justify-content-center links">
                  Or sign up with Facebook or google
                </div>
                <FormGroup>
                  <FacebookLoginButton onClick={() => alert("Hello")}/>
                </FormGroup>
                <FormGroup>
                  <GoogleLoginButton onClick={() => alert("Hello")}/>
                </FormGroup>
              </CardFooter>
            </Card>
          </div>
        </Container>
      </div>
  )
}
