# Tool Introduction
This lab will introduce students to tools that can be used to scan containers for entry points, open ports, and vulnerabilities.

## Lab
1. Start the lab environment with docker-compose. This will daemonize the docker environment. When you are done, you can run docker-compose down to free the resources. 
```
docker-compose up -d
```

2. Enter the Kali Linux container:
```
docker-compose run --entrypoint /bin/bash kali
```

3. Use the following tools to scan the containers for entry points, open ports, and vulnerabilities:
    - rustscan
    - searchsploit

4. Leverage the knowledge gained from the previous step to access the container running the vulnerable version of a services

## Resources
- [rustscan](https://securitytrails.com/blog/rustscan-enhancer-tool)
- [searchsploit how to](https://medium.com/@heynik/how-to-search-the-exploit-by-terminal-using-searchsploit-in-kali-linux-7a90193b3ddf)
- [metasploit in kali](https://www.kali.org/docs/tools/starting-metasploit-framework-in-kali/)
