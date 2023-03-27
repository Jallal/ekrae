import React from 'react';
import body from './JsonToYaml.css'
import yaml from 'yaml';
import Header from './Header'
import Footer from "./Footer";
import Converter from './Converter'


class JsonToYaml extends React.Component {


        handleClick = (yamlString) => {

            console.log('click!' + yamlString)
            const jsonString = JSON.stringify(yaml.safeLoad(yamlString));
            console.log(jsonString);
            }

render() {

return (
    <>
    <Header/>
    <Converter/>
    <Footer/>
    </>
  );
}
}
export default JsonToYaml;