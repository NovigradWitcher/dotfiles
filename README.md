# Dotfiles Backup Repository

This is my personal dotfiles backup.

## Purpose

This repository stores shell, editor, terminal, and tool configuration files in one place so they can be versioned, reviewed, and restored quickly.

## Repository Structure

```text
.
├── fastfetch/
├── git/
├── mise/
├── ssh/
├── zsh/
└── README.md
```

## Pre-requisites (Placeholder Steps)

After cloning this repo (make sure to use --recurse-submodules), do the following steps:

1. Install [zsh](https://www.zsh.org) via a package manager of your choice. I used homebrew. Additionally, install [oh-my-zsh](https://ohmyz.sh/) as well.

2. Install mise, cowsay, and fortune packages through a package manager of your choice.

3. Setup ssh support - I use Bitwarden, and use it's [ssh agent](https://bitwarden.com/help/ssh-agent/) integratin to avoid having my ssh key on the machine.

### This is specific to a linux setup only

### TODO

- Add scripts/templates to make this platform agnostic.
