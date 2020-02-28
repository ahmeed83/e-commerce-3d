import React from 'react';
import { FormGroup, Button } from 'reactstrap';

const SearchProductsReset = props => {
  return (
    <FormGroup className='pb-3'>
      <Button onClick={props.reset} outline color='primary' block>
        Reset
      </Button>
    </FormGroup>
  );
};

export default SearchProductsReset;
