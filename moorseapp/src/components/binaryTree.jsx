import React,{useState} from 'react';

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
        
            console.log("$$$$$$$$$$$ Resulting Json :"+jsonString);
            //set the output JSON
            this.setState({
                //justClicked: JSON.parse(jsonString)
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
<h3>The <code>cool</code> Class</h3>
</>
);
}
}
export default ConverterModule;
