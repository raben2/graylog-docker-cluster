# Graylog cluster docker 

Build your docker conntainers and run a scalable cluster

# run elasticsearch
```
docker run -dit -p 9200:9200 -p 9300:9300 -m 3G --name elastic elasticsearch
```
# run mongodb
``` 
docker run -itd -p 27017:27017 -p 27018:27018 -p 27019:27019 --name mongodb-replica mongodb
```
# run graylog2 server (v. 2.0.1)
```
docker run -idt -p 12201:12201 -p 9350:9350 -p 12900:12900 -p 12201:12201/udp -p 80:80 -m 1G --name graylog2 --link mongodb-replica --link elastic graylog2:2.0.1
```

# run graylog-server (v. 1.3.4)
```
docker run -idt -p 12900:12900 -p 12201:12201 -p 9400:9400 -m 512m --name graylog2 --link mongodb-replica--link elastic graylog-server
```  
# start webinterface (v. 1.3.4)
```
docker run -tid -p 80:9000 --link graylog2:gl --name graylog-web graylog-web
``` 
