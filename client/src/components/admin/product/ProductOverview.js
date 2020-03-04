import React, { useContext, useState, useEffect } from 'react';
import { Container, Table, Button, Row, Col } from 'reactstrap';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEdit } from '@fortawesome/free-solid-svg-icons';
import { faTrash } from '@fortawesome/free-solid-svg-icons';
import { Link } from 'react-router-dom';
import { ProductContext } from '../../../context/ProductContext';
import ProductPagination from '../../product/ProductPagination';
import SearchProductsInput from '../../product/SearchProductsInput';
import Loading from '../../shared/Loading';

export const ProductOverview = () => {
  const editIcon = <FontAwesomeIcon icon={faEdit} />;
  const deleteIcon = <FontAwesomeIcon icon={faTrash} />;

  const products = useContext(ProductContext);

  const [productName, setProductName] = useState('');
  const searchHandlerText = searchText(setProductName);
  const reset = () => {
    products.setPageNumber(0);
    products.setProductName('');
  };

  useEffect(() => {
    products.setProductName(productName);
  }, [productName]);

  return (
    <Container className='pt-4'>
      <Row>
        <Col>
          <h1 className='pb-3'>Products overview</h1>
        </Col>
        <Col>
          <Link to='/add-product'>
            <Button className='float-right' outline color='primary'>
              Add new Product
            </Button>
          </Link>
        </Col>
      </Row>
      <div className='float-left'>
        <SearchProductsInput
          searchHandler={searchHandlerText}
          admin={true}
          reset={reset}
        />
      </div>
      <div className='float-right'>
        <ProductPagination
          setPageNumber={products.setPageNumber}
          totalPages={products.totalPages}
        />
      </div>
      <Table>
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
        {products.loading ? (
          <Loading />
        ) : (
          <tbody>
            {products.productsProvidedFiltered.map((product, id) => (
              <tr key={id}>
                <th scope='row'>{id + 1 + products.pageNumber * 20}</th>
                <td>{product.name}</td>
                <td>{product.price} $</td>
                <td>{product.category.name}</td>
                <td>
                  <Button size='md' color='primary'>
                    {editIcon}
                  </Button>
                </td>
                <td>
                  <Button size='md' color='danger'>
                    {deleteIcon}
                  </Button>
                </td>
              </tr>
            ))}
          </tbody>
        )}
      </Table>
    </Container>
  );
};

function searchText(setProductName) {
  return event => {
    if (event.type === 'click') {
      setProductName(document.getElementById('searchInput').value);
      document.getElementById('searchInput').value = '';
    }
  };
}
