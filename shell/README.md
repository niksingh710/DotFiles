# The Shell Dir

This dir contains all the required files needed to setup my terminal experience.

## Short preview how this all works.

```
┌─────────────────────────────────┐                             ┌───────────────────────────┐
│                                 │                             │                           │
│   MYCONFIG = ~/.config/myconf/  │                  ┌──────────►  MYCONFIG/aliases/alias   │
│                                 │                  │          │                           │
└─────────────────────────────────┘                  │          └───────────────────────────┘
                                                     │
┌────────────┐                                       │          ┌────────────────────┐
│            │   sourcing                            │          │                    │
│  ~/.zshrc  ├─────────────┐                         ├──────────►  MYCONFIG/zsh/zsh  │
│            │             │                         │          │                    │
└────────────┘         ┌───▼────────────┐            │          └────────────────────┘
                       │                │ sourcing   │
                       │   ~/.nikhilrc  ├────────────┤
                       │                │            │
┌────────────┐         └────▲───────────┘            │          ┌──────────────────────┐
│            │              │                        │          │                      │
│  ~/.bashrc ├──────────────┘                        ├──────────►  MYCONFIG/bash/bash  │
│            │   sourcing                            │          │                      │
└────────────┘                                       │          └──────────────────────┘
                                                     │
                                                     │
                                                     │
                                                     │          ┌──────────────────────┐
                                                     │          │                      │
                                                     │          │  MYCONFIG/pathmod    │
                                                     │          │  MYCONFIG/func       │
                                                     └──────────►  MYCONFIG/variables  │
                                                                │                      │
                                                                └──────────────────────┘
```
