First check the kubernetes cluster is up and ready

`kubectl get nodes -o wide`{{execute}}

Create the kubernetes namespace

`kubectl create namespace argo`{{execute}}


`kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo/stable/manifests/install.yaml`{{execute}}
