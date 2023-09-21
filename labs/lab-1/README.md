# Log Analysis
The goal o this lab is familiarize students with log aggregation utilities and how to find threats in captured logs. 

## Getting Started
To start the lab environment, simply run the following command:
```
docker-compose up
```

## Lab
1. Get the container up and running. *This can be accomplished with the command provided in [Getting Started][#getting-started]* 
    - *To access the newly created container, navigate to http://localhost:8000 in your browser*
    - *The password is defined in the .env file and the user is admin*
2. Ingest the logs in the logs directory. 
    - We will begin with injesting the windows-powershell.txt log file.
    - *When not capturing live data, splunk allows users to use the "Add Data" function to insert their own log files manually*
3. After the file is injested, try to find the planted/hidden/added flag in the log file. It is formatted at LAB{SOME FLAG CONTENT}.
    - *The flag may be base64 encoded*
    - *The flag is being printed in powershell*
    - *If you need additional help finding the flag, you can leverage git to see if there has been any changes made in that file*
4. Splunk is a powerful tool that is able to detect cyber attacks when feed logs. 
    - Find the different threats within the log file and identify the host(s) in question
    - *Splunk should be able to identify the threats*

*For Additional practice, logs can be found in the attack_data repo*

## References
- [attack_data](https://github.com/splunk/attack_data/tree/master/datasets)
- [docker-lab](https://github.com/dmuth/splunk-lab)
- [docker-elk](https://github.com/deviantony/docker-elk/tree/main)
