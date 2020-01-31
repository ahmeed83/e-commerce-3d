import React from "react";
import {Container, Jumbotron} from "reactstrap";

export const HomePage = () => {
  return (
      <Jumbotron fluid>
        <Container>
          <div className="App">
            <h1 className="display-1">3D Electronics</h1>
            <h3 className="display-4 pb-5">Coming Soon!</h3>
            <a
                className="lead App-link"
                href="https://www.facebook.com/3delctronics"
            >
              Check our facebook page until then.
            </a>
          </div>
        </Container>
      </Jumbotron>
  );
};
