Run a simple test
`kubectl get nodes -o wide`{{execute}}

`kubectl create -f job-01.yaml`{{execute}}

`kubectl get jobs`{{execute}}

`kubectl describe pod qj-1-2dbp2 | tail -7`{{execute}}
