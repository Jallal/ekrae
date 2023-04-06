import React from "react";
import {BrowserRouter as Router}  from "react-router-dom";
import ReactDOM from "react-dom/client";
import "./index.css";
import App from "./App.js"
import { ProSidebarProvider } from 'react-pro-sidebar';



// ReactDOM.render( 
// <>
// {/* <App /> */}
// <Router>
//     <App />
//     </Router>
// </>,

// document.getElementById('root')
// );

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  <React.StrictMode>
  <ProSidebarProvider>
    <Router>
    <App />
    </Router>
    </ProSidebarProvider>
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals