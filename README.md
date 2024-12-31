# 🚀 Neovim Keybindings

Welcome to my personalized Neovim keybindings configuration! This README provides a comprehensive guide to both custom and default keybindings to enhance your Neovim experience.

## 📚 Table of Contents

- [Custom Keybindings](#custom-keybindings)
  - [File Operations](#file-operations)
  - [Search and Navigation](#search-and-navigation)
  - [Buffer and Window Management](#buffer-and-window-management)
  - [Editing and Text Manipulation](#editing-and-text-manipulation)
  - [LSP and Diagnostics](#lsp-and-diagnostics)
  - [Other Actions](#other-actions)
- [Default Neovim Keybindings](#default-neovim-keybindings)
  - [File Operations](#file-operations-1)
  - [Window Management](#window-management)
  - [Cursor Movement](#cursor-movement)
  - [Text Manipulation](#text-manipulation)
  - [Editing](#editing)
  - [Search and Navigation](#search-and-navigation-1)
  - [Undo and Redo](#undo-and-redo)
  - [Miscellaneous](#miscellaneous)

## 🎨 Custom Keybindings

### File Operations

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `<leader>pv` | Open the file explorer (`vim.cmd.Ex`)            |
| Normal | `<leader>f`  | Format file using LSP (`vim.lsp.buf.format`)     |
| Normal | `<leader>x`  | Make file executable (`<cmd>!chmod +x %<CR>`)    |
| Normal | `<leader>vpp`| Edit Packer configuration                        |

### Search and Navigation

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `<leader>pws` | Search current word in the file                 |
| Normal | `<leader>pWs` | Search current word (with uppercase boundary)   |
| Normal | `<leader>ps`  | Search a string entered by the user             |
| Normal | `n`           | Next search result, centered                    |
| Normal | `N`           | Previous search result, centered                |
| Normal | `<leader>vh`  | Open help tags                                  |

### Buffer and Window Management

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `<C-w>h`   | Move to left window                              |
| Normal | `<C-w>j`   | Move to bottom window                            |
| Normal | `<C-w>k`   | Move to top window                               |
| Normal | `<C-w>l`   | Move to right window                             |
| Normal | `<C-w>q`   | Close current window                             |
| Normal | `<C-w>w`   | Switch between windows                           |

### Editing and Text Manipulation

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Visual | `J`        | Move selected lines down                         |
| Visual | `K`        | Move selected lines up                           |
| Normal | `J`        | Join lines and maintain cursor position          |
| Normal | `<leader>p`| Paste without affecting register                 |
| Normal | `<leader>y`| Yank to system clipboard                         |
| Normal | `<leader>Y`| Yank whole line to system clipboard              |
| Normal | `<leader>d`| Delete to black hole register                    |
| Normal | `<leader>s`| Substitute word                                  |

### LSP and Diagnostics

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `<leader>zig` | Restart LSP                                   |
| Normal | `<C-k>`    | Next quickfix item                               |
| Normal | `<C-j>`    | Previous quickfix item                           |
| Normal | `<leader>k`| Next location list item                          |
| Normal | `<leader>j`| Previous location list item                      |
| Normal | `<leader>tt` | Toggle trouble                                 |

### Other Actions

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `<leader>mr` | Start Cellular Automaton rain animation        |
| Normal | `<leader><leader>` | Source the configuration file            |

## 🔧 Default Neovim Keybindings

### File Operations

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `:w`       | Save file                                        |
| Normal | `:q`       | Quit Neovim                                      |
| Normal | `:wq`      | Save and quit                                    |
| Normal | `:x`       | Save and quit (same as `:wq`)                    |
| Normal | `:e <file>`| Edit a file                                      |

### Window Management

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `:split`   | Split window horizontally                        |
| Normal | `:vsplit`  | Split window vertically                          |

### Cursor Movement

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `gg`       | Go to the top of the file                        |
| Normal | `G`        | Go to the bottom of the file                     |
| Normal | `0`        | Go to the beginning of the line                  |
| Normal | `$`        | Go to the end of the line                        |

### Text Manipulation

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `dd`       | Delete current line                              |
| Normal | `yy`       | Yank (copy) current line                         |
| Normal | `p`        | Paste text after the cursor                      |
| Normal | `P`        | Paste text before the cursor                     |
| Visual | `y`        | Yank selected text                               |
| Visual | `d`        | Delete selected text                             |

### Editing

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Insert | `<C-h>`    | Delete character before the cursor               |
| Insert | `<C-w>`    | Delete word before the cursor                    |
| Insert | `<C-u>`    | Delete all text before the cursor                |
| Insert | `<Esc>`    | Exit insert mode                                 |

### Search and Navigation

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `/`        | Search for text in the file                      |
| Normal | `n`        | Next search result                               |
| Normal | `N`        | Previous search result                           |
| Normal | `*`        | Search for the word under the cursor             |

### Undo and Redo

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `u`        | Undo the last change                             |
| Normal | `<C-r>`    | Redo the last undone change                      |

### Miscellaneous

| Mode   | Keybinding | Action                                           |
|--------|------------|--------------------------------------------------|
| Normal | `:`        | Enter command mode                               |
| Normal | `.`        | Repeat last command                              |
| Normal | `<leader>ww`| open vimWiki in working window                 |
| Normal | `<leader>wt`|  open vimWiki in new tab                        |

## 🎉 Happy Neovim-ing!

These keybindings are designed to enhance your Neovim experience. Feel free to customize them further to suit your needs. Remember, the key to mastering Neovim is practice and patience. Enjoy your journey to becoming a Neovim power user! 🚀

### I dont have time to write, so i generated this from gpt i some keys won't work i dont know figure it out yourself ###
### AI Caution ###

also i use prime's configuration on dvorak btw !!!!
