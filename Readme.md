wait-for-service
================

A simple bash script that waits till specified socket starts listening.

The script is very usefull for docker containers that should wait for other microservices until actually start.

wait-for-service will exist immideatly is target socket is listening.

`sudo make install`

or download binary:

```bash
sudo curl -L  https://github.com/webreactor/wait-for-service/releases/download/0.0.1/wait-for-service > /usr/local/bin/wait-for-service
sudo chmod a+x /usr/local/bin/wait-for-service
```


### Usage

```bash

# wait for 30 rounds by 1 sec (default)
wait-for-service webapp.com 80

# wait for 60 seconds
wait-for-service webapp.com 80 60


# wait for 60 rounds by 10 seconds
wait-for-service webapp.com 80 60 10

```