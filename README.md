# docker-go-shadowosocks2

### run  

```
docker run -p 12222:12222 dfang/go-shadowsocks2 -s "ss://aes-128-cfb:pa$$w0rd@:12222" -verbose
```

### build image      

```
captain build      
```

### push image to docker hub  

```
captain push   
```