# Regolith-Ansible

## Summary

This repo contain my ansible files that will configure Regolith linux on a laptop or desktop. It makes use to Ansible "tags" to skip the laptop specific configuration.

In the future, I may add more tags and run scenarios to pick and choose various use cases.

## Usage

Tags are used with these commands to "exclude" tasks for a desktop, laptop, nvidia, etc. I found the lists to be much shorter to exclude vs include.

Examples are: no battery indicator on a desktop panel vs one on a laptop panel.

**Remember Tags are to EXCLUDE, not include.**

To run this playbook use:

### Desktop

``` shell
ansible-playbook --skip-tags "laptop,nvidia-compton-fix" --connection=local run.yml
```

### Desktop With NVidia

You can attmpt without this, but this command includes a fix for a terminal glitch I was having due to Nvidia/driver compatibility.

``` shell
ansible-playbook --skip-tags "laptop" --connection=local run.yml
```

### Laptop

``` shell
ansible-playbook --skip-tags "desktop,nvidia-compton-fix" --connection=local run.yml
```

### Laptop With NVidia

You can attmpt without this, but this command includes a fix for a terminal glitch I was having due to Nvidia/driver compatibility.

``` shell
ansible-playbook --skip-tags "desktop" --connection=local run.yml
```

## Nvidia Fix

I have run into issues where gnome terminal is glitching. THis is apparantly a known issue with Nvidia drivers accordign to the Regolith slack channel.

There are two recommended custom Picom (Compton) settings. The fix drops a custom config into `~/.config/regolith/compton/config`. If you attempt the fix and it makes no difference for you, you can revert back to default behavior by deleting the above file and rebooting (Compton changes will not happen by only restarting i3).

## Configuration that differs from default behavior

Any custom settings I have tweaked from default Regolith has a comment with "DK Custom". Do not that this is in Regolith configuration
