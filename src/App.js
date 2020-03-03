import React from 'react';
import Auth from './components/Auth/Auth'
import Dashboard from './components/Dashboard/Dashboard'
import Nav from './components/Nav/Nav'
import routes from './routes'
import { withRouter } from "react-router-dom";
import Header from './components/Header/Header'
import {Provider } from 'react-redux'
import store from './redux/store'

import './App.css';

function App(props) {
  return (
    <Provider store={store}>
    <div className="App">
      
      {props.location.pathname === '/' ? 
      (
          <div>
          {routes}
          </div>
      ) : 
       <div>
         <Header/>{routes} </div>
    }
   
      
    </div></Provider>
  );
}

export default withRouter(App);
