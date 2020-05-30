import React, { useState } from 'react';
import {
  Container,
  FormGroup,
  Col,
  Label,
  Input,
  Badge,
  Button,
} from 'reactstrap';
import { Formik, Field, Form } from 'formik';
import * as yup from 'yup';
import { addCategory } from '../../../client';
import { Alert3D } from '../product/Alert3D';

const initialValues = {
  categoryName: '',
};

const validationSchema = yup.object({
  categoryName: yup.string().required('Please add a category!'),
});

export const CategoryOverview = () => {
  const [showModal, setModalVisible] = useState(false);
  const dismissModal = () => setModalVisible(false);
  const [textModal, setTextModal] = useState('');
  const [textColorModal, setTextColorModal] = useState('');

  return (
    <Container>
      <h4 className="pt-3">Add Category</h4>
      <Formik
        className="pt-4"
        initialValues={initialValues}
        validationSchema={validationSchema}
        onSubmit={(category, { setSubmitting, resetForm }) => {
          console.log(category);
          const formData = new FormData();
          formData.append('categoryName', category.categoryName);
          addCategory(formData)
            .then((res) => {
              setModalVisible(true);
              setTextModal('Category with name ' + res.data + ' is Created!');
              setTextColorModal('info');
              resetForm({});
              setSubmitting(false);
            })
            .catch((err) => {
              console.log(err);
              setModalVisible(true);
              setTextModal(
                'There is some error in the server, Try after a while'
              );
              setTextColorModal('warning');
              setSubmitting(false);
            });
        }}
      >
        {({ submitForm, isSubmitting, errors, touched }) => (
          <Col className="pt-4" md={{ size: 8, offset: 2 }}>
            <Alert3D
              visible={showModal}
              text={textModal}
              textColor={textColorModal}
              onDismiss={dismissModal}
            />
            <Form>
              <FormGroup row>
                <Col md="3">
                  <Label for="categoryName">Category Name:</Label>
                </Col>
                <Col md="8">
                  <Field
                    type="categoryName"
                    name="categoryName"
                    placeholder="Insert name of the category"
                    as={Input}
                  />
                  <div className="pt-1">
                    {errors.categoryName && touched.categoryName && (
                      <Badge color="warning">{errors.categoryName}</Badge>
                    )}
                  </div>
                </Col>
              </FormGroup>
              <FormGroup className="pt-5">
                <Field
                  size="lg"
                  className="float-right"
                  outline
                  color="info"
                  onClick={() => submitForm()}
                  disabled={isSubmitting}
                  as={Button}
                >
                  Add Category
                </Field>
              </FormGroup>
            </Form>
          </Col>
        )}
      </Formik>
    </Container>
  );
};
