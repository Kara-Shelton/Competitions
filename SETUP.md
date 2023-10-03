# Setup
- [Getting Started](#getting-started)
- [Docker Setup](#docker-setup)
- [Useful Programs](#useful-programs)
- [Next Steps](#next-steps)

## Getting Started
We recommend setting up a virtual machine if you are using the windows operating system. [lubuntu](https://lubuntu.me/downloads/) is a good, lightweight target.

To set up a Lubuntu VM, you can use a virtualization software such as VirtualBox or VMware. Once you have installed the virtualization software, you can create the VM using this guide for [vmware](https://kb.vmware.com/s/article/1018415)/[virtualbox](https://www.nakivo.com/blog/use-virtualbox-quick-overview/). 

## Docker Setup 
If you installed a virtual machine, you will continue to install docker using the following [docker-engine](https://docs.docker.com/engine/install/) guide. If you are on MacOS and Windows and are feeling dangerous, you can install [docker desktop](https://www.docker.com/products/docker-desktop/). 

On linux, you will need to make sure that your user is added to the docker group and that the service is started.
```
sudo usermod -aG docker $USER
sudo systemctl enable --now docker
```
After adding you user to the docker group, log out and back in. At this point you are ready to get started with the labs

## Useful Programs
Some useful programs can be installed as such.
```
sudo apt install -y vim git docker-compose
```

## Next Steps
Check out the labs in the [labs/](https://github.com/49thSecurityDivision/Competitions/tree/master/labs) directory. You can also find dotfiles from club members linked [here](https://github.com/49thSecurityDivision/configs)
