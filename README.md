# AstroNvim Template -- customized by osamu

This `osamu` branch is the branch which contains my latest forked content and
used on my workstation.

<!--
FIXME: Update when written:

This is mentioned in my memo: [AstroNvim
customization](https://osamuaoki.github.io/en/2024/06/15/vim-learn-10/#astronvim-customization).
-->

Since this is meant to be my backup configuration, I will mercilessly apply
rebase to the latest upstream `main` branch and force push this `osamu` branch.

## Customized features

Basic idea is OPT-IN to keep fancy functionalities accessible but keep them off
as much as possible until requested explicitly. So I can feel like using plain
`nvim` without major custom configuration changes.

- nonumber/ norelativenumber
- no auto pairs
- no diagonostic
- no completion
- no editorconfig
- autoformat on save (TODO: set to "no autoformat on save")

I added extra features:

- unicode code point HEX display (while replacing clock display and removing separator) in statusline. E.g., `[+U20]`.
- `tris203/precognition.nvim` package for better navigation. (start invisible)

I added extra key bindings (`†` after corresponding explanations):

- `<leader>uP` to toggle precognition
- `<leader>ue` to toggle editorconfig

I kept `:set ignorecase` and `:set smartcase`.

- Use regex string with mixed-cases or `\C` to make search as case sensitive one for nvim internal searches
- Use regex string with `\c` to force search as case insensitive one for nvim internal searches
- Use regex string with `(?-i)` as case sensitive one for `:gr pattern`
- Use regex string with `(?i)` as case insensitive one for `:gr pattern`

I use `git reset --mixed` to clean this checked out configuration to preserve `*.json` settings for LazyExtras.

<!--
FIXME: These features of my older LazyVim customization are not yet
implimented.

* Vim internal optional `cfilter` package for better quickfix list experiences.
* Under `<leader>f`, several floating Terminals (Perl REPL, Python, Dash, Midnight_Commander)
* `<leader>uQ` to be non-quiet -- enable all fancy LazyVim behaviors
* `<leader>uq` to be quiet -- default plain nvim behaviors

-->

## Reminders

### Editorconfig

Text data are modified upon save not only by LSP based **Auto Format** but also by **Editorconfig** settings.

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```
