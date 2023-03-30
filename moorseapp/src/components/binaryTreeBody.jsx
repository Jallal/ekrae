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
<p>Other container management Solutions includes: 
  <br></br>
<ui>
  <li>Docker Swarm</li>
  <li>Rancher</li>
  <li>Red Hat OpenShift</li> 
  <li>Google Anthos</li>
</ui>
</p>
<br></br>
<h2>What are Containers?</h2>
<p>A container image includes all dependecies required to run an application. Containers are running instances of container images. To run a conatiner, a container engine is required. Container engines run on top of host operatying system. Docker is a leading solution in containers, RedHat Podman is upcoming. Kubernetes adds cluster features to containers by managing them in pod resources.</p>

<br></br>
<h2>Kubernetes Host Platform</h2>
<p>Kubernetes can be offewred through different host platforms such as a hosted service in public cloud, on top of a physical cluster (on premise), or as an all-in-one solution, running on Minikube.</p>

<br></br>
<h2>CNCF: Standardization on K8s </h2>
<p> Clould Native Computing Fouindation (CNCF) is a governing body that solves issues faced by any cloud native application (so not just Kubernetes). Google donated Kubernetes to the Cloud Native Computing FOundation, which is a foundation in Linux Foundation. CNCF owns the copyright of Kubernetes.</p>


<br></br>
<h2>Kubernetes Usage Options</h2>
<p>There sre many options such as minikube, cloud based, DYI AIO, or Docker Desktop.</p>

<br></br>
<h2>Minikube Overview</h2>
<p>Minikube offers a complete test envirnment that runs on Linux, OS-X or Windows. Other test envirnments can also be used. In all cases, you'll need to have the kubectl client on your management platform.</p>





</div>
</>
);
}
}
export default BinaryModule;
