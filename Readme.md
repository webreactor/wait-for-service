wait-for-service
================

A simple bash script that waits till specified socket starts listening.

The script is very usefull for docker containers that should wait for other microservices until actually start.

wait-for-service will exist immideatly is target socket is listening.

`sudo make install`

or download binary:

```bash
sudo curl -L https://raw.githubusercontent.com/webreactor/wait-for-service/master/wait-for-service > /usr/local/bin/wait-for-service
sudo chmod a+x /usr/local/bin/wait-for-service
```


### Usage

`wait-for-service host [port] [rounds] [delay]`

Defaults:

- port 80
- rounds 30
- delay 1 (second)

wait-for-service will wait unlimited time if rounds is 0 

```bash

# wait for 30 rounds by 1 sec (default)
wait-for-service webapp.com 80

# wait for 60 seconds
wait-for-service webapp.com 80 60


# wait for 60 rounds by 10 seconds
wait-for-service webapp.com 80 60 10

```

### Example

```bash

user@ubuntu1:~$ wait-for-service mysql.local 3306
[30] Sat Jul 16 20:33:10 CDT 2016 Waiting for mysql.local:3306
[29] Sat Jul 16 20:33:11 CDT 2016 Waiting for mysql.local:3306
[28] Sat Jul 16 20:33:12 CDT 2016 Waiting for mysql.local:3306
[27] Sat Jul 16 20:33:13 CDT 2016 Waiting for mysql.local:3306
[26] Sat Jul 16 20:33:14 CDT 2016 Waiting for mysql.local:3306
[25] Sat Jul 16 20:33:15 CDT 2016 Waiting for mysql.local:3306
[24] Sat Jul 16 20:33:16 CDT 2016 Waiting for mysql.local:3306
[23] Sat Jul 16 20:33:17 CDT 2016 Waiting for mysql.local:3306
[22] Sat Jul 16 20:33:18 CDT 2016 Waiting for mysql.local:3306
[21] Sat Jul 16 20:33:19 CDT 2016 Waiting for mysql.local:3306
[20] Sat Jul 16 20:33:18 CDT 2016 mysql.local:3306 is available


```
