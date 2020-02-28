import React, { useState } from 'react';
import {
  Row,
  Pagination,
  PaginationItem,
  PaginationLink
} from 'reactstrap';

const ProductPagination = props => {
  return (
    <Row>
      <Pagination size='sm'>
        <PaginationItem>
          <PaginationLink first onClick={() => props.setPageNumber(0)} />
        </PaginationItem>
        <PaginationItem>
          <PaginationLink
            previous
            onClick={() => props.setPageNumber(props.pageNumber - 1)}
          />
        </PaginationItem>
        {[...Array(5)].map((item, key) => (
          <PaginationItem key={key}>
            <PaginationLink onClick={() => props.setPageNumber(key)}>
              {key + 1}
            </PaginationLink>
          </PaginationItem>
        ))}
        <PaginationItem>
          <PaginationLink
            next
            onClick={() => props.setPageNumber(props.pageNumber + 1)}
          />
        </PaginationItem>
        <PaginationItem>
          <PaginationLink
            last
            onClick={() => props.setPageNumber(props.totalPages - 1)}
          />
        </PaginationItem>
      </Pagination>
    </Row>
  );
};
export default ProductPagination;
