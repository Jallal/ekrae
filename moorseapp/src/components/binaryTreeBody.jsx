import React,{useState} from 'react';
import body from './body.css'

class BinaryModule extends React.Component {

      render() {
        return (
<>
<div className="feature-text-container">
<h1>Kubernates in a nutshell</h1>
<h2>What is Kubernetes?</h2>
<p>Kubernetes is a platform for running container-based cloud-native applications. It offers different resources which allow for storing information in the cloud instead of a local host. Offers enreprise features like scalability and availability. It orchestrates containers such a way that they are providing the services that arer required in the envirnment where these services are requirted. The solution is based on the borg technology that good has been using for many years in their datacenters.</p>
<br></br>
<p>
Other container management Solutions includes: 
<ui>
  <li>Docker Swarm</li>
  <li>Rancher</li>
  <li>Red Hat OpenShift</li> 
  <li>Google Anthos</li>
</ui>
<br></br>
<h2>What are Containers?</h2>
<p>A container image includes all dependecies required to run an application. Containers are running instances of container images. To run a conatiner, a container engine is required. Container engines run on top of host operatying system. Docker is a leading solution in containers, RedHat Podman is upcoming. Kubernetes adds cluster features to containers by managing them in pod resources.</p>
</p>
</div>
</>
);
}
}
export default BinaryModule;
