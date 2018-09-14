# docker-go-shadowosocks2

### run  

```
docker run -p 12222:12222 --restart=always -d dfang/go-shadowsocks2 -s "ss://aes-128-cfb:pa$$w0rd@0.0.0.0:12222" -verbose
```

### build image      

```
captain build      
```

### push image to docker hub  

```
captain push   
```