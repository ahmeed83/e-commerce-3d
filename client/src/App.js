import React from "react";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import "./App.css";
import { HomePage } from "./components/HomePage";
import { ProductOverview } from "./components/admin/product/ProductOverview";
import { Header } from "./components/Header";
import { ErrorPage } from "./components/ErrorPage";
import { OrderOverview } from "./components/admin/order/OrderOverview";
import { OrderDetailsPage } from "./components/admin/order/OrderDetailsPage";
import { AddProduct } from "./components/admin/product/AddProduct";

function App() {
  return (
    <Router>
      <Header />
      <Switch>
        <Route path="/products-overview">
          <ProductOverview />
        </Route>
        <Route path="/orders-overview">
          <OrderOverview />
        </Route>
        <Route exact path="/">
          <HomePage />
          {/*<ProductListPage />*/}
        </Route>
        <Route exact path="/add-product">
          <AddProduct />
        </Route>
        <Route path={`/order-page/:orderId`}>
          <OrderDetailsPage />
        </Route>
        <ErrorPage />
      </Switch>
    </Router>
  );
}

export default App;
