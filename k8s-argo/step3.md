## 3. Configure the service account to run workflows

To run all of the examples in this guide, the 'default' service account is too limited to support features such as artifacts, outputs, access to secrets, etc... For demo purposes, run the following command to grant admin privileges to the 'default' service account in the namespace 'default'. Make sure you are on the 'default' namespace before running them.

`kubectl create rolebinding default-admin --clusterrole=admin --serviceaccount=default:default`{{exectute}}