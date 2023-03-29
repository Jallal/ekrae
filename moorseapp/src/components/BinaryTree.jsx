import React from 'react';
import Header from './Header'
import Footer from "./Footer";
import BinaryTree from './binaryTree'


class BinaryTree extends React.Component {


        handleClick = (yamlString) => {

            console.log('click!' + yamlString)
            //const jsonString = JSON.stringify(yaml.safeLoad(yamlString));
            console.log("Hello");
            }

render() {

return (
    <>
    <Header/>
    <BinaryTree/>
    <Footer/>
    </>
  );
}
}
export default BinaryTree;