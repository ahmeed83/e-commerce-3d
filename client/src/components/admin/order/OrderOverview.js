import React, { useState, useEffect } from 'react';
import { Button, Container, Table, Modal, ModalBody } from 'reactstrap';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faInfoCircle } from '@fortawesome/free-solid-svg-icons';

import { getOrder } from '../../../services/client';

export const OrderOverview = props => {
  const [orders, setOrders] = useState([]);

  useEffect(() => {
    getOrder().then(res => {
      setOrders(res.data);
    });
  }, []);

  return (
    <div className="py-5">
      <div className="py-5">
        <Container className="pt-5 mb-4">
          <div className="border border-success py-3 px-5">
            <h4 className="pb-3">Orders overview</h4>
            <Table>
              <thead>
                <tr>
                  <th style={{ width: '5%' }}>#</th>
                  <th style={{ width: '15%' }}>Order State</th>
                  <th style={{ width: '15%' }}>Order Track Id</th>
                  <th style={{ width: '15%' }}>Name</th>
                  <th style={{ width: '15%' }}>Telephone</th>
                  <th style={{ width: '15%' }}>District</th>
                  <th style={{ width: '5%' }}>More details</th>
                </tr>
              </thead>
              <tbody>
                {orders.map((order, id) => (
                  <tr key={id}>
                    <th scope="row">{id + 1}</th>
                    <td>{order.orderState}</td>
                    <td>{order.orderTrackId}</td>
                    <td>{order.name}</td>
                    <td>{order.mobileNumber}</td>
                    <td>{order.district}</td>
                    <td>
                      <OrderModal order={order} />
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

const OrderModal = props => {
  const infoIcon = <FontAwesomeIcon icon={faInfoCircle} />;

  const [modal, setModal] = useState(false);
  const toggle = () => setModal(!modal);
  return (
    <div>
      <Button block size="md" color="primary" onClick={toggle}>
        {infoIcon}
      </Button>
      <Modal
        isOpen={modal}
        centered
        toggle={toggle}
        backdropTransition={{ timeout: 700 }}
      >
        <ModalBody>
          <Table>
            <tbody>
              <tr>
                <td>Order State</td>
                <td>{props.order.orderState}</td>
              </tr>
              <tr>
                <td>Name</td>
                <td>{props.order.name}</td>
              </tr>
              <tr>
                <td>City</td>
                <td>{props.order.city}</td>
              </tr>
              <tr>
                <td>Order Track Id</td>
                <td>{props.order.orderTrackId}</td>
              </tr>
              <tr>
                <td>Company Name</td>
                <td>{props.order.companyName}</td>
              </tr>
              <tr>
                <td>District</td>
                <td>{props.order.district}</td>
              </tr>
              <tr>
                <td>More ditrict info</td>
                <td>{props.order.district2}</td>
              </tr>
              <tr>
                <td>Mobile Number</td>
                <td>{props.order.mobileNumber}</td>
              </tr>
              <tr>
                <td>Email</td>
                <td>{props.order.email}</td>
              </tr>
              <tr>
                <td>Customer notes</td>
                <td>{props.order.notes}</td>
              </tr>
              <tr>
                <td>Total Amount</td>
                <td>{props.order.totalAmount}</td>
              </tr>
              {props.order.productResponseJsons.map((product, id) => (
                <tr key={id}>
                  <td> Product ({id + 1})</td>
                  <td>{product.productName}</td>
                  <td>Price: {product.productPrice}</td>
                </tr>
              ))}
            </tbody>
          </Table>
        </ModalBody>
      </Modal>
    </div>
  );
};

export default OrderModal;
