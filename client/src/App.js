import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import './App.css';
import { HomePage } from './components/HomePage';
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
import ProductContextProvider from './components/context/ProductContext';

function App() {
  return (
    <Router>
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
        <Route path='/shopping-card'>
          <ShoppingCardPage />
        </Route>
        <Route exact path='/'>
          <HomePage />
        </Route>
        <Route exact path='/add-product'>
          <AddProduct />
        </Route>
        <Route path={`/order-page/:orderId`}>
          <OrderDetailsPage />
        </Route>
        <ProductContextProvider>
          <Route exact path='/products'>
            <ProductListPage />
          </Route>
          <Route path={`/product/:id`}>
            <ProductDetailsPage />
          </Route>
        </ProductContextProvider>
        <ErrorPage />
      </Switch>
      <Footer />
    </Router>
  );
}

export default App;
