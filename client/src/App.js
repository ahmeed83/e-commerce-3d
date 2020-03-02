import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import './App.css';
import { ProductListPage } from './components/product/ProductsListPage';
import { ProductOverview } from './components/admin/product/ProductOverview';
import { Header } from './components/shared/Header';
import { ErrorPage } from './ErrorPage';
import { OrderOverview } from './components/admin/order/OrderOverview';
import { OrderDetailsPage } from './components/admin/order/OrderDetailsPage';
import { AddProduct } from './components/admin/product/AddProduct';
import { Footer } from './components/shared/Footer';
import { ProductDetailsPage } from './components/product/ProductDetailsPage';
import { ShoppingCardPage } from './components/shopping-card/ShoppingCardPage';
import { LoginPage } from './components/shared/login/LoginPage';
import { SignUpPage } from './components/shared/login/SignupPage';
import { CustomersOverview } from './components/admin/employee/EmployeeOverview';

function App() {
  return (
    <Router>
      <div className='page-container'>
        <div className='content-wrap'>
          <Header />
          <Switch>
            <Route path='/login'>
              <LoginPage />
            </Route>
            <Route path='/signup'>
              <SignUpPage />
            </Route>
            <Route path='/products-overview'>
              <ProductOverview />
            </Route>
            <Route path='/orders-overview'>
              <OrderOverview />
            </Route>
            <Route path='/customers-overview'>
              <CustomersOverview />
            </Route>
            <Route path='/shopping-card'>
              <ShoppingCardPage />
            </Route>
            <Route exact path='/'>
              <ProductListPage />
            </Route>
            <Route exact path='/add-product'>
              <AddProduct />
            </Route>
            <Route path={`/order-page/:orderId`}>
              <OrderDetailsPage />
            </Route>
            <Route path={`/product/:id`}>
              <ProductDetailsPage />
            </Route>
            <ErrorPage />
          </Switch>
        </div>
        <div className='footer'>
          <Footer />
        </div>
      </div>
    </Router>
  );
}

export default App;
