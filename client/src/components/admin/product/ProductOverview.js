import { faEdit, faTrash } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import React, { useContext, useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import {
  Button,
  Col,
  Container,
  Row,
  Table,
  Form,
  Modal,
  ModalHeader,
  ModalBody,
  ModalFooter
} from 'reactstrap';
import { deleteProduct } from '../../../client';
import { ProductContext } from '../../../context/ProductContext';
import ProductPagination from '../../product/ProductPagination';
import SearchProductsInput from '../../product/SearchProductsInput';

export const ProductOverview = () => {
  const deleteIcon = <FontAwesomeIcon icon={faTrash} />;

  const products = useContext(ProductContext);

  const [productName, setProductName] = useState('');
  const searchHandlerText = searchText(products, setProductName);

  const reset = () => {
    products.setPageNumber(0);
    products.setProductName('');
  };

  const del = productId => {
    deleteProduct(productId);
    products.setTrigger(Math.random());
  };

  useEffect(() => {
    products.setProductName(productName);
  }, [productName, products]);

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
              <th scope='row'>{id + 1 + products.pageNumber * 20}</th>
              <td>{product.name}</td>
              <td>{product.price} $</td>
              <td>{product.category.name}</td>
              <td>
                <ProductDetailsModal product={product} />
              </td>
              <td>
                <Button
                  onClick={() => del(product.id)}
                  size='md'
                  color='danger'
                >
                  {deleteIcon}
                </Button>
              </td>
            </tr>
          ))}
        </tbody>
      </Table>
    </Container>
  );
};

function openProductOverview(product) {
  console.log(product.name);
}

function searchText(products, setProductName) {
  return event => {
    if (event.type === 'click') {
      setProductName(document.getElementById('searchInput').value);
      document.getElementById('searchInput').value = '';
      products.setPageNumber(0);
    }
  };
}

const ProductDetailsModal = props => {
  const editIcon = <FontAwesomeIcon icon={faEdit} />;
  const [modal, setModal] = useState(false);
  const toggle = () => setModal(!modal);

  return (
    <div>
      <Form inline onSubmit={e => e.preventDefault()}>
        <Button color='primary' onClick={toggle}>
          {editIcon}
        </Button>
      </Form>
      <Modal
        isOpen={modal}
        toggle={toggle}
        backdrop='static'
        centered
      >
        <ModalHeader toggle={toggle}>{props.product.name}</ModalHeader>
        <ModalBody>
          <p>Price: {props.product.price}</p>
          <p>Category: {props.product.category.name}</p>
          <img
            width='100%'
            src={props.product.picLocation}
            alt={props.product.name}
          />
        </ModalBody>
        <ModalFooter>
          <Link to={`/edit-product/${props.product.id}`}>
            <Button className='float-right' outline color='primary'>
              Edit Product
            </Button>
          </Link>
          <Button color='secondary' onClick={toggle}>
            Cancel
          </Button>
        </ModalFooter>
      </Modal>
    </div>
  );
};
