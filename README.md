
---

# 🚀 ToadSage Neovim Keybindings

Welcome to my personalized **Neovim configuration** — a curated setup designed
for power, speed, and flow. This setup combines custom Lua-based keybindings,
plugin integrations, and practical defaults,

---

## 📦 Installation

### Prerequisites

Make sure you have:

- Neovim 0.10+ installed
- `git`, `curl`,`lua/hererocks` and any Font
- [`Ansible`](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) (**optional if not using the Starter.yml**).

### Clone the Config

```bash
git clone https://github.com/T0adSage45/nvim ~/.config/nvim
````

### Applying with Ansible

If using Ansible provisioning:

```bash
ansible-playbook --verbose ~/.config/nvim/Starter.yml --ask-become-pass
```

> 💡 Tip: Run from the root of your dotfiles directory. This will symlink config files, install tools, and apply themes.



## 🔑 Keybinding Reference

check [🔑 ToadSage Neovim Keybindings](./Sagebinds.md) for a full list of custom keymaps.
For Advance default vim/nvim keybinds visit [🔑 Neovim Keybindings](./Keybinds.md).

---

## ⚡ Themes

Change color scheme on the fly:

```vim
:lua ColorMyPencils("rose-pine")
```

Or explore any defined inside your [color.lua](./lua/ToadSage/lazy/colors.lua).

---

## 🙌 Credits

This config is inspired by:

* [ThePrimeagen](https://github.com/ThePrimeagen) (plugin picks & workflow)
* [tjdevries](https://github.com/tjdevries) (Lua patterns & philosophy)
* My own battles with writing fast, clean code

---

## 💬 Notes

* This config is under active development.
* You’re encouraged to fork and shape it into your own ninja toolkit.

---

Happy Neovim-ing! 🚀

