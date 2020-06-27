import React from 'react';

import { Input } from 'antd';

const SearchProductsInput = props => {
  const { searchHandler } = props;
  return (
    <Input.Group compact>
      <Input.Search
        id="searchInput"
        onSearch={searchHandler}
        style={{ width: 300 }}
        placeholder="Search products"
        allowClear
      />
    </Input.Group>
  );
};

export default SearchProductsInput;
