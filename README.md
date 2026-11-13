# Neovim Configuration

A minimal, modular Neovim configuration built with **Lua** and **lazy.nvim**.

Designed for macOS and Windows.

## Features

- **lazy.nvim** – Plugin manager
- **Rose Pine** – Colorscheme
- **Telescope** – Fuzzy finder
- **Neo-tree** – File explorer
- **Blink.cmp** – Autocompletion
- **Mason** – LSP installer
- **mason-lspconfig** – LSP integration
- **nvim-lspconfig** – Language server configuration
- **Gitsigns** – Git integration
- **Which-key** – Keybinding hints
- **Mini.surround** – Surround editing
- **Flash.nvim** – Fast navigation

## Structure

```text
nvim/
├── init.lua
├── lazy-lock.json
└── lua/
    ├── config/
    │   ├── options.lua
    │   ├── keymaps.lua
    │   └── lazy.lua
    └── plugins/
        ├── colorscheme.lua
        ├── telescope.lua
        ├── neo-tree.lua
        ├── blink.lua
        ├── gitsigns.lua
        ├── which-key.lua
        ├── mini-surround.lua
        ├── flash.lua
        ├── mason.lua
        └── lsp.lua
```

## Requirements

- Neovim 0.11+
- Git
- A Nerd Font (optional)
- ripgrep (for Telescope live grep)

## Installation

Clone the repository into your Neovim configuration directory.

**macOS:**
```bash
git clone YOUR_REPOSITORY ~/.config/nvim
```

**Windows:**
```powershell
git clone YOUR_REPOSITORY $env:LOCALAPPDATA/nvim
```

Open Neovim and run:

```vim
:Lazy sync
```

## Keymaps

| Key | Action |
|---|---|
| `Space ff` | Find files |
| `Space fg` | Live grep |
| `Space fb` | Find buffers |
| `Space e` | File explorer |
| `Space sv` | Vertical split |
| `Space sh` | Horizontal split |
| `Space la` | Code actions |
| `Space lr` | Rename symbol |
| `Space lf` | Code format |
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Hover documentation |
| `s` | Flash jump |

Leader key: `Space`

## License

MIT
