kubectl run nginx5 --image=hansol36020/nginx_run --port 80
kubectl scale deploy nginx5 --replicas=20 
