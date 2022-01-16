# Personal System configs

## Shell

This dir contains my shell configs.
I use zsh and bash shell so i have my own rc file that gets passed through both of `~/.zshrc` and `~/.bashrc`

To setup this `stow` command is needed.


```txt
 .
├──  .config
│  ├──  zsh
│  │  └──  zsh
│  ├──  bash
│  │  └──  bash
│  └──  myconf
│     ├──  aliases
│     │  ├──  distro
│     │  │  └──  ubuntu
│     │  └──  alias
│     └──  pathmod
├──  .nikhilrc
├──  .zshrc
└──  .bashrc
```

Here `.bashrc` and `.zshrc` sources `.nikhilrc` that have common commands that are compatible with both shells.

But then there is a if condition checking `ps` to identify current running shell and exec custom shell based command.

## personal

This dir contains my personal binaries and misc stuff commonly used by other configs.

## fonts dir contains all the fonts i use.

after stowing the command to execute is.
`fc-cache -f -v`
