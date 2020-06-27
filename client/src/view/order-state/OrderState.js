import React, { useState } from 'react';
import './OrderState.css';
import { Container, Alert } from 'reactstrap';
import { checkOrderStatus } from '../../services/client';
import { Table, Input, Row, Col } from 'antd';
import pic from '../../assets/img/3d-logo-head-pic.jpg';

const { Search } = Input;

const OrderState = () => {
  const [showOrder, setShowOrder] = useState(false);
  const [orderTrackId, setOrderTrackId] = useState('');

  const [createdAt, setCreatedAt] = useState('');
  const [updatedAt, setUpdatedAt] = useState('');
  const [name, setName] = useState('');
  const [orderState, setOrderState] = useState('');

  const [notFoundOrderVisibleError, setNotFoundOrderVisibleError] = useState(
    false
  );

  const check = orderTrackId => {
    checkOrderStatus(orderTrackId)
      .then(res => {
        setCreatedAt(res.data.createdAt);
        setUpdatedAt(res.data.updateAt);
        setName(res.data.name);
        setOrderState(res.data.orderState);
        setOrderTrackId(res.data.orderTrackId);
        setShowOrder(true);
      })
      .catch(e => {
        setOrderTrackId(orderTrackId);
        setNotFoundOrderVisibleError(true);
        setTimeout(() => {
          setNotFoundOrderVisibleError(false);
        }, 4000);
      });
  };

  const dataSource = [
    {
      key: '1',
      name: name,
      orderState: orderState,
      createdAt: createdAt,
      updatedAt: updatedAt,
      orderTrackId: orderTrackId,
    },
  ];

  const columns = [
    {
      title: 'حالة الطلبية',
      dataIndex: 'orderState',
      key: 'orderState',
      align: 'right',
    },
    {
      title: 'تاريخ اخر تحديث',
      dataIndex: 'updatedAt',
      key: 'updatedAt',
      align: 'right',
    },
    {
      title: 'تاريخ الطلبية',
      dataIndex: 'createdAt',
      key: 'createdAt',
      align: 'right',
    },
    {
      title: 'الأسم',
      dataIndex: 'name',
      key: 'name',
      align: 'right',
    },
    {
      title: 'رقم الطلبية',
      dataIndex: 'orderTrackId',
      key: 'orderTrackId',
      align: 'right',
    },
  ];

  const renderSwitch = param => {
    switch (param) {
      case 'IN_PROGRESS':
        return 'c1';
      case 'SHIPPED':
        return 'c2';
      case 'DELIVERED':
        return 'c3';
      case 'COMPLETED':
        return 'c4';
      default:
        return 'c0';
    }
  };

  const orderStateIcon = renderSwitch(orderState);

  return (
    <Container className="pt-5">
      <div className="pt-5 row shop-tracking-status">
        <div className="col-md-12">
          <div className="pt-5">
            {showOrder ? (
              <div className="pt-5">
                <Table
                  dataSource={dataSource}
                  columns={columns}
                  pagination={false}
                />
                <div className="order-status">
                  <div className="order-status-timeline">
                    {/* <!-- className names: c0 c1 c2 c3 and c4 --> */}
                    <div
                      className={`order-status-timeline-completion ${orderStateIcon}`}
                    ></div>
                  </div>

                  <div className="image-order-status image-order-status-new active img-circle">
                    <span className="status">الطلبية أستلمت</span>
                    <div className="icon"></div>
                  </div>
                  <div className="image-order-status image-order-status-active active img-circle">
                    <span className="status">جاري تجميع الطلبية</span>
                    <div className="icon"></div>
                  </div>
                  <div className="image-order-status image-order-status-intransit active img-circle">
                    <span className="status">الطلبية في الطريق</span>
                    <div className="icon"></div>
                  </div>
                  <div className="image-order-status image-order-status-delivered active img-circle">
                    <span className="status">الطلبية سلمت</span>
                    <div className="icon"></div>
                  </div>
                  <div className="image-order-status image-order-status-completed active img-circle">
                    <span className="status">الطلبية اكتملت</span>
                    <div className="icon"></div>
                  </div>
                </div>
              </div>
            ) : (
              <StateBanner />
            )}
            <div className="pt-5">
              <Row>
                <Col span={12} offset={6}>
                  <Search
                    className="pb-5"
                    placeholder="ضع رقم الطلبية هنا"
                    enterButton="أبحث"
                    size="large"
                    onSearch={check}
                  />
                </Col>
              </Row>
              <Alert
                className="text-center"
                color="danger"
                isOpen={notFoundOrderVisibleError}
              >
                <div>{orderTrackId}</div>
                لا توجد طلبية بهذل الرقم، الرجاء التأكد من رقم الطلبية
              </Alert>
            </div>
          </div>
        </div>
      </div>
    </Container>
  );
};

export default OrderState;

const StateBanner = () => {
  var sectionStyle = {
    width: '100%',
    height: '75%',
    backgroundImage: `url(${pic})`,
  };

  return (
    <div
      className="breadcrumb-area pt-205 pb-210 bg-img"
      style={sectionStyle}
    ></div>
  );
};
