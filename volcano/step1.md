## Prerequists

### Helm

* Download helm 

`curl -L https://storage.googleapis.com/kubernetes-helm/helm-v2.8.2-linux-amd64.tar.gz | tar xvz`{{execute}}
`install -m 755 linux-amd64/helm /usr/local/bin/`{{execute}}

Once installed, initialize update the local cache to sync the latest available packages with the environment.

`helm init`{{execute}}

Now create a serviceaccount for tiller

`cp /etc/kubernetes/admin.conf $HOME`{{execute}}
`chown $(id -u):$(id -g) $HOME/admin.conf`{{execute}}
`export KUBECONFIG=$HOME/admin.conf`{{execute}}

`elmdel() {  kubectl -n kube-system delete deployment tiller-deploy;  kubectl delete clusterrolebinding tiller;  kubectl -n kube-system delete serviceaccount tiller;   }`{{execute}}

`helmins() {  kubectl -n kube-system create serviceaccount tiller;  kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller;  helm init --service-account=tiller; }`{{execute}}

`helmins`{{execute}}

`kubectl get pods --all-namespaces | grep tiller`{{execute}}

 ### volcano install

 `kubectl apply -f https://raw.githubusercontent.com/volcano-sh/volcano/master/installer/volcano-development.yaml`{{execute}}

 `kubectl get pods -n volcano-system`{{execute}}

 `kubectl get services -n volcano-system`{{execute}}

 `kubectl get deployments -n volcano-system`{{execute}}

 `kubectl get rs -n volcano-system`{{execute}}
 