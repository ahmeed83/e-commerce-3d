import React from "react";
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";
import "./App.css";
import {HomePage} from "./components/HomePage";
import {ProductListPage} from "./components/product/ProductsListPage";
import {ProductOverview} from "./components/admin/product/ProductOverview";
import {Header} from "./components/Header";
import {ErrorPage} from "./ErrorPage";
import {OrderOverview} from "./components/admin/order/OrderOverview";
import {OrderDetailsPage} from "./components/admin/order/OrderDetailsPage";
import {AddProduct} from "./components/admin/product/AddProduct";
import {Footer} from "./components/Footer";
import {ProductDetailsPage} from "./components/product/ProductDetailsPage";
import {ShoppingCardPage} from "./components/shopping-card/ShoppingCardPage";

function App() {
  return (
      <Router>
        <Header/>
        <Switch>
          <Route path="/products-overview">
            <ProductOverview/>
          </Route>
          <Route path="/orders-overview">
            <OrderOverview/>
          </Route>
          <Route path="/shopping-card">
            <ShoppingCardPage/>
          </Route>
          <Route exact path="/">
            <HomePage/>
          </Route>
          <Route exact path="/products">
            <ProductListPage/>
          </Route>
          <Route exact path="/add-product">
            <AddProduct/>
          </Route>
          <Route path={`/order-page/:orderId`}>
            <OrderDetailsPage/>
          </Route>
          <Route path={`/product/:productId`}>
            <ProductDetailsPage/>
          </Route>
          <ErrorPage/>
        </Switch>
        <Footer/>
      </Router>
  );
}

export default App;
