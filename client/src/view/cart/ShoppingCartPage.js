import React from 'react';
import WelcomeBanner from '../../WelcomeBanner';
import { Col } from 'reactstrap';
import ShoppingCartProductItemList from './ShoppingCartProductItemList';

const ShoppingCartPage = () => {
  const products = [];

  Object.keys(localStorage).forEach(function(key) {
    products.push(JSON.parse(localStorage.getItem(key)));
  });

  const totalPrice = products.reduce(function(index, product) {
    return index + parseInt(product.price);
  }, 0);

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
                  <table>
                    <thead>
                      <tr>
                        <th className="product-name">حذف</th>
                        <th className="product-price">الصور</th>
                        <th className="product-name">المنتج</th>
                        <th className="product-price">السعر</th>
                      </tr>
                    </thead>
                    <ShoppingCartProductItemList />
                  </table>
                </div>
                <Col>
                  <Col className="col-md-6 ml-auto">
                    <div className="cart-page-total">
                      <h2>المجموع</h2>
                      <ul>
                        <li>
                          <span>$ {totalPrice}</span>
                          المبلغ الاجمالي
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
