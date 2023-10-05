# Tool Introduction

## Setup
This lab requires the initialization of docker swarm mode.

1. Intialization docker swarm mode
```
docker swarm init --advertise-addr 127.0.0.1
```


## Lab
For this lab, we will learn about tools that can leveraged for scanning containers to find entry points, open ports and vulnerabilities.

1. Start the lab environment with docker-compose. This will daemonize the docker environment. When you are done, you can run docker-compose down to free the resources. 
```
docker-compose up -d
```

2. All the containers are launch on the 172.16.1.0/24 subnet. See if you can find the containers in the network and the specific container running a vulnerable version. You can enter the kali container to scan with the following command:
```
docker-compose run --rm --entrypoint /bin/bash kali
```

3. Leverage the knowledge gained from the previous step, check out searchsplout/msfconsole or other pentesting tools to see if you can exploit the vulnerable container.

## Resources
- [rustscan](https://securitytrails.com/blog/rustscan-enhancer-tool)
- [searchsploit how to](https://medium.com/@heynik/how-to-search-the-exploit-by-terminal-using-searchsploit-in-kali-linux-7a90193b3ddf)
- [metasploitable](https://docs.rapid7.com/metasploit/metasploitable-2-exploitability-guide/)
- [DVWA Youtube](https://www.youtube.com/watch?v=SWzxoK6DAE4)
