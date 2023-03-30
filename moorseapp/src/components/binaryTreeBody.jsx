import React,{useState} from 'react';

class BinaryModule extends React.Component {

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
<h3>Kubernates in a nutshell</h3>

<h4>What is Kubernetes?</h4>
<p>Kubernetes is a platform for running container-based cloud-native applications. It offers different resources which allow for storing information in the cloud instead of a local host. Offers enreprise features like scalability and availability. It orchestrates containers such a way that they are providing the services that arer required in the envirnment where these services are requirted. The solution is based on the borg technology that good has been using for many years in their datacenters</p>


</>
);
}
}
export default BinaryModule;
