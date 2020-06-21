import React, { useState, useContext } from 'react';
import { Container, Col, Row, Label, Input, Badge, Spinner } from 'reactstrap';
import { Formik, Form, Field } from 'formik';
import * as yup from 'yup';
import { addOrder } from '../../services/client';
import { Alert3D } from '../../components/common/Alert3D';
import PrintButton from './pdf/PrintButton';
import ResetPagePDF from './pdf/ResetPagePDF';
import { OrderContext } from '../../services/context/OrderContext';

const CheckoutPage = () => {
  const order = useContext(OrderContext);
  const orderedProducts = [];

  order.products.forEach(product =>
    orderedProducts.push({
      productId: product.id,
      productCount: product.count,
    })
  );

  const initialValues = {
    name: '',
    city: '',
    companyName: '',
    district: '',
    district2: '',
    mobileNumber: '',
    email: '',
    notes: '',
    orderedProducts: orderedProducts,
  };

  const validationSchema = yup.object({
    name: yup.string().required('رجاء اضافة الاسم'),
    city: yup.string().required('رجاء اضافة اسم المدينة'),
    district: yup.string().required('رجاء اضافة اسم المنطقة'),
    mobileNumber: yup.string().required('رجاء اضافة رقم التلفون'),
    orderedProducts: yup
      .string()
      .required('رجاء اضافة بضاعة الى سلة المشتريات'),
  });

  const [showModal, setModalVisible] = useState(false);
  const dismissModal = () => setModalVisible(false);
  const [textModal, setTextModal] = useState('');
  const [textColorModal, setTextColorModal] = useState('');

  return (
    <Formik
      initialValues={initialValues}
      validationSchema={validationSchema}
      onSubmit={(order, { setSubmitting, resetForm }) => {
        addOrder(order)
          .then(res => {
            setModalVisible(true);
            setTextModal(
              <div>
                <PrintButton
                  id={'resetPage'}
                  fileName={res.data.orderTrackId}
                />
                <p></p>
                <h4 style={{ color: 'blue' }}>
                  لقد استلمنا الطلبية، الرجاء الاحتفاظ برقم الطلبية جيدا
                </h4>
                <h6>لقد تم ارسال فاتوة الشراء الى ايميلك</h6>
                <ResetPagePDF id={'resetPage'} data={res.data} />
              </div>
            );
            setTextColorModal('info');
            setSubmitting(false);
            localStorage.clear();
            resetForm({});
          })
          .catch(err => {
            setModalVisible(true);
            if (err.response.data.status === 409) {
              setTextColorModal('secondary');
              setTextModal(err.response.data.errorMessage);
            } else {
              setTextColorModal('warning');
              setTextModal(
                'There is some error in the server, Try after a while'
              );
            }
            setSubmitting(false);
          });
      }}
    >
      {({ isSubmitting, errors, touched, resetForm }) => (
        <div>
          <Alert3D
            visible={showModal}
            text={textModal}
            textColor={textColorModal}
            onDismiss={dismissModal}
          />
          <Container>
            <Form action="/">
              <div className="checkbox-page ptb-100">
                <Row>
                  <Col className="mt-5 lg-12 md-12 12">
                    <div className="your-order">
                      <h3>البضاعة المطلوبة</h3>
                      <div className="your-order-table table-responsive">
                        <table>
                          <thead>
                            <tr>
                              <th className="product-total">السعر</th>
                              <th className="product-name">العدد</th>
                              <th className="product-name">المنتج</th>
                            </tr>
                          </thead>
                          {order.products.map((item, i) => (
                            <tbody key={i}>
                              <tr className="cart_item">
                                <td className="product-total">
                                  <span className="amount">
                                    {item.price * item.count} $
                                  </span>
                                </td>
                                <td className="product-name">{item.count}</td>
                                <td className="product-name">{item.name}</td>
                              </tr>
                            </tbody>
                          ))}
                          <tfoot>
                            <tr className="order-total">
                              <td>
                                <strong>
                                  <span className="amount">
                                    {order.totalPrice} $
                                  </span>
                                </strong>
                              </td>
                              <th>السعر الأجمالي</th>
                            </tr>
                          </tfoot>
                        </table>
                      </div>
                      <div className="payment-method">
                        <div className="payment-accordion">
                          <div className="panel-group" id="faq">
                            <div className="panel panel-default">
                              <div className="panel-heading">
                                <h5 className="panel-title">
                                  <a
                                    data-toggle="collapse"
                                    aria-expanded="true"
                                    data-parent="/faq"
                                    href="/payment-1"
                                  >
                                    الدفع عند الاستلام
                                  </a>
                                </h5>
                              </div>
                              <div
                                id="payment-1"
                                className="panel-collapse collapse show"
                              >
                                <div className="panel-body">
                                  <p>سوف نقوم بجلب البضاعة اليك</p>
                                  <p>
                                    ان كنت ترغب بحجز البضاعة والقدوم لأستلامها
                                    في المحل، هذا جائز ايضا
                                  </p>
                                  <p>
                                    (Order Id) الرجاء استخدام رقم الوصل اذا كان
                                    عندك اي سؤال على البضاعة
                                  </p>
                                  <p>
                                    سوف نرسل لك ايميل يحتوي علي قائمة المشتريات
                                    وعلى رقم الوصل حال طلبك للبضاعة
                                  </p>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div className="pt-1">
                            {errors.orderedProducts &&
                              touched.orderedProducts && (
                                <Badge color="warning">
                                  {errors.orderedProducts}
                                </Badge>
                              )}
                          </div>
                          <div className="order-button-payment">
                            <Field
                              name="أطلب البضاعة"
                              value="orderedProducts"
                              type="submit"
                              disabled={isSubmitting}
                              placeholder=""
                              as={Input}
                            >
                              {isSubmitting ? (
                                <Spinner color="#fff" size="24" />
                              ) : null}
                              أطلب البضاعة
                            </Field>
                          </div>
                        </div>
                      </div>
                    </div>
                  </Col>
                  <Col className="lg-12 md-12 12">
                    <div className="checkbox-form">
                      <h3>عنوان تسلم البضاعة</h3>
                      <Row>
                        <Col className="md-12">
                          <div className="checkout-form-list">
                            <Label>
                              المحافظة
                              <span className="required"> *</span>
                            </Label>
                            <Field
                              type="select"
                              dir="rtl"
                              name="city"
                              placeholder=""
                              as={Input}
                            >
                              <option>اختر مدينة</option>
                              <option value="Baghdad">بغداد</option>
                              <option value="Basra">البصرة</option>
                              <option value="Mosul">الموصل</option>
                              <option value="Najaf">النجف</option>
                              <option value="Karbala">كربلاء</option>
                              <option value="Amarah">العمارة</option>
                              <option value="Nasryah">الناصرية</option>
                              <option value="North-iraq">الشمال</option>
                            </Field>
                            <div className="pt-1">
                              {errors.city && touched.city && (
                                <Badge color="warning">{errors.city}</Badge>
                              )}
                            </div>
                          </div>
                        </Col>
                        <Col className="col-md-12">
                          <div className="checkout-form-list">
                            <Label>
                              الأسم<span className="required"> *</span>
                            </Label>
                            <Field name="name" placeholder="" as={Input} />
                            <div className="pt-1">
                              {errors.name && touched.name && (
                                <Badge color="warning">{errors.name}</Badge>
                              )}
                            </div>
                          </div>
                        </Col>
                        <Col className="col-md-12">
                          <div className="checkout-form-list">
                            <Label>أسم الشركة</Label>
                            <Field
                              type="text"
                              name="companyName"
                              placeholder=""
                              as={Input}
                            />
                          </div>
                        </Col>
                        <Col className="col-md-12">
                          <div className="checkout-form-list">
                            <Label>
                              أسم المنطقة <span className="required"> *</span>
                            </Label>
                            <Field
                              type="text"
                              name="district"
                              placeholder=""
                              as={Input}
                            />
                            <div className="pt-1">
                              {errors.district && touched.district && (
                                <Badge color="warning">{errors.district}</Badge>
                              )}
                            </div>
                          </div>
                        </Col>
                        <Col className="col-md-12">
                          <div className="checkout-form-list">
                            <Label>أقرب منطقة دالة</Label>
                            <Field
                              type="text"
                              name="district2"
                              placeholder=""
                              as={Input}
                            />
                          </div>
                        </Col>
                        <Col className="col-md-6">
                          <div className="checkout-form-list">
                            <Label>الايميل</Label>
                            <Field
                              type="text"
                              name="email"
                              placeholder=""
                              as={Input}
                            />
                          </div>
                        </Col>
                        <Col className="col-md-6">
                          <div className="checkout-form-list">
                            <Label>
                              رقم التلفون <span className="required"> *</span>
                            </Label>
                            <Field
                              type="text"
                              name="mobileNumber"
                              placeholder=""
                              as={Input}
                            />
                            <div className="pt-1">
                              {errors.mobileNumber && touched.mobileNumber && (
                                <Badge color="warning">
                                  {errors.mobileNumber}
                                </Badge>
                              )}
                            </div>
                          </div>
                        </Col>
                      </Row>
                      <div className="order-notes">
                        <div className="checkout-form-list mrg-nn">
                          <Label>ملاحظات</Label>
                          <Field
                            type="textarea"
                            cols="30"
                            rows="10"
                            name="notes"
                            placeholder="ملاحظات عن طلب شرائك"
                            as={Input}
                          />
                        </div>
                      </div>
                    </div>
                  </Col>
                </Row>
              </div>
            </Form>
          </Container>
        </div>
      )}
    </Formik>
  );
};

export default CheckoutPage;
