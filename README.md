This Markdown file details all the packages used in my configuration that need to be installed outside of Vim, along with some configuration details.

- **Note**: For the command line I deleted the `:` so you can easily copy and paste the things inside the code block.

The package managers I use are as follows:

- `brew` for macOS
- `apt` and `apt-get` for Linux (Ubuntu)
- `choco` for Windows
- I use `lazy` as my package manager for Vim itself.

## Installation

### Windows

```bash
choco install neovim -y
```

### macOS

```bash
brew install neovim
```

### Linux (Ubuntu)

```bash
sudo apt install neovim
```

## Neovim Directory

Usually, you must create Neovim files in the provided paths.

### Windows

```bash
C:\Users\[userName]\AppData\Local\nvim
```

### macOS and Linux

```bash
~/.config/nvim
```

## Install MinGW for the C compiler in Windows

```bash
choco install mingw -y
```

## Telescope Dependencies

Telescope requires `fd` and `ripgrep`.

For Windows:

```bash
choco install fd ripgrep -y
```

For macOS:

```bash
brew install fd ripgrep -y
```

For Linux:

```bash
sudo apt install fd-find
sudo apt-get install ripgrep
```

## Spell Checker for Neovim

```lua
{ 'neoclide/coc.nvim', branch='release' }
```

Then install the spell-checker using this command in your Neovim command mode:

```bash
CocInstall coc-spell-checker coc-actions coc-json coc-tsserver
```

Full Docs: [https://github.com/iamcco/coc-spell-checker](https://github.com/iamcco/coc-spell-checker)

To repair:

```bash
call coc#util#install()
```

# Mason

The LSP and linters installed using Mason in Neovim itself. You can type

```bash
Mason
```

To open Mason, then use `/` to search for the following packages

- `css-lsp`
- `prettier`
- `tailwindcss-language-server`
- `typescript-language-server`
