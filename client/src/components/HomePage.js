import React, { useState } from "react";
import { Container, Jumbotron, Spinner } from "reactstrap";

export const HomePage = () => {
  const [data] = useState("Coming soon");
  const [showLoading] = useState(false);

  return (
    <div>
      {showLoading ? (
        <div className="spinner">
          <Spinner style={{ width: "6rem", height: "6rem" }} type="grow" />
        </div>
      ) : (
        <Jumbotron fluid>
          <Container>
            <div className="App">
              <h1 className="display-1">3D Electronics</h1>
              <h3 className="display-4 pb-5">{data}</h3>
              <a
                className="lead App-link"
                href="https://www.facebook.com/3delctronics"
              >
                Check our facebook page until then.
              </a>
            </div>
          </Container>
        </Jumbotron>
      )}
    </div>
  );
};
