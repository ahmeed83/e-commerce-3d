import React, { useState, useEffect } from 'react';
import { FormGroup, Label, Button } from 'reactstrap';
import { getCategories } from '../../client';

const SearchProductsByCategoryPage = (props) => {
  const [categories, setCategories] = useState([]);

  useEffect(() => {
    getCategories().then((res) => {
      setCategories(res.data);
    });
  }, []);

  return (
    <div>
      <Label>Choose Category</Label>
      {categories.map((category, id) => (
        <FormGroup key={id} className="pl-2">
          <Button
            className="py-3"
            value={category.name}
            id={category.name}
            onClick={props.searchHandler}
            outline
            color="primary"
            block
          >
            {category.name}
          </Button>
          <hr />
        </FormGroup>
      ))}
    </div>
  );
};

export default SearchProductsByCategoryPage;
