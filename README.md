# Regolith-Ansible

## Summary

This repo contain my ansible files that will configure Regolith linux on a laptop or desktop. It makes use to Ansible "tags" to skip the laptop specific configuration.

In the future, I may add more tags and run scenarios to pick and choose various use cases.

## Usage

To run this playbook use:

### Desktop

``` shell
ansible-playbook --skip-tags "laptop" --connection=local run.yml
```

### Laptop

``` shell
ansible-playbook --skip-tags "desktop" --connection=local run.yml
```
