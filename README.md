# Ansible Setup Machines

Ansible configuration for setting up machines.

Heavily inspired by: [LearnLinuxTV][LearnLinuxTV]

See also

- ["How to manage your workstation configuration with Ansible"][manage]
- ["Using Ansible to set up a workstation"][ansible-setup]
- ["Ansible laptop playbook example"][ansible-laptop]
- https://dev.to/iancleary/automating-your-desktop-with-ansible-20jk

## Goals

- Be able to setup my development machine on
  - MacOS
  - Pop!\_OS
  - Ubuntu
  - Fedora
- Be able to setup a machine for the kids with users for all of them
- Be able to setup raspberry pi workstations
- Be able to setup raspberry pi servers

OS specific installations
OS specific modifications/tweeks
dev software
peronal software

## Running Ansible

To run a specific playbook in Ansible:

```sh
ansible-playbook -K path/to/playbook.yml
```

To run the full suite with pull:

```sh
ansible-pull -u https://github.com/lancejjohnson/ansible-setup-machines
```

To run the full suite locally:

```sh
ansible-playbook -c local -i localhost, local.yaml
```



For more information and other ways to run Ansible, see:

https://docs.ansible.com/ansible/latest/user_guide/index.html#executing-playbooks

## LearnLinuxTV

Structure of LearnLinuxTV setup.

```
|__group_vars # Contains files variables by group
|__host_vars # Contains files with variables by host
|__playbooks # Contains files that message completion or failure
|__roles # Directories correspond to group names in hosts file
   |__base # Directory for files and tasks for ALL roles
      |__files
      |  |__users
      |     |__{{directory per user}}
      |        |__{{directory for files by software package}}
      |__handlers # ??? Don't what these directories mean
         |__main.yml
      |__tasks
         |__main.yml # Imports tasks defined in other playbooks. Basically a manifest file
         |__software # Playbooks for software installation by type (e.g. general, development, etc)
         |__users # Files to establish the user and their basic files
            |__jay.yml 
            |__{{other users yaml}}
      |__users
         |__{{directory per user}}
            |__{{directory for files by software package}}

   |__server # Files for server only stations
   |__workstation
      |__files
      |__handlers
      |__tasks
         |__desktop_environments
         |__software
            |__{{playbook per software package}}
            |__# uses variables from host_vars directory to determine when to install each package
         |__system_setup # System-related playbooks
         |__users
            |__jay.yml # Workstation-specific setup for this user beyond the user setup in base
         |__main.yml
      |__vars
|__hosts # defines inventory with group names
|__local.yaml # Not sure what this file is doing
```

## My simplified structure

```
|__playbooks 
   |__fedora
      |__packages.yml
   |__mac
      |__packages.yml
|__tasks
   |__shell.yaml
|__main.yaml 
```

## My setup structure

```
|__group_vars # Contains files variables by group
|__host_vars # Contains files with variables by host
|__playbooks # Contains files that message completion or failure
|__roles # Directories correspond to group names in hosts file
   |__base # Directory for files and tasks for ALL roles
      |__files
      |  |__users
      |     |__{{directory per user}}
      |        |__{{directory for files by software package}}
      |__handlers # ??? Don't what these directories mean
         |__main.yml
      |__tasks
      |__users
         |__{{directory per user}}
            |__{{directory for files by software package}}
   |__devstation
      |__files
      |__handlers
      |__tasks
         |__desktop_environments
         |__software
            |__{{playbook per software package}}
            |__# uses variables from host_vars directory to determine when to install each package
         |__system_setup # System-related playbooks
         |__users
            |__jay.yml # Workstation-specific setup for this user beyond the user setup in base
         |__main.yml
      |__vars
   |__sharedstation
      |__files
      |__handlers
      |__tasks
         |__desktop_environments
         |__software
            |__{{playbook per software package}}
            |__# uses variables from host_vars directory to determine when to install each package
         |__system_setup # System-related playbooks
         |__users # Workstation-specific setup for this user beyond the user setup in base
            |__elaias.yml 
            |__evan.yml
            |__kiersten.yml
            |__kimberly.yml
            |__lance.yml
            |__mikaelah.yml
         |__main.yml
      |__vars
|__hosts # defines inventory with group names
|__local.yaml # Not sure what this file is doing
```

## TODO

- [ ] Dev machine is a role
- [ ] Kids machine is a role 

---

[LearnLinuxTV]:https://github.com/LearnLinuxTV/personal_ansible_desktop_configs
[manage]:https://opensource.com/article/18/3/manage-workstation-ansible
[ansible-setup]:https://fedoramagazine.org/using-ansible-setup-workstation/
[ansible-laptop]:https://github.com/atomicobject/ansible-laptop-playbook-example


