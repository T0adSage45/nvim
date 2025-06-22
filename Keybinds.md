---

### 🔡 Case & Text Transformation

| Mode | Keybinding   | Description                            |
| ---- | ------------ | -------------------------------------- |
| `n`  | `~`          | Toggle case of character under cursor  |
| `n`  | `g~{motion}` | Toggle case over a motion (e.g. `g~w`) |
| `n`  | `gu{motion}` | Convert motion to lowercase            |
| `n`  | `gU{motion}` | Convert motion to uppercase            |
| `v`  | `=`          | Auto-indent selected lines             |
| `n`  | `gq{motion}` | Format (wrap) lines or motion          |

---

### 🚀 Cursor Movement & Navigation

| Mode | Keybinding       | Description                                 |
| ---- | ---------------- | ------------------------------------------- |
| `n`  | `H`, `M`, `L`    | Top, Middle, Bottom of screen               |
| `n`  | `{`, `}`         | Jump to previous/next paragraph             |
| `n`  | `[[`, `]]`       | Jump to previous/next section/function      |
| `n`  | `g;`, `g,`       | Jump to last change / last undo change      |
| `n`  | `gi`             | Return to last insert position              |
| `n`  | `g0`, `g^`, `g$` | Start, first non-blank, end of display line |
| `n`  | `zz`, `zt`, `zb` | Center, top, bottom screen alignment        |
| `n`  | `%`              | Jump to matching pair ((), {}, \[])         |

---

### 📦 Registers, Buffers, and Marks

| Mode | Keybinding          | Description                             |
| ---- | ------------------- | --------------------------------------- |
| `n`  | `"` + reg name      | Use named register (e.g., `"ap`, `"0y`) |
| `:`  | `:reg`              | View all registers                      |
| `n`  | `'a`, `` `a ``      | Jump to line/column of mark `a`         |
| `:`  | `:marks`            | View all marks                          |
| `:`  | `:ls` or `:buffers` | List open buffers                       |
| `n`  | `<C-^>`             | Switch to alternate buffer              |
| `:`  | `:b#`               | Same as `<C-^>` — alternate buffer      |

---

### 🧙 Visual Mode Power

| Mode | Keybinding   | Description                        |
| ---- | ------------ | ---------------------------------- |
| `n`  | `gv`         | Reselect last visual selection     |
| `v`  | `>`, `<`     | Indent / unindent selected block   |
| `v`  | `J`, `K`     | Move selected lines down/up        |
| `v`  | `o`          | Swap cursor and anchor             |
| `:`  | `:'<,'>sort` | Sort selected lines alphabetically |

---

### 🔍 Search & Replace Techniques

| Mode | Keybinding       | Description                                 |
| ---- | ---------------- | ------------------------------------------- |
| `n`  | `*`, `#`         | Search word under cursor forward/backward   |
| `n`  | `g*`, `g#`       | Like `*`/`#` without whole-word restriction |
| `:`  | `:%s/foo/bar/gc` | Replace all with confirmation               |
| `:`  | `:noh`           | Clear search highlights                     |

---

### 🧼 Undo/Redo & Time Travel

| Mode | Keybinding     | Description                        |
| ---- | -------------- | ---------------------------------- |
| `n`  | `u`            | Undo                               |
| `n`  | `<C-r>`        | Redo                               |
| `n`  | `g-`, `g+`     | Go to older/newer change           |
| `:`  | `:undolist`    | View undo branches                 |
| `:`  | `:earlier 10m` | Go back 10 minutes in undo history |
| `:`  | `:later 1h`    | Go forward 1 hour in undo history  |

---

### 🔧 Miscellaneous & Meta Controls

| Mode | Keybinding       | Description                         |             |                               |
| ---- | ---------------- | ----------------------------------- | ----------- | ----------------------------- |
| `n`  | `.`              | Repeat last change                  |             |                               |
| `n`  | `@@`             | Replay last recorded macro          |             |                               |
| `:`  | \`redir @a       | messages                            | redir END\` | Save messages to register `a` |
| `n`  | `K`              | Keyword help                        |             |                               |
| `:`  | `q:`, `q/`, `q?` | Open command/search history windows |             |                               |
| `:`  | `:!cmd`          | Run shell command                   |             |                               |
| `:`  | `:read !cmd`     | Insert output of shell command      |             |                               |

---

### 🎓 Pro Insert Mode Wisdom

| Mode | Keybinding   | Description                                   |
| ---- | ------------ | --------------------------------------------- |
| `i`  | `<C-r>{reg}` | Insert content of register (e.g., `<C-r>"`)   |
| `i`  | `<C-o>{cmd}` | Temporarily enter Normal mode for one command |

---


