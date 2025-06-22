--

## 🧾 Modes Legend (Neovim)

| Mode | Shorthand | Full Mode             | Description                                                  |
|------|-----------|-----------------------|--------------------------------------------------------------|
| `n`  | Normal    | Normal Mode           | Default mode for navigation and commands                     |
| `v`  | Visual    | Visual Mode           | Used to select text                                          |
| `x`  | VisualBlk | Visual Block Mode     | Block-wise selection                                         |
| `i`  | Insert    | Insert Mode           | For inserting text                                           |
| `s`  | Select    | Select Mode           | Select + insert (useful with snippets)                       |
| `c`  | Command   | Command Mode          | For typing commands (e.g., `:`)                              |
| `t`  | Terminal  | Terminal Mode         | Inside terminal buffer                                       |
| `o`  | Operator  | Operator-pending Mode | After commands like `d`, `y`, waiting for motion             |


| leader = space |

---

## 🔑 ToadSage Neovim Keybindings

| Mode(s)      | Keybinding                      | Action / Command                         | Description                               | Scope                    |
|--------------|----------------------------------|------------------------------------------|-------------------------------------------|--------------------------|
| `n`          | `<leader>pv`                    | `:e .`                                   | Open netrw/Oil.nvim file explorer         | Global                   |
| `i`          | `<C-s>e`                        | `ls.expand()`                            | Expand LuaSnip snippet                    | Global                   |
| `i`, `s`     | `<C-s>;`                        | `ls.jump(1)`                             | Jump forward in snippet placeholders      | Global                   |
| `i`, `s`     | `<C-s>,`                        | `ls.jump(-1)`                            | Jump backward in snippet placeholders     | Global                   |
| `i`, `s`     | `<C-E>`                         | `ls.change_choice()`                     | Change current snippet choice             | Global                   |
| `n`          | `<leader>gs`                    | `:Git`                                   | Open Git status                           | Git buffer               |
| `n`          | `<leader>p`                     | `:Git push`                              | Push commits                              | Git buffer               |
| `n`          | `cc`                     | `:Git.create_commit`                            | Commit staged changes                     | Git buffer               |
| `n`          | `<leader>P`                     | `:Git pull --rebase`                     | Pull changes with rebase                  | Git buffer               |
| `n`          | `<leader>t`                     | `:Git push -u origin`                    | Push to remote origin                     | Git buffer               |
| `n`          | `gu`, `gh`                      | `:diffget //2`, `:diffget //3`           | Accept left/right diff                    | Diff view                |
| `n`          | `<leader>tt`                    | `trouble.toggle()`                       | Toggle Trouble plugin UI                  | Global                   |
| `n`          | `[t`, `]t`                      | `trouble.prev()`, `trouble.next()`       | Navigate Trouble list                     | Trouble window           |
| `n`          | `<C-b>`                         | `:Neotree toggle right`                  | Toggle Neotree file explorer              | Global                   |
| `n`          | `<leader>u`                     | `:UndotreeToggle()`                      | Toggle UndoTree history                   | Global                   |
| `n`          | `<leader>tc`                    | `neotest.run.run()`                      | Run nearest test                          | Test-enabled buffer      |
| `n`          | `<leader>d`                     | `:Alpha`                                 | Open dashboard                            | Global                   |
| `n`          | `<C-w>w/h/j/k/l`                | `TmuxNavigate...`                        | Navigate between Tmux panes               | Tmux-integrated buffer   |
| `n`          | `<leader>A`, `<leader>a`        | `harpoon:list():prepend()/add()`        | Add file to Harpoon                       | Global                   |
| `n`          | `<C-e>`                         | `harpoon.ui:toggle_quick_menu()`         | Toggle Harpoon quick menu                 | Global                   |
| `n`          | `<C-h>`, `<C-t>`, `<C-n>`, `<C-s>` | `harpoon:list():select(N)`           | Navigate to Harpoon file 1–4             | Global                   |
| `n`          | `<leader><C-h/t/n/s>`           | `harpoon:list():replace_at(N)`          | Replace Harpoon file at position N        | Global                   |
| `n`          | `<leader>pf`                    | `find_files()`                           | Find files                                | Telescope window         |
| `n`          | `<C-p>`                         | `git_files()`                            | Search Git-tracked files                  | Telescope window         |
| `n`          | `<leader>pws`, `<leader>pWs`    | `grep_string(<cword>) / (<cWORD>)`      | Grep current word / WORD                  | Telescope window         |
| `n`          | `<leader>ps`                    | `grep_string(input)`                     | Prompt grep input                         | Telescope window         |
| `n`          | `<leader>vpn`, `<leader>vpp`    | `find_files(config/lazy)`               | Find plugin/config files                  | Telescope window         |
| `n`          | `<leader>vh`                    | `help_tags()`                            | Search help tags                          | Telescope window         |
| `n`          | `gd`, `K`                       | `definition()`, `hover()`                | LSP definition and hover info             | LSP-attached buffer      |
| `n`          | `<leader>vws`, `<leader>vd`     | `workspace_symbol()`, `open_float()`     | LSP workspace symbols, diagnostics        | LSP-attached buffer      |
| `n`          | `<leader>vca`, `<leader>vrr`    | `code_action()`, `references()`          | LSP code actions and references           | LSP-attached buffer      |
| `n`          | `<leader>vrn`                   | `rename()`                               | LSP rename symbol                         | LSP-attached buffer      |
| `i`          | `<C-?>`                         | `signature_help()`                       | LSP signature help                        | LSP-attached buffer      |
| `n`          | `[d`, `]d`                      | `goto_prev()`, `goto_next()`             | Go to next/prev diagnostic                | LSP-attached buffer      |
| `v`          | `J`, `K`                        | Move block up/down                       | Move selected lines                       | Global                   |
| `n`          | `J`, `<C-d>`, `<C-u>`           | Join lines, scroll half screen           | With centering                            | Global                   |
| `n`          | `n`, `N`                        | Search next / prev                       | With centering                            | Global                   |
| `n`          | `<leader>zig`                   | `:LspRestart`                            | Restart LSP                               | Global                   |
| `x`          | `<leader>p`                     | `["_dP]`                                 | Paste without yanking                     | Global                   |
| `n`, `v`     | `<leader>y`, `<leader>Y`        | Yank to system clipboard                 | Copy selected content                     | Global                   |
| `n`, `v`     | `<leader>d`                     | `["_d]`                                  | Delete without yanking                    | Global                   |
| `i`          | `<C-c>`                         | `<Esc>`                                  | Exit insert mode                          | Global                   |
| `n`          | `Q`                             | `<nop>`                                  | Disable accidental macro entry            | Global                   |
| `n`          | `<C-f>`                         | `tmux-sessionizer`                       | Open Tmux session picker                  | Global                   |
| `n`          | `<leader>f`                     | `vim.lsp.buf.format()`                   | Format current file                       | LSP-attached buffer      |
| `n`          | `<C-j>`, `<C-k>`                | `cnext()`, `cprev()`                     | Quickfix navigation                       | Global                   |
| `n`          | `<leader>j`, `<leader>k`        | `lnext()`, `lprev()`                     | Location list navigation                  | Global                   |
| `n`          | `<leader>s`                     | `:%s/<word>/<word>/gI`                   | Replace current word                      | Global                   |
| `n`          | `<leader>x`                     | `!chmod +x %`                            | Make file executable                      | Global                   |
| `n`          | `<leader>mr`                    | `CellularAutomaton scramble`            | Fun visual effect                         | Global                   |
| `n`          | `<leader><leader>`              | `so`                                     | Source current file                       | Current buffer           |

---

>> here some advance default nvim keys. [[Keybinds.md]]
