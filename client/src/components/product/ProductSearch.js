import React, {useState, useEffect} from 'react';
import {
  Button,
  Card,
  CardBody,
  CardHeader,
  CustomInput,
  Form,
  FormGroup,
  Input,
  InputGroup,
  InputGroupAddon,
  Label,
} from 'reactstrap';

const ProductSearch = props => {

  const productList = props.productList;
  console.log(productList);


  
  const [searchInput, setSearchInput] = useState('');
  const [filteredProducts, setFilteredProducts] = useState(productList);
  const [searchState, setSearchState] = useState(false);

  const reset = () => {
    setFilteredProducts(productList);
    document.getElementById('searchInput').value = '';
    document.getElementById('Laptop').checked = false;
    document.getElementById('PC').checked = false;
    document.getElementById('Headphone').checked = false;
    document.getElementById('MacBook').checked = false;
    document.getElementById('iPhone').checked = false;
  };

  const searchHandler = () => {
    if (searchState) {
      setFilteredProducts(
          filteredProducts.filter(product =>
              product.name.toLowerCase().includes(searchInput.toLowerCase())
          )
      );
    } else {
      setFilteredProducts(
          productList.filter(product =>
              product.name.toLowerCase().includes(searchInput.toLowerCase())
          )
      );
      setSearchState(true);
    }
    document.getElementById('searchInput').value = '';
  };

  const searchRadioHandler = event => {
    if (searchState) {
      setFilteredProducts(
          filteredProducts.filter(product =>
              product.category.name.includes(event.target.value)
          )
      );
    } else {
      setFilteredProducts(
          productList.filter(product =>
              product.category.name.includes(event.target.value)
          )
      );
      setSearchState(true);
    }
  };

  const inputHandler = event => {
    if (event.key === 'Enter') {
      event.preventDefault();
      setSearchInput(event.target.value);
      searchHandler();
      event.target.value = '';
    } else {
      setSearchInput(event.target.value);
    }
  };

  return (
    <div>
      <Form>
        <Card>
          <CardHeader>Search</CardHeader>
          <CardBody>
            <FormGroup className='pb-3'>
              <Button onClick={reset} outline color='success' block>
                Reset
              </Button>
            </FormGroup>
            <FormGroup>
              <InputGroup>
                <InputGroupAddon addonType='prepend'>
                  <Button onClick={searchHandler} outline color='success'>
                    Search
                  </Button>
                </InputGroupAddon>
                <Input
                  id='searchInput'
                  onChange={inputHandler}
                  onKeyPress={inputHandler}
                  placeholder='Search Products'
                />
              </InputGroup>
            </FormGroup>
            <FormGroup className='pl-2' style={{ color: 'green' }}>
              <Label>Choose Category</Label>
              <div>
                <CustomInput
                  type='radio'
                  id='Laptop'
                  name='customRadio'
                  label='Laptop'
                  value='Laptop'
                  onClick={searchRadioHandler}
                />
                <CustomInput
                  type='radio'
                  id='PC'
                  name='customRadio'
                  label='PC'
                  value='PC'
                  onClick={searchRadioHandler}
                />
                <CustomInput
                  type='radio'
                  id='Headphone'
                  name='customRadio'
                  label='Headphone'
                  value='Headphone'
                  onClick={searchRadioHandler}
                />
                <CustomInput
                  type='radio'
                  id='MacBook'
                  name='customRadio'
                  label='MacBook'
                  value='MacBook'
                  onClick={searchRadioHandler}
                />
                <CustomInput
                  type='radio'
                  id='iPhone'
                  name='customRadio'
                  label='iPhone'
                  value='iPhone'
                  onClick={searchRadioHandler}
                />
              </div>
            </FormGroup>
          </CardBody>
        </Card>
      </Form>
    </div>
  );
};

export default ProductSearch;
