import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import './App.css';

import Header from './view/header-footer/Header';
import Footer from './view/header-footer/Footer';
import ProductListPage from './view/product/ProductListPage';
import ContactPage from './view/contact/ContactPage';
import LoginPage from './view/login/LoginPage';
import RegisterPage from './view/login/RegisterPage';
import ShoppingCartPage from './view/cart/ShoppingCartPage';
import CheckoutPage from './view/cart/CheckoutPage';
import AboutUsPage from './view/about-us/AboutUsPage';
import Test from './Test';
import ManagementRoutes from './ManagementRoutes';
import LoginContextProvider from './services/context/LoginContext';
import ProductContextProvider from './services/context/ProductContext';
import OrderContextProvider from './services/context/OrderContext';
import OrderState from './view/order-state/OrderState';

import 'antd/dist/antd.css';

function App() {
  return (
    <div className="wrapper" lang="ar">
      <Router>
        <LoginContextProvider>
          <Header />
          <ManagementRoutes />
        </LoginContextProvider>
        <Switch>
          <Route path="/login">
            <LoginPage />
          </Route>
          <Route path="/register" component={RegisterPage} />
          <Route path="/contact" component={ContactPage} />
          <Route path="/order-state">
            <OrderState />
          </Route>
          <Route path="/shopping-cart">
            <OrderContextProvider>
              <ShoppingCartPage />
            </OrderContextProvider>
          </Route>
          <Route path="/checkout">
            <OrderContextProvider>
              <CheckoutPage />
            </OrderContextProvider>
          </Route>
          <Route path="/about-us" component={AboutUsPage} />
          <Route path="/test" component={Test} />
          <ProductContextProvider>
            <Route exact path="/">
              <ProductListPage />
            </Route>
          </ProductContextProvider>
        </Switch>
        <Footer />
      </Router>
    </div>
  );
}

export default App;
