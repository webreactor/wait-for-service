wait-for-service
================

A simple bash script that waits till specified socket starts listening

Exists immideatly is target socket is listening

`make install`

or download binary:

```bash
sudo curl -L  ... > /usr/local/bin/wait-for-service
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