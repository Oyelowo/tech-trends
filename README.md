# tech-trends
Trends in tech

- `Vagrant up`
- `vagrant ssh`


- Inside the virtual machine(vagrant)
 `sudo su`

- Install apparmor-parser. This will be necessary for the deployed containers in the latter steps to run properly
`zypper install apparmor-parser`

- Launch a  k3s kubernetes cluster
- `curl -sfL https://get.k3s.io | sh -`

# Install Argo CD
- kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

NOTE for me: I like downloading remote file, inspect and apply locally.
e.g 
```
curl -L https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml > argocd-application.yaml
```

# Expose ArgoCD application to the browser from the virtual machine
```
 kubectl apply -f argocd-kustomize/argocd-server-nodeport.yaml 
```

- Can now be viewed at `https://192.168.50.4:30007/` or `https://192.168.50.4:30007/`
aside: 192.168.50.4 is the IP of the virtual machine.(can be seen in Vagrantfile)


## On local machine
- For helm
- ` scp -r -P 2222 $PWD/argocd-helm   vagrant@localhost:.`

For Kustomize 

```
scp -r -P 2222 $PWD/argocd-kustomize  vagrant@localhost:.
```


kubectl apply -f argocd-kustomize/argocd-server-nodeport.yaml 


### Login to the UI
- Username: admin
  You can get the password by 
  ```
  kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```
- password-
