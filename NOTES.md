# Ansible notes

To put something in the directory of an arbitrary user you need to user `${HOME}/some/path` instead of `{{ ansible_env.HOME}}/some/path`. The latter will always be the directory of the user running ansible.

# Packages

- gnome-tweak-tools
- ~~rcm~~ (I don't want to use this anymore. Just make it a repeatable ansible task)
- [x] alacritty
- [ ] asdf
- [x] autoconf
- [x] automake
- [x] ctags
- [x] flatpak
- [x] ncurses-devel
- [x] neovim
- [x] openssl
- [x] openssl-devel
- [ ] postgresql
- [x] python3
- [x] ripgrep
- [x] tmux
- [x] xclip
- [ ] zeal
- [x] zsh


# Flatpak or Snap packages

- signal
- slack

# TODO

- dconf
- 1password
- zoom
- register sublime text

asdf plugin add
  - rust
  - ruby
  - nodejs
  - erlang
  - elixir
  - go

clone dotfiles and use rcm to put in place

sshkeygen

upload key to github and gitlab

change shells to zsh

Change Capslock to Ctrl (how to do this with dconf

Install minpac and run package install

Don't use 
