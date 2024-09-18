### What is this?
This is an excerpt from my dotfiles. Do know that this is (continously) a work in progress. This is a static dump for sharing with people, and there won't be updates

### How to use it?
The logic of this setup consists of two components:

[1] Local machine component: Only for configurations relating to the specific machine. This would be your `~/.zshrc` or `~/.bashrc` file.

[2] Cloud hosted components: All configurations that can be shared accross machines.

Inside the machine specific component [1] the cloud hosted components are sourced with:

```
    CONFIG_DIR="$HOME/Filen_io/ssd_env/config/"
    
    for i in $(find $CONFIG_DIR -type f -name "*.sh" -o -name "*.zsh" | sort); do
      source $i
    done
```

This sources all files in $CONFIG_DIR that end in "*.sh" or "*.zsh" (for bash the latter would be "*.bash"). 
"*.sh" is for both shells, and "*.bash" or "*.zsh" would be for the specific shell only.

### Why bother? Why all the small files?
Makes for easier sharing across environments.

### Coolest features
cd_tools, copytools, easyconnect

### What can I find here?
At 2024-09-18:

```
.
├── application_configs
│   ├── nvim
│   │   ├── init.lua
│   │   ├── lazy-lock.json
│   │   └── lua
│   │       ├── autocommands.lua
│   │       ├── keymaps.lua
│   │       ├── options.lua
│   │       ├── plugins
│   │       │   ├── autopairs.lua
│   │       │   ├── comment.lua
│   │       │   ├── dial.lua
│   │       │   ├── lastplace.lua
│   │       │   ├── lsp
│   │       │   │   ├── lspconfig.lua
│   │       │   │   ├── mason.lua
│   │       │   │   └── nvim-cmp.lua
│   │       │   ├── lualine.lua
│   │       │   ├── mini-ai.lua
│   │       │   ├── mini-cursorword.lua
│   │       │   ├── nvim-colorizer.lua
│   │       │   ├── nvim-surround.lua
│   │       │   ├── nvim-tree.lua
│   │       │   ├── oil.lua
│   │       │   ├── rainbow-delimiters.lua
│   │       │   ├── sentiment.lua
│   │       │   ├── slime.lua
│   │       │   ├── substitute.lua
│   │       │   ├── telescope.lua
│   │       │   ├── treesitter.lua
│   │       │   ├── which-key.lua
│   │       │   └── wilder.lua
│   │       └── themes
│   │           ├── kanagawa.lua
│   │           └── nightfox.lua
│   ├── tmux
│   ├── vim
│   └── wezterm
│       ├── colors
│       │   └── oxocarbon-dark.toml
│       └── wezterm.lua
└── shells
    ├── application_inits
    │   ├── atuin
    │   │   └── how2install
    │   ├── bat.sh
    │   ├── chatgpt.sh
    │   ├── easy_connect
    │   │   ├── aliases.sh
    │   │   ├── keybinds.bash
    │   │   └── keybinds.zsh
    │   ├── fzf
    │   │   ├── config_variables.sh
    │   │   ├── init.bash
    │   │   └── init.zsh
    │   ├── ssh_agent.sh
    │   ├── trash-put.sh
    │   ├── tree.sh
    │   └── zoxide
    │       ├── zoxide.bash
    │       └── zoxide.zsh
    ├── core_configurations
    │   ├── bash
    │   │   ├── erc.bash
    │   │   ├── history.bash
    │   │   └── prompt.bash
    │   ├── grep.sh
    │   ├── ls.sh
    │   ├── n.sh
    │   └── zsh
    │       ├── completions.zsh
    │       ├── erc.zsh
    │       ├── history.zsh
    │       └── keybinds.zsh
    ├── linux.sh
    ├── macos_patch.sh
    └── shell_functions
        ├── archiving
        │   ├── archive.sh
        │   └── unarchive.sh
        ├── cd_tools
        │   ├── cd_tools.sh
        │   ├── keybinds.bash
        │   └── keybinds.zsh
        ├── conda.sh
        ├── copy_tools.sh
        ├── kat.sh
        ├── repl_select
        │   ├── keybinds.bash
        │   ├── keybinds.zsh
        │   └── repl_select.sh
        ├── tmux.sh
        └── wezterm_aliases.sh
```
