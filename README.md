# vi-gari
This repository contains my personal Neovim configuration. It's tailored for an efficient and visually pleasing development experience, leveraging the power of Neovim's extensibility and plugin ecosystem.

## Features

- **Enhanced Editing Experience**: Autoclose brackets and quotes, format on save, and more intuitive key mappings for a smoother editing flow.
- **Advanced Code Navigation**: Integrations with Telescope and Treesitter for powerful and efficient code navigation.
- **Integrated Terminal**: Toggleable terminal windows within Neovim, allowing for seamless switching between code and command line.
- **Customized Appearance**: Aesthetic themes and status line configurations with Lualine and Rose Pine.
- **Git Integration**: Vim-fugitive for Git commands directly within Neovim.
- **Language Server Protocol (LSP)**: Configured LSP for code intelligence features like autocompletion and linting.

## Installation

Clone this repository into your Neovim configuration directory:

```bash
git clone https://github.com/sadegh-msm/vi-gari.git ~/.config/nvim
```

### Dependencies

- [Neovim (v0.5 or later)](https://github.com/neovim/neovim)
- Various plugins listed in `packer.lua` (automatically managed by Packer).

## Usage

After installation, open Neovim and the plugins will be automatically installed on the first run.

## Key Bindings
- `<leader>` is space  

### basic vim
- `<leader>pv` for go to netrw
- `<C-q>` for selecting rectangular
- `e` for navigating to the last character of the word
- `b` for navigating to last words first character
- `X` deleting last character of the cursor
- `A` will go end of line and start typing
- `<number>i<anything_to_type>` this will write the typed word n times
- `f<charcter>` finds the next occurence of the chracter you can go to next or last one by `;` or `,`
- `%` on ( or [ or { will find the matching to that charcter
- `* or #` to find the occurence of a word
- `<number>G` go on the specified line
- `o` goes on the next line and makes a new line
- `O` shifts this line an start typing
- `/<anything_to_type>` it will wearch for this word and you can go forward or backeard by `n` and `N`
- `d<number><navigation_key>` delete base on navigation key
- `.` will do the last command
- `yy` for yanking a line
- `S` delete a line and start writing
- `<C-w>` for navigating between panes in vim

### undotree
- `<leader>pv` open the undotree pane

### harpoon
- `<leader>a` add file to harpoon  
- `<C-e>` harpoon quick menu  
- `<leader>1` file 1  
- `<leader>2` file 2  
- `<leader>3` file 3  
- `<leader>4` file 4  
- `<leader>5` file 5  
- `<leader>6` file 6  
- `<leader>7` file 7  

### telescope
- `<leader>ff` find files  
- `<leader>ps` grep inside file  
- `<C-p>` find inside git  

### nvim-tree
- `<leader>pe` toggle nvim tree

### terminal
- `<leader>t` opens a floating terminal window
- `<leader>th` opens horizontal terminal window
- `<leader>tv` opens vertical terminal window
- `<C-a>` close the window
- `<C-hjkl>` move from the window
- `<leader>tt` go back to the last terminal window For more detailed descriptions of key bindings and configurations, refer to the comments within the configuration files.

### comments
- `gc` to comment the selected text in visual 
- `gb` to comment in visual mode with block
- `gcc` comment one line in normal mode

## Customization

Feel free to fork this repository and customize the configuration to fit your workflow. The `init.lua` file and various Lua modules under the `lua` directory can be modified to change settings and key bindings.

