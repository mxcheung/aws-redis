# aws-redis
aws-redis proof of concept


# Objectives
- Install redis on ecs instance
- perl test script to redis libary
- Use github and git bash to checkin sample code

# Step by Step

 - create  new ec2 instance and install redis
   https://shawn-shi.medium.com/how-to-install-redis-on-ec2-server-for-fast-in-memory-database-f30c3ef8c35e

 - install perl module for redis
    https://metacpan.org/pod/Redis

# Screenshots #1
```
22276:C 02 May 2021 05:49:09.888 # Redis version=6.2.2, bits=64, commit=00000000, modified=0, pid=22276, just started
22276:C 02 May 2021 05:49:09.888 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
22276:M 02 May 2021 05:49:09.888 * monotonic clock: POSIX clock_gettime
                _._
           _.-``__ ''-._
      _.-``    `.  `_.  ''-._           Redis 6.2.2 (00000000/0) 64 bit
  .-`` .-```.  ```\/    _.,_ ''-._
 (    '      ,       .-`  | `,    )     Running in standalone mode
 |`-._`-...-` __...-.``-._|'` _.-'|     Port: 6379
 |    `-._   `._    /     _.-'    |     PID: 22276
  `-._    `-._  `-./  _.-'    _.-'
 |`-._`-._    `-.__.-'    _.-'_.-'|
 |    `-._`-._        _.-'_.-'    |           https://redis.io
  `-._    `-._`-.__.-'_.-'    _.-'
 |`-._`-._    `-.__.-'    _.-'_.-'|
 |    `-._`-._        _.-'_.-'    |
  `-._    `-._`-.__.-'_.-'    _.-'
      `-._    `-.__.-'    _.-'
          `-._        _.-'
              `-.__.-'

22276:M 02 May 2021 05:49:09.889 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
22276:M 02 May 2021 05:49:09.889 # Server initialized
22276:M 02 May 2021 05:49:09.889 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
22276:M 02 May 2021 05:49:09.890 * Ready to accept connections
```
# Screenshots #2 Test installation
```
[2021-05-02 15:50.53]  /drives/c/aws
[Max.DESKTOP-1ULQ7VE] ➤ ssh -i "cheungm-mqtt.pem" ec2-user@ec2-3-105-128-247.ap-southeast-2.compute.amazonaws.com
X11 forwarding request failed on channel 0
Last login: Sun May  2 05:46:00 2021 from 49.3.64.78

       __|  __|_  )
       _|  (     /   Amazon Linux 2 AMI
      ___|\___|___|

https://aws.amazon.com/amazon-linux-2/
[ec2-user@ip-172-31-8-149 ~]$ redis-cli
127.0.0.1:6379>
127.0.0.1:6379> keys *
(empty array)
127.0.0.1:6379> set session_id_1 'Hey World'
OK
127.0.0.1:6379> keys *
1) "session_id_1"
127.0.0.1:6379> get session_id_1
"Hey World"
127.0.0.1:6379>

```

## Links

https://metacpan.org/pod/Redis

https://shawn-shi.medium.com/how-to-install-redis-on-ec2-server-for-fast-in-memory-database-f30c3ef8c35e
