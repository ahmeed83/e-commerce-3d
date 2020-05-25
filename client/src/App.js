import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import './App.css';
import { ProductListPage } from './components/product/ProductsListPage';
import { Header } from './components/shared/Header';
import { Footer } from './components/shared/Footer';
import { ProductDetailsPage } from './components/product/ProductDetailsPage';
import { ShoppingCardPage } from './components/shopping-card/ShoppingCardPage';
import { LoginPage } from './components/shared/login/LoginPage';
import { SignUpPage } from './components/shared/login/SignupPage';
import LoginContextProvider from './context/LoginContext';
import ManagementRoutes from './ManagementRoutes';
import ProductContextProvider from './context/ProductContext';

function App() {
  return (
    <Router>
      <div className='page-container'>
        <div className='content-wrap'>
          <LoginContextProvider>
            <Header />
            <ManagementRoutes />
          </LoginContextProvider>
          <Switch>
            <Route path='/login'>
              <LoginPage />
            </Route>
            <Route path='/signup'>
              <SignUpPage />
            </Route>
            <Route path='/shopping-card'>
              <ShoppingCardPage />
            </Route>
            <Route path={`/product`}>
              <ProductDetailsPage />
            </Route>
            <ProductContextProvider>
              <Route exact path='/'>
                <ProductListPage />
              </Route>
            </ProductContextProvider>
            {/* <ErrorPage /> */}
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
