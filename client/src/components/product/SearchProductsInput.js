import React from 'react';
import {
  FormGroup,
  InputGroup,
  Input,
  InputGroupAddon,
  Button
} from 'reactstrap';

const SearchProductsInput = props => {
  return (
    <FormGroup>
      <InputGroup>
        <InputGroupAddon addonType='prepend'>
          <Button onClick={props.searchHandler} outline color='primary'>
            Search
          </Button>
        </InputGroupAddon>
        <Input
          id='searchInput'
          onChange={props.searchHandler}
          onKeyPress={props.searchHandler}
          placeholder='Search Products'
        />
      </InputGroup>
    </FormGroup>
  );
};

export default SearchProductsInput;
