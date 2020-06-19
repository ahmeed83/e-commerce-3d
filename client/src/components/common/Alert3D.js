import React from 'react';
import { Modal, ModalBody, ModalHeader } from 'reactstrap';

export const Alert3D = props => {
  const { textColor, text, visible, onDismiss } = props;
  const closeBtn = (
    <button className="close" onClick={onDismiss}>
      &times;
    </button>
  );
  return (
    <Modal
      backdrop={'static'}
      centered
      autoFocus
      size="lg"
      isOpen={visible}
      toggle={onDismiss}
    >
      <ModalHeader toggle={onDismiss} close={closeBtn}></ModalHeader>
      <ModalBody>
        <div className="modal-content">
          <div className="modal-body" color={textColor}>
            <div>
              <div color={textColor} className="text-center pl-5">
                {text}
              </div>
            </div>
          </div>
        </div>
      </ModalBody>
    </Modal>
  );
};
