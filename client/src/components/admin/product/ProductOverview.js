import { faTrash } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import React, { useContext } from 'react';
import { Link } from 'react-router-dom';
import { Col, Container, Row, Table } from 'reactstrap';
import { deleteProduct } from '../../../services/client';
import { ProductContext } from '../../../services/context/ProductContext';
import ProductPagination from '../../../view/product/ProductPagination';
import SearchProductsInput from './SearchProductsInput';

import 'antd/dist/antd.css';
import { Button } from 'antd';
import { CloudUploadOutlined } from '@ant-design/icons';
import { ProductDetailsModal } from './ProductDetailsModal';

export const ProductOverview = () => {
  const deleteIcon = <FontAwesomeIcon icon={faTrash} />;

  const products = useContext(ProductContext);

  const del = productId => {
    deleteProduct(productId);
    products.setTrigger(Math.random());
  };

  const searchProduct = productName => {
    products.setProductName(productName);
    products.setPageNumber(0);
  };

  return (
    <div className="py-5">
      <div className="py-5">
        <Container className="pt-5">
          <div className="border border-info py-3 px-5">
            <Row>
              <Col>
                <h4 className="pb-3" style={{ color: '#007bff' }}>
                  Products overview
                </h4>
              </Col>
              <Col>
                <div className="float-right">
                  <ProductPagination
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
                  <th style={{ width: '20%' }}>Price</th>
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
                    <td>{product.price} $</td>
                    <td>{product.category.name}</td>
                    <td>
                      <ProductDetailsModal product={product} />
                    </td>
                    <td>
                      <Button
                        onClick={() => del(product.id)}
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
