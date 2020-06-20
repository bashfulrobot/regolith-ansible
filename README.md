# Regolith-Ansible

## Summary

This repo contain my ansible files that will configure Regolith linux on a laptop or desktop. It makes use to Ansible "tags" to configure laptop/desktop specific configuration.

In the future, I may add more tags and run scenarios to pick and choose various use cases.

## Usage

Tags are used with these commands to "include" tasks for a desktop, laptop, nvidia, etc.

Examples are: no battery indicator on a desktop panel vs one on a laptop panel.

To run this playbook use:

### Desktop

``` shell
ansible-playbook --tags "untagged,desktop" --connection=local run.yml
```

### Desktop With NVidia

You can attmpt without this, but this command includes a fix for a terminal glitch I was having due to Nvidia/driver compatibility.

``` shell
ansible-playbook -tags "untagged,desktop,nvidia-compton-fix" --connection=local run.yml
```

### Laptop

``` shell
ansible-playbook -tags "untagged,laptop" --connection=local run.yml
```

### Laptop With NVidia

You can attmpt without this, but this command includes a fix for a terminal glitch I was having due to Nvidia/driver compatibility.

``` shell
ansible-playbook -tags "untagged,laptop,nvidia-compton-fix" --connection=local run.yml
```

## Nvidia Fix

I have run into issues where gnome terminal is glitching. THis is apparantly a known issue with Nvidia drivers accordign to the Regolith slack channel.

There are two recommended custom Picom (Compton) settings. The fix drops a custom config into `~/.config/regolith/compton/config`. If you attempt the fix and it makes no difference for you, you can revert back to default behavior by deleting the above file and rebooting (Compton changes will not happen by only restarting i3).

## Configuration that differs from default behavior

Any custom settings I have tweaked from default Regolith has a comment with "DK Custom". Do note that this is in Regolith configuration files, and not in system settings I configure through Ansible.

## Available Tags

### STATUS

🚧 This tagging section is under review and testing (Work in Progress). I just wanted ot capture the data.

You can run any exclusion or inclusion patten you wish based on tags.

By default if you run the `ansible-playbook` command without any `--skip-tags` or `--tags`, every task will be run.

### Which Tags are available

You can check out which tags are in use by running `ansible-playbook --connection=local --list-tags run.yml`. This will not make any changes to your system.

### Testing Tags

You can see which tasks would match in a dry tun with a command such as:

``` shell
ansible-playbook --list-tasks --tags "desktop" run.yml
```

or

``` shell
ansible-playbook --list-tasks --tags "untagged,desktop" run.yml
```
