Running a few simple examples of workflows.



`argo submit --watch https://raw.githubusercontent.com/argoproj/argo/master/examples/hello-world.yaml`{{execute}}

Get the logs and output.

`argo logs $(argo list | grep hello-world | awk '{print $1}')`{{execute}}


`argo submit --watch https://raw.githubusercontent.com/argoproj/argo/master/examples/coinflip.yaml`{{execute}}

`argo submit --watch https://raw.githubusercontent.com/argoproj/argo/master/examples/loops-maps.yaml`{{execute}}

`argo list`{{execute}}

You can interact in the terminal and execute the following commands

`argo list`{{execute}}
`argo get $(argo list | grep loops | awk '{print $1}')`{{execute}}
`argo logs $(argo list | grep loops | awk '{print $1}')`{{execute}}

