import React from 'react';
import { Row } from 'reactstrap';
import PaginationComponent from 'react-reactstrap-pagination';

const ProductPagination = props => {
  const handleSelected = index => {
    props.setPageNumber(index - 1);
  };

  return (
    <Row>
      <PaginationComponent
        totalItems={props.totalPages}
        pageSize={1}
        onSelect={handleSelected}
        firstPageText={'<<'}
        lastPageText={'>>'}
        previousPageText={'<'}
        nextPageText={'>'}
        size={'sm'}
      />
    </Row>
  );
};
export default ProductPagination;
