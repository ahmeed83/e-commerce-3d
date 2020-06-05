import React, {useEffect, useState} from 'react';
import {DropdownItem, DropdownMenu, DropdownToggle, UncontrolledDropdown,} from 'reactstrap';
import {getSubCategories} from '../../../client';

export const SubCategoryDropDownList = (props) => {
  const [selectedSubCategoryName, setSelectedSubCategoryName] = useState(
    'Choose Sub Category'
  );
  const [subCategories, setSubCategories] = useState([]);

  useEffect(() => {
    getSubCategories(props.categoryId).then((res) => {
      setSubCategories(res.data);
    });
  }, [props.categoryId]);

  const handelChange = (e) => {
    setSelectedSubCategoryName(e.target.name);
    // props.form.setFieldValue(props.field.name, e.target.value);
  };

  return (
    <UncontrolledDropdown>
      <DropdownToggle color="info" outline caret>
        {selectedSubCategoryName}
      </DropdownToggle>
      <DropdownMenu>
        {subCategories.map((subCategory) => (
          <DropdownItem
            key={subCategory}
            onClick={handelChange}
            name={subCategory}
          >
            {subCategory}
          </DropdownItem>
        ))}
      </DropdownMenu>
    </UncontrolledDropdown>
  );
};
