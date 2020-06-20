import React, { useState } from 'react';
import CounterInput from 'react-counter-input';

const ProductModal = props => {
  const [productCount, setProductCount] = useState(1);

  return (
    <div className="modal-content">
      <div className="modal-body">
        <div className="qwick-view-left">
          <div className="quick-view-learg-img">
            <div className="quick-view-tab-content tab-content">
              <div
                className="tab-pane active show fade"
                id="modal1"
                role="tabpanel"
              >
                <img
                  style={{
                    width: '60%',
                    height: '60%',
                    display: 'block',
                    margin: '0 auto',
                  }}
                  src={props.product.picLocation}
                  alt=""
                />
              </div>
            </div>
          </div>
        </div>
        <div className="pt-4 qwick-view-right">
          <div className="qwick-view-content">
            <h4>{props.product.name}</h4>
            <div className="price">
              <span className="new">$ {props.product.price}</span>
            </div>
            <p>{props.product.description}</p>

            <div className="quickview-plus-minus">
              <div className="cart-plus-minus">
                <CounterInput
                  className="cart-plus-minus-box"
                  count={2 - 1}
                  min={1}
                  max={10}
                  onCountChange={count => setProductCount(count)}
                />
              </div>
              <div className="quickview-btn-cart">
                <a
                  className="btn-hover-black"
                  href="#-"
                  onClick={props.addToCart}
                >
                  add to cart
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ProductModal;
