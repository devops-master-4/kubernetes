<div align="center">  <h1 style="font-size:30px" > Kubernetes Deployment<br />
<img src="https://github.com/meteor314/ny-cli/blob/master/src/ny-cli.png?raw=true" width="48px" height="48px" > </h1>  </div>
<p align="center">
   Kuberneter deployment 
</p>

![Kubernetes](https://img.shields.io/badge/Kubernetes-1.18.0-blue.svg)
![Docker](https://img.shields.io/badge/Docker-19.03.8-blue.svg)
![Redis](https://img.shields.io/badge/Redis-5.0.9-blue.svg)
![Apache](https://img.shields.io/badge/Apache-2.4.41-blue.svg)

# Kubernetes Deployment

This repository contains the YAML configuration file for deploying the node-redis application on a Kubernetes cluster using a Deployment resource.
Prerequisites

Before deploying the application, ensure that you have the following:

<ol>
<li> Kubernetes cluster up and running. </li>
<li>kubectl command-line tool installed and configured to access the cluster. </li>
</ol>
Deployment

To deploy the node-redis-sakir application, follow these steps:

<ol>
<li> Clone this repository to your local machine or download the deployment.yml file. </li>
<li> Open a terminal and navigate to the directory containing the deployment.yml file. </li>
</ol>

### Installation

You can also execute via `main.sh` file.

```shell
chmod +x main.sh
./main.sh
```

### OR

```shell
export KUBECONFIG=./kubeconfig.yml
```

#### redis deployment

```shell
kubectl delete -f redis-deployment.yaml
```

```shell
kubectl apply -f redis-deployment.yaml
```

#### redis node-deployment

```shell
kubectl delete -f redis-node-deployment.yaml
```

```shell
kubectl apply -f redis-node-deployment.yaml
```

#### service deployment

```shell
kubectl delete -f service.yaml
```

```shell
kubectl apply -f service.yaml

```

```shell
kubectl get deployments
```

```shell
kubectl get pods
```

#### multiple deployment

```shell
kubectl scale deployment <name of your file> --replicas=3
```

Replace `<name of your file>` with the actual name of your deployment file.

> Please note that this readme assumes you have the necessary dependencies and configurations already set up for working with Kubernetes and `kubectl`. Adjust the file names and commands accordingly based on your specific deployment files and requirements.

You can also execute via `main.sh` file.

```shell
chmod +x main.sh
./main.sh
```

### License

This project is licensed under [Apache](https://raw.githubusercontent.com/meteor314/ny-cli/master/LICENSE). Feel free to use it accordingly. A copy of the license has been provided in this repository for your convenience if not provided please visit the link above.
