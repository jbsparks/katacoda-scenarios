Install hkubectl

hkubectl is a tool which allows you to create most of the operations that you need in order to use hkube

Download helm `curl -LO https://storage.googleapis.com/kubernetes-helm/helm-v2.8.2-linux-amd64.tar.gz`{{execute}}
Unpack helm `tar -xvf helm-v2.8.2-linux-amd64.tar.gz`{{execute}}
`mv linux-amd64/helm /usr/local/bin/`{{execute}}

Once installed, initialize update the local cache to sync the latest available packages with the environment.

`helm init`{{execute}}
`help repo update`{{execute}}

configure helm `helm repo add hkube http://hkube.io/helm/`{{execute}}

download hkubectl `curl -L https://github.com/kube-HPC/hkubectl/releases/download/v1.1.7/hkubectl.tgz | tar xvz`{{execute}}

add hkubectl to bin path `cp ./hkubectl /usr/local/bin`{{execute}}

run `hkubectl -h`{{execute}}  as you can see there a lot of options available
