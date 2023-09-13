# Log Analysis
The goal o this lab is familiarize students with log aggregation utilities and how to find threats in captured logs. 

## Getting Started
To start the lab environment, simply run the following command:
```
docker-compose up
```

## Lab
1. Get the container up and running
2. Ingest the logs in the logs directory. For starters, injest the windows-powershell.txt log file and search for a flag in the logs, formatted at LAB{SOME FLAG CONTENT}
3. Find the threat within the logs. Splunk has powerful search capabilities, see if you can find automated attacks in the logs.

*For Additional practice, logs can be found in the attack_data repo*

## References
- [attack_data](https://github.com/splunk/attack_data/tree/master/datasets)
- [docker-lab](https://github.com/dmuth/splunk-lab)
- [docker-elk](https://github.com/deviantony/docker-elk/tree/main)
