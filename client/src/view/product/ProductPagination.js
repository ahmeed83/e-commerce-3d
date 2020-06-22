import React from 'react';
import { Row } from 'reactstrap';
import PaginationComponent from 'react-reactstrap-pagination';

const ProductPagination = props => {
  const { totalPages, setPageNumber, pageNumber } = props;
  const handleSelected = index => {
    setPageNumber(index - 1);
  };

  return (
    <Row>
      <PaginationComponent
        totalItems={totalPages}
        pageSize={1}
        onSelect={handleSelected}
        firstPageText={'<<'}
        lastPageText={'>>'}
        previousPageText={'<'}
        nextPageText={'>'}
        size={'md'}
        defaultActivePage={pageNumber + 1}
      />
    </Row>
  );
};
export default ProductPagination;
