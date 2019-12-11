Running a few simple examples of workflows.



`argo submit --watch https://raw.githubusercontent.com/argoproj/argo/master/examples/hello-world.yaml`{{execute}}

`argo submit --watch https://raw.githubusercontent.com/argoproj/argo/master/examples/coinflip.yaml`{{execute}}

`argo submit --watch https://raw.githubusercontent.com/argoproj/argo/master/examples/loops-maps.yaml`{{execute}}

`argo list`{{execute}}

You can interact in the terminal and execute the following commands

```bash
argo list
argo get xxx-workflow-name-xxx
argo logs xxx-pod-name-xxx      #from get command above
```

