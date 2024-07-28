first execute mysql-k8s using kubectl apply -f mysql-k8s/
then simpletodo-deployment.yaml and 
z 



pipeline: connect k8s to jenkins

Jenkins end:

1. Install Jenkins
2. Install Kubernetes plugin

Kubernetes cluster:

3. Run Kubectl command
```bash

kubectl create namespace my-database

kubectl create sa jenkins -n my-database

kubectl create token jenkins -n my-database --duration=8760h

kubectl create rolebinding jenkins-admin-binding --clusterrole=admin --serviceaccount=my-database:jenkins --namespace=my-database

kubectl config view

watch kubectl get pods -n jenkins

```
From Jenkins

4. Configure Manage Jenkins

5. Test Connection

6. Create Sample job

7. Verify test connection
