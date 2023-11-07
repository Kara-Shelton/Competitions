# Scripting

## Overview
This lab will familarized students with patching to help improve automated patching script testing. If you are interested in learning more, resources are included at the end of this guide.

## Lab
1. Start the lab with the following command:
```
docker compose up -d
```
2. We have provide a [grasshopper](https://github.com/vr0n/grasshopper) image to help with scanning and exploiting the metaploitable container. Helpful steps include:
    - Scan container for vulnerability
    - Figure out how to mitigate that service vulnerabilty
    - Document your finding
    - Rinse and repeat. (There is a guide linked below)

    To connect use:
    ```
    docker compose --entrypoint /bin/bash hack
    ```

## Resources
- [Metaploitable Exploits and Hardening Guide](https://akvilekiskis.com/work/metasploitable/index.html)
- [Ansible Hardening](https://github.com/dev-sec/ansible-collection-hardening)
- [DoD Cyber Exchange Hardening Scripts](https://public.cyber.mil/stigs/supplemental-automation-content/)
- [RHEL8 Lockdown](https://github.com/rediculum/RHEL8_Lockdown)
