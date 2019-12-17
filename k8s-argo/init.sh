#!/bin/bash
# Wait till k8s is up and running
until kubectl version > /dev/null; do echo '.' && sleep 3; done;