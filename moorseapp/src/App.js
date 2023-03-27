import React from "react";
import {BrowserRouter as Router,Route,Routes,Link} from 'react-router-dom';
import Header from './components/Header'
import Counter from './components/Counter'
import Body from "./components/Body";
import Footer from "./components/Footer";
import JsonToYaml from "./components/JsonToYaml";
import Home from "./components/Home";


function App () {
return (
    <>
    <div className="main">
    {/* <nav>
          <ul>
            <li>
              <Link to="">Home</Link>
            </li>
            <li>
              <Link to="/JsonToYaml">About</Link>
            </li>
            <li>
              <Link to="/contact">Contact</Link>
            </li>
          </ul>
        </nav> */}
    {/* <Routes>
    <Route path="/JsonToYaml" component={JsonToYaml} />
        <Route path="/" component={Home} />
        <Route path="/contact" component={Contact} />
    </Routes> */}
    {/* <Header/>
    <Body/>
    <Footer/> */}
    <Routes>
    <Route path ="/" element={<Home/>} />
    <Route path ="/JsonToYaml" element={<JsonToYaml />} />
    </Routes>
      </div>
    </>
);
}

export default App;