# Simple Makefile to generate an Ansible project layout.

# user-defined variables: repo_path, name
repo_path = local_repository
name = name_of_project

# Makefile parameters
default: run

.PHONY: run clean

run: 
	ansible-galaxy init --init-path $(repo_path) --role-skeleton=templates project_$(name)

clean:
	rm -rfi $(repo_path)/project_$(name)