# Infrastructure

## Description

A GitOps repo for automatic deployment and configuration of the Kubernetes cluster in Azure.

## Tech Stack

* AKS-Engine
* ArgoCD
* Kustomize
* Helm
* Github Actions
* Azure

## How-To Guide:

### Deploy from Scratch

To deploy the cluster from scratch, just run a new pipeline in Github Actions.
The pipeline will:
1. Deploy the cluster via aks-engine using the configuration defined in `infrastructure/kubernetes.json`.
2. Install ArgoCD in the cluster which then will handle the deployment of the nginx-ingress controller, network policies, namespaces etc.
3. Configure DNS Name for the public IP address of the Load Balancer.
4. Deploy the applications (bitcoin-app and simple-webserver) via helm.

After the pipeline is done, you will have a fully configured cluster with the applications deployed, which can be accessed on: http://akysh-micro-assignment.westeurope.cloudapp.azure.com

### Deploy new components

To deploy new components to the existing cluster, just add the yaml file under `manifests` folder and include the yaml in the `kustomization.yaml` file. The rest will be handled by ArgoCD.

