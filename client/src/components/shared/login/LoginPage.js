import React from 'react';
import {
  Button,
  Card,
  CardFooter,
  CardHeader,
  Container,
  Input,
  Badge
} from 'reactstrap';
import './AuthPage.css';
import CardBody from 'reactstrap/es/CardBody';
import FormGroup from 'reactstrap/es/FormGroup';
import InputGroup from 'reactstrap/es/InputGroup';
import { Link } from 'react-router-dom';
import { Formik, Field, Form } from 'formik';
import * as yup from 'yup';

import { login } from '../../../client';
import { ACCESS_TOKEN } from '../../../common/constants';
import { USER } from '../../../common/constants';

const validationSchema = yup.object({
  userName: yup.string().required('User name is required'),
  password: yup.string().required('Password is required')
});

export const LoginPage = props => {
  return (
    <div className='py-5 authPage'>
      <Container>
        <div className='d-flex justify-content-center h-100'>
          <Card className='signin'>
            <CardHeader>
              <h3>Sign In</h3>
              {/* <div className="social_icon">
                  <span><i className="fa fa-facebook pr-3"></i></span>
                  <span><i className="fa fa-google pl-3"></i></span>
                </div> */}
            </CardHeader>
            <CardBody>
              <Formik
                initialValues={{
                  userName: '',
                  password: ''
                  // rememberMe: false
                }}
                validationSchema={validationSchema}
                onSubmit={loginInfo => {
                  login(loginInfo)
                    .then(response => {
                      // props.onSuccess();
                      console.log(response);
                      localStorage.setItem(ACCESS_TOKEN, response.headers.get('Authorization'));
                      localStorage.setItem(USER, response.headers.get('user'));
                      window.location = '/';
                    })
                    .catch(err => {
                      // props.onFailure(err);
                      console.log(err);
                    });
                }}
              >
                {({ errors, touched, isSubmitting }) => (
                  <Form>
                    <FormGroup>
                      <InputGroup className='input-group-prepend'>
                        <span className='input-group-text'>
                          <i className='fa fa-user'></i>
                        </span>
                        <Field
                          placeholder='username'
                          name='userName'
                          type='text'
                          as={Input}
                        />
                      </InputGroup>
                      {errors.userName && touched.userName && (
                        <Badge color='warning'>{errors.userName}</Badge>
                      )}
                    </FormGroup>
                    <FormGroup>
                      <InputGroup className='input-group-prepend'>
                        <span className='input-group-text'>
                          <i className='fa fa-key'></i>
                        </span>
                        <Field
                          placeholder='password'
                          name='password'
                          type='text'
                          as={Input}
                        />
                      </InputGroup>
                      {errors.password && touched.password && (
                        <Badge color='warning'>{errors.password}</Badge>
                      )}
                    </FormGroup>
                    <FormGroup>
                      <Button
                        disabled={isSubmitting}
                        type='submit'
                        className='float-right'
                        size='lg'
                        outline
                        color='primary'
                      >
                        Login
                      </Button>
                    </FormGroup>

                    <div className='row align-items-center remember'>
                      <Field name='rememberMe' type='checkbox' />
                      Remember Me
                    </div>
                  </Form>
                )}
              </Formik>
            </CardBody>

            <CardFooter>
              <div className='d-flex justify-content-center links'>
                Don't have an account?
                <Link to='/signup'>Sign Up</Link>
              </div>
              <div className='d-flex justify-content-center'>
                <Link to='/'>Forgot your password?</Link>
              </div>
            </CardFooter>
          </Card>
        </div>
      </Container>
    </div>
  );
};
