import React,{useState} from 'react';
import body from './body.css'

class BinaryModule extends React.Component {

      render() {
        return (
<>
<div className="page-wrapper">
<div className="feature-text-container">
<h1>Kubernates in a nutshell</h1>
<h2>What is Kubernetes?</h2>
<p>Kubernetes is a platform for running container-based cloud-native applications. It offers different resources which allow for storing information in the cloud instead of a local host. Offers enreprise features like scalability and availability. It orchestrates containers such a way that they are providing the services that arer required in the envirnment where these services are requirted. The solution is based on the borg technology that good has been using for many years in their datacenters.</p>
<br></br>
<code-section>
<p>Other container management Solutions includes: 
  <br></br>
<ui>
  <li>Docker Swarm</li>
  <li>Rancher</li>
  <li>Red Hat OpenShift</li> 
  <li>Google Anthos</li>
</ui>
</p>
</code-section>
<br></br>
<h2>What are Containers?</h2>
<p>A container image includes all dependecies required to run an application. Containers are running instances of container images. To run a conatiner, a container engine is required. Container engines run on top of host operatying system. Docker is a leading solution in containers, RedHat Podman is upcoming. Kubernetes adds cluster features to containers by managing them in pod resources. Kubernetes can be offewred through different host platforms such as a hosted service in public cloud, on top of a physical cluster (on premise), or as an all-in-one solution, running on Minikube. Clould Native Computing Fouindation (CNCF) is a governing body that solves issues faced by any cloud native application (so not just Kubernetes). Google donated Kubernetes to the Cloud Native Computing FOundation, which is a foundation in Linux Foundation. CNCF owns the copyright of Kubernetes. There sre many options such as minikube, cloud based, DYI AIO, or Docker Desktop.</p>

<br></br>
<h2>Minikube Overview</h2>
<p>Minikube offers a complete test envirnment that runs on Linux, OS-X or Windows. Other test envirnments can also be used. In all cases, you'll need to have the kubectl client on your management platform. The kubectl command is the generic command that allows you to manage all aspects of pods and containers. Use "kubectl create" to create a deployment or "kubectl get" to get information about the pods. Start with "kubectl completion -h"</p>

<br></br>
<h2>Kubernetes Resource Types</h2>
<p>
<ui>
<li>Pods : The basic unit in Kubernetes, represents a set of containers that shre common resources</li>
<li>Deployment : Application itself, standard entiry that is rolled out with Kubernetes</li>
<li> Services : Makes deployment accessible from outside by providing a sinle IP/PORT combination</li>
<li>Persistent Volumes : persistent (network storage)</li>
<li>ConfigMaps : Allow for storing configuration and other specific parameters in a cloud envirnment</li>
</ui>
</p>


<br></br>
<h2>Pods</h2>
<p> Kubernetes manages Pods and not containers. The pod is a kubernetes resources defined in the Kubernetes API to provide features required for managing containers in a clustered envirnment. Containers can be put together in a Pod, together with Pod-specific storage, but a typical pod runs one container only</p>


<br></br>
<h2>Deployment</h2>
<p> Running applications in Kubernetes requires creating a deployments. A deployment is adding scalability as well as zero-downtime upgrades to Pods. DO NOT run "naked pods" run deployment only</p>

<br></br>
<h2>Managing applications with Kubectl</h2>
<p>Use "Kubectl create deploy mynginx --image=nginx --replicas=3" to run application</p>
<p>Use Kubectl get to get information about running applications</p>
<p>
  <ui>
    <li> Kubectl get all</li>
    <li>Kubectl get all -a</li>
    <li>Kubectl get pods</li>
    <li>Kubectl get all --selector app=mynginx</li>
  </ui>
</p>
<p> Use Kubectl describe to get information about resource properties</p>
<br></br>
<br></br>
</div>
</div>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
</>
);
}
}
export default BinaryModule;
