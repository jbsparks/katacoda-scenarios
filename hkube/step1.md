Install hkubectl

hkubectl is a tool which allows you to create most of the operations that you need in order to use hkube

Download helm `curl -L https://storage.googleapis.com/kubernetes-helm/helm-v2.8.2-linux-amd64.tar.gz | tar xvz`{{execute}}

`mv linux-amd64/helm /usr/local/bin/`{{execute}}

Once installed, initialize update the local cache to sync the latest available packages with the environment.

`helm init`{{execute}}

configure helm `helm repo add hkube http://hkube.io/helm/`{{execute}}
`helm repo update`{{execute}}

download hkubectl `curl -L https://github.com/kube-HPC/hkubectl/releases/download/v1.1.7/hkubectl.tgz | tar xvz`{{execute}}

add hkubectl to bin path `chmod +x hkubectl`{{execute}} `mv hkubectl /usr/local/bin/`{{execute}}

run `hkubectl -h`{{execute}}  as you can see there a lot of options available

`hkubectl config set endpoint ${KUBERNETES-MASTER-IP}`{{execute}}

`hkubectl config set rejectUnauthorized false`{{execute}}

lets add labels to our kubernetes cluster we have to selectors one for hkube core modules and the second is for nodes you wish to run your algorithms. for this tutorial since we have only one node we will set it as core and as a worker for doing it we should run.

`kubectl label node master core=true worker=true`{{execute}}