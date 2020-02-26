import React from 'react';

import { Icon, Spin } from 'antd';

const getIndicatorIcon = () => <Icon type='loading' className='spinner' spin />;

export const Spinner3d = () => <Spin indicator={getIndicatorIcon()} />;
