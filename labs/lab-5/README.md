# Firewalls

This lab will familiarize students with linux and windows firewalls. Unlike the past labs, we will use vagrant to create virtual machines to provide a real service environment.

## Getting Started

- To get started, begin by installing [vagrant](https://www.vagrantup.com/) and [virtualbox](https://www.virtualbox.org/wiki/Downloads). These two tools will be used in this lab.
- Start the build process for the lab with the following command. 
    *If you experience problems will the build script, you can use these links to download the machines manually [linux-server](), [windows-server]().*
    ```
    vagrant up
    ```

- Open virtualbox and connect to both of the machines, credentials are provided.
    labuser : strongpassword

1. At this point, the lab is setup. From here on out you will be provided with tasks to accomplish. Helpful things to think about include: 
    - What network services are running on each virtual machine?
    - Which of these services should be internet facing? 
    - Are these services accessible from my host machine (which emuluates accessible to the world)?
    - How can you use a firewall to block these services from being internet facing?

