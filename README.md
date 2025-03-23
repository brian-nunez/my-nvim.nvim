# My NeoVim Configuration

## Pre-requisites

Make sure you have NeoVim installed on your system. This configuration was tested with the following version:

```bash
NVIM v0.10.4
Build type: Release
LuaJIT 2.1.1741730670
```

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `lua/custom/plugins/vim.lua` to true
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`

## Installation

Location of the configuration:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows      | On your own                               |

```bash
git clone --branch v0.0.2 --single-branch git@github.com:brian-nunez/my-nvim.nvim.git
cd my-nvim.nvim
git checkout -b v0.0.2-branch
```
