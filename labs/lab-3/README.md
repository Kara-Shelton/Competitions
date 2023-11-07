# Tool Introduction
This lab will introduce students to tools that can be used to scan containers for entry points, open ports, and vulnerabilities. Students can specifically look forward to learning more about network scanners nmap and rustscan, vulnerability databases exploitdb, and pentesting framework metasploit.

## Lab
1. Start the lab environment with docker-compose. This will daemonize the docker environment. When you are done, you can run docker
-compose down to free the resources.  
```
docker compose up -d
```

2. Enter the Kali Linux container:
```
docker compose run --entrypoint /bin/bash hack
```

3. Use the following tools to scan the containers for entry points, open ports, and vulnerabilities:
    - [rustscan](https://github.com/RustScan/RustScan)/nmap
    * For simplicity, we recommend using nmap to scan the network range ```nmap -Pn 172.16.0.1/24```. There are more flags you
can add, but this will be a good starting point.

4. Using the knowledge gained from the previous step to access the container running the vulnerable version of a service.
	* You can look up service names and versions in exploitdb to find if there were any vulnerabilities found for that version and if any proof of concepts were released.
	* [searchsploit](https://github.com/Err0r-ICA/Searchsploit) is a cli tool that accesses exploitdb and is useful. You may have to install it.

5. Using your findings from step 4, use metasploit or a proof of concept exploit to gain access to the correct container.
    * There are allot of good resources for [metasploit](https://github.com/rapid7/metasploit-framework) There github is a good starting point. 

## Resources
- [rustscan](https://securitytrails.com/blog/rustscan-enhancer-tool)
- [searchsploit how to](https://medium.com/@heynik/how-to-search-the-exploit-by-terminal-using-searchsploit-in-kali-linux-7a90193b3)
- [metasploit in kali](https://www.kali.org/docs/tools/starting-metasploit-framework-in-kali/)

