import React from 'react';
import { FormGroup, Label, Button } from 'reactstrap';

const SearchProductsRadio = props => {
  return (
    <FormGroup className='pl-2'>
      <Label>Choose Category</Label>
      <Button
        className='py-3'
        value='Headphone'
        id='Headphone'
        onClick={props.searchHandler}
        outline
        color='primary'
        block
      >
        Headphone
      </Button>
      <hr />
      <Button
        className='py-3'
        value='iPhone'
        id='iPhone'
        onClick={props.searchHandler}
        outline
        color='primary'
        block
      >
        iPhone
      </Button>
      <hr />
      <Button
        className='py-3'
        value='PC'
        id='PC'
        onClick={props.searchHandler}
        outline
        color='primary'
        block
      >
        PC
      </Button>
      <hr />
      <Button
        className='py-3'
        value='Laptop'
        id='Laptop'
        onClick={props.searchHandler}
        outline
        color='primary'
        block
      >
        Laptop
      </Button>
      <hr />
      <Button
        className='py-3'
        value='MacBook'
        id='MacBook'
        onClick={props.searchHandler}
        outline
        color='primary'
        block
      >
        MacBook
      </Button>
    </FormGroup>
  );
};

export default SearchProductsRadio;
