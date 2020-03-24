import React from 'react';
import routes from './routes';
import { withRouter } from "react-router-dom";
import Header from './Components/Header/Header';
import './App.css';

function App(props) {
  return (

    <div className="App">

      {props.location.pathname === '/' ? (
        <div>
          {routes}
        </div>
      ) :
        <div>
          <Header /><div className="content-container">{routes}</div>
        </div>
      }
    </div>
  );
}

export default withRouter(App);
