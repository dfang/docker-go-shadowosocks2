# docker-go-shadowosocks2  

Quickly run a shadowsocks instance on linux server(aws,digitalocean, etc)


### [install docker on linux](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-convenience-script)  

```
curl -sSL https://get.docker.com/ | sh
```

### run  

```
docker run -p 12222:12222 --restart=always -d dfang/go-shadowsocks2 -s "ss://aes-128-cfb:your-passsword@0.0.0.0:12222" -verbose
```


### build image      

```
captain build      
```

### push image to docker hub  

```
captain push   
```
