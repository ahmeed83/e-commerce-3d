import React from 'react';
import { Spinner } from 'reactstrap';

const Loading = () => {
  return (
    <div className='spinner'>
      <Spinner style={{ width: '6rem', height: '6rem' }} type='grow' />
    </div>
  );
};

export default Loading;
