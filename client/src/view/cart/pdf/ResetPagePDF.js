import React from 'react';
import Page from './Page';
import logo from '../../../assets/img/logo/logo-footer.png';
import { Table, Container } from 'reactstrap';
import './PDF.css';

const ResetPagePDF = props => {
  return (
    <Page id={props.id}>
      <Container className="py-3" fluid>
        <img className="pb-1" alt="logo" src={logo} />
        <h5 className="pb-1">
          الكراده شارع الصناعه مجمع النعمان مقابل الجامعه التكنلوجيا
        </h5>
        <h6 className="pb-1">Baghdad, Iraq</h6>
        <h6 className="pb-1"> 07716840492 : مصطفى تجميع</h6>
        <h6 className="pb-1"> 07832664117 : سنان تجميع</h6>
        <h6 className="pb-4"> 07901322976 : الادارة</h6>

        <Table dir="rtl" size="sm" style={{ textAlign: 'right' }}>
          <tbody>
            <tr>
              <td style={{ width: '30%' }}>رقم الطلبية</td>
              <td style={{ width: '70%' }}>{props.data.orderTrackId}</td>
            </tr>
            <tr>
              <td style={{ width: '30%' }}>الاسم</td>
              <td style={{ width: '70%' }}>{props.data.name}</td>
            </tr>
            <tr>
              <td style={{ width: '30%' }}>المدينة</td>
              <td style={{ width: '70%' }}>{props.data.city}</td>
            </tr>
            <tr>
              <td style={{ width: '30%' }}>المنطقة</td>
              <td style={{ width: '70%' }}>{props.data.district}</td>
            </tr>
            <tr>
              <td style={{ width: '30%' }}></td>
              <td style={{ width: '70%' }}>{props.data.district2}</td>
            </tr>
            <tr>
              <td style={{ width: '30%' }}>رقم الهاتف</td>
              <td style={{ width: '70%' }}>{props.data.mobileNumber}</td>
            </tr>
            <tr>
              <td style={{ width: '30%' }}>الايميل</td>
              <td style={{ width: '70%' }}>{props.data.email}</td>
            </tr>
            <tr>
              <td style={{ width: '30%' }}>الملاحظات</td>
              <td style={{ width: '70%' }}>{props.data.notes}</td>
            </tr>
            <tr>
              <td style={{ width: '20%' }}>البضاعة</td>
              <td>
                <Table>
                  <tbody>
                    <div className="containerResetForm">
                      {props.data.orderProductsResponse.map((product, id) => (
                        <tr key={id}>
                          <td style={{ width: '40%' }}>
                            Name :
                            <b style={{ color: 'red' }}>
                              {product.productName}
                            </b>
                            <br />
                            Price :
                            <b style={{ color: 'red' }}>
                              {product.productPrice}
                            </b>
                          </td>
                        </tr>
                      ))}
                    </div>
                  </tbody>
                </Table>
              </td>
            </tr>
            <tr>
              <td style={{ width: '30%' }}>المبلغ الكلي</td>
              <td style={{ width: '70%' }}>{props.data.totalAmount}</td>
            </tr>
          </tbody>
        </Table>
      </Container>
    </Page>
  );
};

export default ResetPagePDF;
