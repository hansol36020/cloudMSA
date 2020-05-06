##auto scale
#kubectl get rs
```
NAME                DESIRED   CURRENT   READY   AGE
nginx-7c45b84548    0         0         0       19h
nginx5-86c49bbf5c   20        20        20      14h
```
#kubectl autoscale rs nginx5-86c49bbf5c --max=30
```
horizontalpodautoscaler.autoscaling/nginx5-86c49bbf5c autoscaled
```
# kubectl get hpa
```
NAME                REFERENCE                      TARGETS         MINPODS   MAXPODS   REPLICAS   AGE
nginx5-86c49bbf5c   ReplicaSet/nginx5-86c49bbf5c   <unknown>/80%   1         30        20         30s
```
