# Neovim config folder with [lazy.nvim](https://github.com/folke/lazy.nvim)

structure
```
.
├── init.lua -- calling config & core
├── lazy-lock.json
└── lua
    ├── config
    │   └── lazy.lua -- original settings of lazy.nvim & calling plugins
    ├── core
    │   ├── defaults.lua -- basic vim settings
    │   └── keymaps.lua -- vim keymaps
    └── plugins
        ├── plugin01.lua
        ├── plugin02.lua
        ├── plugin03.lua
        ├── ...
```
