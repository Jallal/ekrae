import React,{useState} from 'react';
import yaml from 'js-yaml';
import Converter from './Converter.css'
import { TileLayout } from "@progress/kendo-react-layout";
import ReactJson from 'react-json-view';
import beautify from "json-beautify";

class ConverterModule extends React.Component {

        constructor(props) {
            super(props);
            this.state = {value: ''};
            this.handleChange = this.handleChange.bind(this);
            this.handleSubmit = this.handleSubmit.bind(this);
            const sampleData = {
                name: 'Jason Voorhees',
                age: 74,
                hasKilled: true,
                birthday: 'June 13, 1946',
              }
            this.state = {
                justClicked: sampleData,
              };
          }
        
          handleChange(event) {
            console.log('********* handleChange!  '+ event.target.value)
            this.setState({value: event.target.value});
            const jsonString = JSON.stringify(yaml.load(event.target.value));
            console.log("$$$$$$$$$$$ Resulting Json :"+jsonString);
            //set the output JSON
            this.setState({
                justClicked: JSON.parse(jsonString)
              });
            }
        
        
          handleSubmit(event) {

            console.log('********* handleSubmit!  '+ event)
            //alert('A name was submitted: ' + this.state.value);
            event.preventDefault();
          }

      render() {
        return (
<>
<div className="float-container">
    <textarea className="float-child field" type="text" placeholder="Type-in any Yaml text here ....." value={this.state.value} onChange={this.handleChange}></textarea>
    <div className="float-child field">
    <ReactJson  src={this.state.justClicked}/>
    </div>
  </div>
</>
);
}
}
export default ConverterModule;