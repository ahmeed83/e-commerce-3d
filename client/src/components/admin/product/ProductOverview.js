import { faTrash } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import React, { useContext, useState } from 'react';
import { Link } from 'react-router-dom';
import { Col, Container, Row, Table, Input, Alert } from 'reactstrap';
import { deleteProduct } from '../../../services/client';
import { updatePriceProduct } from '../../../services/client';
import { ProductContext } from '../../../services/context/ProductContext';
import Pagination3D from '../../../view/product/Pagination3D';
import SearchProductsInput from './SearchProductsInput';

import 'antd/dist/antd.css';
import { Button } from 'antd';
import { CloudUploadOutlined } from '@ant-design/icons';
import { ProductDetailsModal } from './ProductDetailsModal';

export const ProductOverview = () => {
  const deleteIcon = <FontAwesomeIcon icon={faTrash} />;

  const products = useContext(ProductContext);

  const [
    priceAlertUpdateVisibleSuccess,
    setPriceAlertUpdateVisibleSuccess,
  ] = useState(false);

  const [
    priceAlertUpdateVisibleError,
    setPriceAlertUpdateVisibleError,
  ] = useState(false);

  const deleteOneProduct = productId => {
    deleteProduct(productId);
    products.setTrigger(Math.random());
  };

  const searchProduct = productName => {
    products.setProductName(productName);
    products.setPageNumber(0);
  };

  const changePrice = (e, productId) => {
    if (e.key === 'Enter') {
      const productPrice = {
        productPrice: e.target.value,
      };
      updatePriceProduct(productId, productPrice)
        .then(res => {
          setPriceAlertUpdateVisibleSuccess(true);
          products.setTrigger(Math.random());
          setTimeout(() => {
            setPriceAlertUpdateVisibleSuccess(false);
          }, 2000);
        })
        .catch(err => {
          setPriceAlertUpdateVisibleError(true);
          setTimeout(() => {
            setPriceAlertUpdateVisibleError(false);
          }, 2000);
        });
      e.target.value = '';
    }
  };

  return (
    <div className="py-5">
      <div className="py-5">
        <Container className="pt-5">
          <Alert
            className="text-center"
            color="success"
            isOpen={priceAlertUpdateVisibleSuccess}
          >
            Price is updated!
          </Alert>
          <Alert
            className="text-center"
            color="danger"
            isOpen={priceAlertUpdateVisibleError}
          >
            Price is not updated! Some error occurred!
          </Alert>
          <div className="border border-info py-3 px-5">
            <Row>
              <Col>
                <h4 className="pb-3" style={{ color: '#007bff' }}>
                  Products overview
                </h4>
              </Col>
              <Col>
                <div className="float-right">
                  <Pagination3D
                    setPageNumber={products.setPageNumber}
                    totalPages={products.totalPages}
                    pageNumber={products.pageNumber}
                  />
                </div>
              </Col>
            </Row>
            <Link to="/add-product">
              <Button
                type="primary"
                shape="round"
                icon={<CloudUploadOutlined />}
                size="large"
              >
                Add new Product
              </Button>
            </Link>
            <div className="pb-3 float-right">
              <SearchProductsInput searchHandler={searchProduct} />
            </div>

            <Table hover>
              <thead>
                <tr>
                  <th style={{ width: '5%' }}>#</th>
                  <th style={{ width: '35%' }}>Name</th>
                  <th style={{ width: '10%' }}>Price</th>
                  <th style={{ width: '20%' }}>Change Price</th>
                  <th style={{ width: '20%' }}>Category</th>
                  <th style={{ width: '10%' }}>Edit</th>
                  <th style={{ width: '10%' }}>Delete</th>
                </tr>
              </thead>
              <tbody>
                {products.productsProvidedFiltered.map((product, id) => (
                  <tr onClick={() => openProductOverview(product)} key={id}>
                    <th scope="row">{id + 1 + products.pageNumber * 25}</th>
                    <td>{product.name}</td>
                    <td>{product.price}</td>
                    <td>
                      <Input
                        onKeyDown={e => changePrice(e, product.id)}
                        className="product-price"
                        type="number"
                        min="0"
                        step="5"
                      ></Input>
                    </td>
                    <td>{product.category.name}</td>
                    <td>
                      <ProductDetailsModal product={product} />
                    </td>
                    <td>
                      <Button
                        onClick={() => deleteOneProduct(product.id)}
                        type="primary"
                        danger
                      >
                        {deleteIcon}
                      </Button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </Table>
          </div>
        </Container>
      </div>
    </div>
  );
};

function openProductOverview(product) {
  console.log(product.name);
}
