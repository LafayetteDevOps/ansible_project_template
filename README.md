# ansible_project_template
An Ansible project_ template written in Jinja2 to quickly generate an Ansible project_.  The Ansible project repo can then be used to call 
one or more Ansible role_ repos witin the Ansible Automation Platform or on the CLI.

Typically, `ansible-galaxy` is used to generate the structual layout and is still used in this case.  A Makefile is used to automate this 
process by simplifying the task, saving time, and avoiding errors.

Dependencies:
---

- GNU make needs to be installed within the environment. 
- Two variables need to be defined on the CLI: repo_name, name
    - `repo_name` is the location of the newly created project repo.  `name` is the name of the project.

Usage:
---

All project repos will have a `project_` prefix.  Please use underscores for name separation.  

Generate a new project repo for an Apache install:

`$ make repo_path=/root/Repos1 name=apache_install run`

- This will create a new project repo at `/root/Repos1` with the name `project_apache_install`.

Remove same project repo, Apache install, in case of an error, etc. 

`$ make repo_path=/root/Repos1 name=apache_install clean `

- This will remove the created repository in its entirety.  Be diligent.


Info - ansible-galaxy
--- 

Clone the Jinja2 template skeleton in the current working directory, and use Ansible-Galaxy to generate the new Ansible project repository.

An example using the parameter `--role-skeleton` and path to this repository.

`$ ansible-galaxy init --role-skeleton=</path/to/template/skeleton> project_<name>`

An example creating the same project but to a different location, Repositories.

`$ ansible-galaxy init --init-path Repositories --role-skeleton=</path/to/template/skeleton> project_<name`

Help:
---

`$ make --help` \
`$ ansible-galaxy init --help`