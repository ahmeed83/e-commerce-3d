import React, { useState, useEffect } from 'react';
import {
  UncontrolledDropdown,
  DropdownToggle,
  DropdownMenu,
  DropdownItem
} from 'reactstrap';
import { getCategories } from '../../../client';

const CategoryDropDown = props => {
  const [selectedCategoryName, setSelectedCategoryName] = useState('Choose Category');
  const [categories, setCategories] = useState([]);
  
  useEffect(() => {
    getCategories().then(res => {
      setCategories(res.data);
    });
  }, []);

  const handelChange = e => {
    setSelectedCategoryName(e.target.name);
    props.form.setFieldValue(props.field.name, e.target.name);
  };

  return (
    <UncontrolledDropdown>
      <DropdownToggle color='info' outline caret>
        {selectedCategoryName}
      </DropdownToggle>
      <DropdownMenu>
        {categories.map(category => (
          <DropdownItem
            key={category.id}
            onClick={handelChange}
            name={category.name}
          >
            {category.name}
          </DropdownItem>
        ))}
      </DropdownMenu>
    </UncontrolledDropdown>
  );
};

export default CategoryDropDown;
