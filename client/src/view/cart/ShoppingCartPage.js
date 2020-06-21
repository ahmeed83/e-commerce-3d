import React, { useContext } from 'react';
import WelcomeBanner from '../../WelcomeBanner';
import { Table, Col } from 'reactstrap';
import ShoppingCartProductItemList from './ShoppingCartProductItemList';
import { OrderContext } from '../../services/context/OrderContext';

const ShoppingCartPage = () => {
  const order = useContext(OrderContext);

  return (
    <div>
      <WelcomeBanner />
      <div className="cart-main-area pt-95 pb-100">
        <div className="container">
          <div className="row">
            <Col>
              <h1 className="cart-heading">سلة المشتريات</h1>
              <form action="/">
                <div className="table-content table-responsive">
                  <Table>
                    <thead>
                      <tr>
                        <th className="product-name">حذف</th>
                        <th className="product-price">الصور</th>
                        <th className="product-price">المجموع</th>
                        <th className="product-name">العدد المطلوب</th>
                        <th className="product-name">العدد</th>
                        <th className="product-price">السعر</th>
                        <th className="product-name">المنتج</th>
                      </tr>
                    </thead>
                    <ShoppingCartProductItemList order={order} />
                  </Table>
                </div>
                <Col>
                  <Col className="col-md-6 ml-auto">
                    <div className="cart-page-total">
                      <h2>مبلغ الطلبية</h2>
                      <ul>
                        <li>
                          <span>$ {order.totalPrice}</span>
                          الاجمالي
                        </li>
                      </ul>
                      <a href="/checkout">تقديم طلب الشراء</a>
                    </div>
                  </Col>
                </Col>
              </form>
            </Col>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ShoppingCartPage;
