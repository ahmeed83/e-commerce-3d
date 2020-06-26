import React, { useState, useEffect } from 'react';
import { Button, Container, Table, Modal, ModalBody } from 'reactstrap';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faInfoCircle } from '@fortawesome/free-solid-svg-icons';

import { getOrders } from '../../../services/client';
import Loading from '../../common/Loading';
import Pagination3D from '../../../view/product/Pagination3D';

export const OrderOverview = props => {
  const [loading, setLoading] = useState(false);
  const [orders, setOrders] = useState([]);
  const [pageNumber, setPageNumber] = useState(0);
  const [totalPage, setTotalPage] = useState(0);

  useEffect(() => {
    setLoading(true);
    getOrders('', 0, 'name').then(res => {
      setOrders(res.data.content);
      setTotalPage(res.data.totalPages);
      setPageNumber(res.data.totalElements);
      setLoading(false);
      console.log(res.data);
    });
  }, []);

  const handleSelect = e => {
    console.log(e.target.name);
  };

  return (
    <div className="py-5">
      <div className="py-5">
        <Container className="pt-5 mb-4">
          {loading ? (
            <Loading />
          ) : (
            <div className="py-3 px-5">
              <h4>Orders overview</h4>
              <div className="float-right pb-2">
                <Pagination3D
                  setPageNumber={setPageNumber}
                  totalPages={totalPage}
                  pageNumber={pageNumber}
                />
              </div>
              <Table>
                <thead>
                  <tr>
                    <th style={{ width: '5%' }}>#</th>
                    <th style={{ width: '15%' }}>Order State</th>
                    <th style={{ width: '15%' }}>Complete?</th>
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
                      {order.orderState ? (
                        <td style={{ color: 'green' }}>Completed</td>
                      ) : (
                        <td style={{ color: 'red' }}>In Progress</td>
                      )}
                      <td>
                        <input
                          name={order.orderTrackId}
                          type="checkbox"
                          checked={order.orderState}
                          onChange={handleSelect}
                        />
                      </td>
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
          )}
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
          <Table borderless>
            <tbody>
              <tr>
                <td>Order State</td>
                <td>
                  {props.order.orderState ? (
                    <td style={{ color: 'green' }}>Completed</td>
                  ) : (
                    <td style={{ color: 'red' }}>In Progress</td>
                  )}
                </td>
              </tr>
              <tr>
                <td>Name</td>
                <td>
                  <b>{props.order.name}</b>
                </td>
              </tr>
              <tr>
                <td>Order date</td>
                <td>
                  <b>{props.order.localDate}</b>
                </td>
              </tr>
              <tr>
                <td>City</td>
                <td>
                  <b>{props.order.city}</b>
                </td>
              </tr>
              <tr>
                <td>Order Track Id</td>
                <td>
                  <b>{props.order.orderTrackId}</b>
                </td>
              </tr>
              <tr>
                <td>Company Name</td>
                <td>
                  <b>{props.order.companyName}</b>
                </td>
              </tr>
              <tr>
                <td>District</td>
                <td>
                  <b>{props.order.district}</b>
                </td>
              </tr>
              <tr>
                <td>More ditrict info</td>
                <td>
                  <b>{props.order.district2}</b>
                </td>
              </tr>
              <tr>
                <td>Mobile Number</td>
                <td>
                  <b>{props.order.mobileNumber}</b>
                </td>
              </tr>
              <tr>
                <td>Email</td>
                <td>
                  <b>{props.order.email}</b>
                </td>
              </tr>
              <tr>
                <td>Customer notes</td>
                <td>
                  <b>{props.order.notes}</b>
                </td>
              </tr>
              <tr>
                <td>Total Amount</td>
                <td>
                  <b>{props.order.totalAmount}</b>
                </td>
              </tr>
              <tr>
                <td>Item number</td>
                <td>
                  <b>{props.order.itemAmount}</b>
                </td>
              </tr>
              {props.order.orderProductsResponse.map((product, id) => (
                <tr key={id}>
                  <td> Product ({id + 1})</td>
                  <td>
                    <b>{product.productName}</b>
                  </td>
                  <td>
                    Price: <b>{product.productPrice}</b>
                  </td>
                  <td>
                    Count: <b>{product.productCount}</b>
                  </td>
                  <td>
                    Amount: <b>{product.totalAmount}</b>
                  </td>
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
