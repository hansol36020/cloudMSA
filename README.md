# cloudMSA

# dockerfiles-centos-user-adderable
ubuntu based
install nginx로
port 8888
run -d
# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t hansol36020/nginx_run .
	docker run -d --name n1 -p 8888:80 hansol36020/nginx_run
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS                         PORTS                  NAMES
eb31045309c4        hansol36020/nginx_run   "nginx -g 'daemon of…"   12 minutes ago      Up 12 minutes                  0.0.0.0:8888->80/tcp   n1
```
To test, ("hansol36020" is username. curl localhost:8888)
```
#curl localhost:8888
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>

```
