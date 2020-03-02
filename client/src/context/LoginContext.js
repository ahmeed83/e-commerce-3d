import React, { createContext, useState } from 'react';

export const LoginContext = createContext();

const LoginContextProvider = props => {
  const [loginProvided, setLoginProvided] = useState(false);

  return (
    <LoginContext.Provider value={{ loginProvided, setLoginProvided }}>
      {props.children}
    </LoginContext.Provider>
  );
};

export default LoginContextProvider;
