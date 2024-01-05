# Firewalls

This lab will familiarize students with Linux and Windows firewalls. Unlike the past labs, we will use vagrant to create virtual machines to provide a real service environment. The goal is for students to learn how to create firewall rules using iptables/UFW on a Linux server, and Windows Defender Firewall on the Windows server. A successfully completed lab will block all traffic except from the other “safe” machines, essentially preventing communications from the “attacker” VM.

The credentials for the kali vm

```
vagrant : vagrant 
```

## Getting Started

- To get started, begin by installing [vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads). These two tools will be used in this lab.
- Start the build process for the lab with the following command. 
    *If you experience problems will the build script, you can use these links to download the machines manually [linux-server](), [windows-server](). You will need to provide the attack vm yourself*
    
    If you are using a linux machine, you may need to run the following:
    ```
    vagrant plugin install winrm
    vagrant plugin install winrm-fs
    vagrant plugin install winrm-elevated
    ```

    To launch the environment, run:
    ```
    vagrant up
    ```

- Open VirtualBox and connect to both of the machines, credentials are provided.
    ```
    labuser : strongpassword
    ```

- At this point, the lab is set up. From here on out, you will be provided with tasks to accomplish. Helpful things to think about include: 
    - What network services are running on each virtual machine?
    - Which of these services should be internet facing? 
    - Are these services accessible from my host machine (which emulates, accessible to the world)?
    - How can you use a firewall to block these services from being internet facing?

## Helpful Commands

- To clean up the environment, simply run the following command.
   ```
   vagrant destroy
   ```
 
## References
- [Windows firewalls documentation](https://learn.microsoft.com/en-us/windows/security/operating-system-security/network-security/windows-firewall/configure)
- [iptables guide](https://phoenixnap.com/kb/iptables-tutorial-linux-firewall)
- [UFW guide](https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands)
- [Vagrant Mail](https://github.com/rgl/mail-vagrant/tree/master)
