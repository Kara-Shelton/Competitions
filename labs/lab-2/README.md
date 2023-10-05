# Web Applications and Security Tooling
This lab will introduce and familiarize students with web application security scanner tools like Burp Suite and OWA
SP ZAP. The goal is to help students set up an environment for learning.

## Types of Web Application Security Vulnerabilities
Before you begin this lab, it is important to have a basic understanding of the different types of web application security vulnerabilities. Some of the most common vulnerabilities include:

- SQL injection: This vulnerability allows attackers to inject SQL code into web application requests, which can be
used to steal data or modify the database.
- Cross-site scripting (XSS): This vulnerability allows attackers to inject malicious code into web pages, which can
then be executed by other users when they visit those pages.
- Broken authentication and session management: This vulnerability allows attackers to exploit weaknesses in authent
ication and session management systems to gain unauthorized access to web applications.

## Lab
1. Start [DVWA](https://github.com/digininja/DVWA) container with the following command.
```
docker-compose up -d
```

**Note**
There is a kali image included in this environment. You can enter that container and install the needed tools with t
he following commands:
```
docker-compose run --entrypoint /bin/bash kali
apt update && apt -y install kali-linux-headless
```

2. The website is now reachable from your local browser at http://127.0.0.1:4280
   * At this point, it would be a good practice to check out the [owasp top 10](https://owasp.org/www-project-top-ten/)
   * burp suite and owasp zap are useful tools for conducting this experiment but will not be necessary to discover
all vulnerabilities

3. Familiarize yourself with your tool of choice.
   * As a first step, try to get access into the web application portal  

## Tips
- Use the OWASP Top 10 as a guide to help you identify potential vulnerabilities in the DVWA web application.
- Try to exploit different types of vulnerabilities using your chosen tool.
- If you get stuck, don't be afraid to ask for help.

## Resources
- [DVWA Ultimate Guide](https://bughacking.com/dvwa-ultimate-guide-first-steps-and-walkthrough/)
