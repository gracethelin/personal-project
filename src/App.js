import React from 'react';
import Auth from './components/Auth/Auth'
import Dashboard from './components/Dashboard/Dashboard'
import Nav from './components/Nav/Nav'
import routes from './routes'
import { withRouter } from "react-router-dom";
import Header from './components/Header/Header'


import './App.css';

function App(props) {
  return (
   
    <div className="App">
      
      {props.location.pathname === '/' ? 
      (
          <div>
          {routes}
          </div>
      ) : 
       <div>
         <Header/><div className="content-container">{routes}</div> </div>
    }
   
      
    </div>
  );
}

export default withRouter(App);
