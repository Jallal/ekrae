import React from "react";
import {BrowserRouter as Router,Route,Link} from 'react-router-dom';
import Header from './Header'
import Counter from './Counter'
import Body from "./Body";
import Footer from "./Footer";
import JsonToYaml from "./JsonToYaml";


function Home () {
return (
    <>
    <Header/>
    <Body/>
    <Footer/>
    </>
);
}

export default Home;