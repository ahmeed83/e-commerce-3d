import React from 'react';
import { Row, Col } from 'reactstrap';

export const Footer = () => {
  return (
    <div>
      <Row>
        <Col>
          <ul className='footer-icon list-unstyled text-center'>
            <li className='list-inline-item pr-3'>
              <a href='/'>
                <i className='fa fa-facebook'></i>
              </a>
            </li>
            <li className='list-inline-item pr-3'>
              <a href='/'>
                <i className='fa fa-twitter'></i>
              </a>
            </li>
            <li className='list-inline-item pr-3'>
              <a href='/'>
                <i className='fa fa-instagram'></i>
              </a>
            </li>
            <li className='list-inline-item pr-3'>
              <a href='/'>
                <i className='fa fa-mobile-phone'></i>
              </a>
            </li>
            <li className='list-inline-item pr-3'>
              <a href='/'>
                <i className='fa fa-envelope'></i>
              </a>
            </li>
          </ul>
        </Col>
      </Row>
      <Row>
        <Col>
          <ul className='text-center list-unstyled'>
            <li className='list-style-type: none'>
              <a href='/'>شارع الصناعه مقابل الجامعة التكنلوجية</a>
            </li>
          </ul>
        </Col>
      </Row>
    </div>
  );
};
