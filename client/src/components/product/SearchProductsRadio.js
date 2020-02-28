import React from 'react';
import { FormGroup, Label, CustomInput } from 'reactstrap';

const SearchProductsRadio = props => {
  return (
    <FormGroup className='pl-2'>
      <Label>Choose Category</Label>
      <div>
        <CustomInput
          type='radio'
          id='Laptop'
          name='customRadio'
          label='Laptop'
          value='Laptop'
          onClick={props.searchHandler}
        />
        <CustomInput
          type='radio'
          id='PC'
          name='customRadio'
          label='PC'
          value='PC'
          onClick={props.searchHandler}
        />
        <CustomInput
          type='radio'
          id='Headphone'
          name='customRadio'
          label='Headphone'
          value='Headphone'
          onClick={props.searchHandler}
        />
        <CustomInput
          type='radio'
          id='MacBook'
          name='customRadio'
          label='MacBook'
          value='MacBook'
          onClick={props.searchHandler}
        />
        <CustomInput
          type='radio'
          id='iPhone'
          name='customRadio'
          label='iPhone'
          value='iPhone'
          onClick={props.searchHandler}
        />
      </div>
    </FormGroup>
  );
};

export default SearchProductsRadio;
